param(
    [string]$InstallPath = ""
)

$ErrorActionPreference = 'Stop'
$packageUrl = 'https://github.com/nacameron/Ditherloom-Suite/releases/download/v0.2.8/Ditherloom-Suite-v0.2.8.zip'
$expectedHash = '21651854B9B870B69912C1ADB25408F70C9470D6BEBA3ED7D7C45FD1981DC5EC'
$expectedExeHash = '57BE080CBA9FA89FE6AC6EECE4345D9E26E89C75EA67DD39748395C79EB8B016'
$packageName = 'Ditherloom-Suite-v0.2.8.zip'

Add-Type -AssemblyName System.Windows.Forms

function Select-InstallPath {
    if ($InstallPath -and (Test-Path -LiteralPath $InstallPath)) {
        return [System.IO.Path]::GetFullPath($InstallPath)
    }
    $here = [System.IO.Path]::GetFullPath((Get-Location).Path)
    if (Test-Path -LiteralPath (Join-Path $here 'DitherloomSuite.exe')) {
        return $here
    }
    $dialog = New-Object System.Windows.Forms.FolderBrowserDialog
    $dialog.Description = 'Select your Ditherloom Suite app folder'
    $dialog.ShowNewFolderButton = $false
    if ($dialog.ShowDialog() -ne [System.Windows.Forms.DialogResult]::OK) {
        throw 'No app folder selected.'
    }
    return [System.IO.Path]::GetFullPath($dialog.SelectedPath)
}

function Get-InstallAppProcesses([string]$target) {
    $targetFull = [System.IO.Path]::GetFullPath($target).TrimEnd('\') + '\'
    Get-CimInstance Win32_Process |
        Where-Object {
            ($_.Name -ieq 'DitherloomSuite.exe' -or $_.Name -ieq 'PicPakTool.exe') -and
            $_.ExecutablePath -and
            ([System.IO.Path]::GetFullPath($_.ExecutablePath).StartsWith($targetFull, [System.StringComparison]::OrdinalIgnoreCase))
        }
}

function Wait-ForRemainingAppProcesses([string]$target, [int]$timeoutSeconds) {
    $deadline = (Get-Date).AddSeconds($timeoutSeconds)
    while ($true) {
        $running = @(Get-InstallAppProcesses $target)
        if ($running.Count -eq 0) {
            Start-Sleep -Milliseconds 750
            if (@(Get-InstallAppProcesses $target).Count -eq 0) {
                return
            }
        }
        if ((Get-Date) -gt $deadline) {
            foreach ($proc in $running) {
                Write-Host ("Stopping remaining app process " + $proc.ProcessId + " " + $proc.ExecutablePath)
                Stop-Process -Id $proc.ProcessId -Force -ErrorAction SilentlyContinue
            }
            break
        }
        Start-Sleep -Milliseconds 250
    }
    $deadline = (Get-Date).AddSeconds(20)
    while (@(Get-InstallAppProcesses $target).Count -gt 0) {
        if ((Get-Date) -gt $deadline) {
            throw "Could not stop every Ditherloom Suite process running from $target"
        }
        Start-Sleep -Milliseconds 250
    }
}

function Wait-PathUnlocked([string]$path, [int]$timeoutSeconds) {
    if (-not (Test-Path -LiteralPath $path)) {
        return
    }
    $deadline = (Get-Date).AddSeconds($timeoutSeconds)
    while ($true) {
        try {
            $stream = [System.IO.File]::Open($path, [System.IO.FileMode]::Open, [System.IO.FileAccess]::ReadWrite, [System.IO.FileShare]::None)
            $stream.Close()
            return
        } catch {
            if ((Get-Date) -gt $deadline) {
                throw "Timed out waiting for Windows to release $path"
            }
            Start-Sleep -Milliseconds 250
        }
    }
}

function Copy-UpdateWithRetry([string]$sourceRoot, [string]$targetRoot) {
    for ($attempt = 1; $attempt -le 30; $attempt++) {
        try {
            Get-ChildItem -LiteralPath $sourceRoot -Force | ForEach-Object {
                Copy-Item -LiteralPath $_.FullName -Destination $targetRoot -Recurse -Force
            }
            return
        } catch {
            if ($attempt -eq 30) {
                throw
            }
            Write-Host ("Copy attempt " + $attempt + " failed: " + $_.Exception.Message)
            Start-Sleep -Milliseconds (250 + ($attempt * 50))
        }
    }
}

function Wait-UpdatedExeStable([string]$path, [string]$expectedHash, [int]$timeoutSeconds) {
    $deadline = (Get-Date).AddSeconds($timeoutSeconds)
    $lastLength = -1
    $stableCount = 0
    while ($true) {
        if (Test-Path -LiteralPath $path) {
            try {
                $item = Get-Item -LiteralPath $path
                $hash = (Get-FileHash -LiteralPath $path -Algorithm SHA256).Hash.ToUpperInvariant()
                if ($hash -eq $expectedHash) {
                    if ($item.Length -eq $lastLength) {
                        $stableCount += 1
                    } else {
                        $stableCount = 0
                        $lastLength = $item.Length
                    }
                    if ($stableCount -ge 2) {
                        return
                    }
                } else {
                    Write-Host ("Copied exe hash mismatch. Expected " + $expectedHash + " got " + $hash)
                }
            } catch {
                Write-Host ("Waiting for updated exe to settle: " + $_.Exception.Message)
            }
        }
        if ((Get-Date) -gt $deadline) {
            throw "Updated app executable did not verify before restart: $path"
        }
        Start-Sleep -Milliseconds 500
    }
}

function Write-UpdateContinuityMarker([string]$target) {
    $markerDir = Join-Path $target 'app_state'
    New-Item -ItemType Directory -Force -Path $markerDir | Out-Null
    $markerPath = Join-Path $markerDir 'update_continuity.json'
    $payload = [ordered]@{
        appName = 'Ditherloom Suite'
        purpose = 'in-place-update'
        targetVersion = '0.2.8'
        targetBuildId = '20260623.2'
        writtenAt = (Get-Date).ToUniversalTime().ToString('o')
    }
    $payload | ConvertTo-Json -Depth 4 | Set-Content -LiteralPath $markerPath -Encoding UTF8
}

$target = Select-InstallPath
if (-not (Test-Path -LiteralPath (Join-Path $target 'DitherloomSuite.exe'))) {
    throw "That folder does not contain DitherloomSuite.exe: $target"
}

$work = Join-Path $env:TEMP ('ditherloom-manual-update-' + (Get-Date -Format 'yyyyMMdd-HHmmss'))
$zip = Join-Path $work $packageName
$extract = Join-Path $work 'extracted'
New-Item -ItemType Directory -Force -Path $work | Out-Null

Write-Host "Downloading update package..."
Invoke-WebRequest -Uri $packageUrl -OutFile $zip
$actualHash = (Get-FileHash -LiteralPath $zip -Algorithm SHA256).Hash
if ($actualHash -ne $expectedHash) {
    throw "Downloaded package hash did not match. Expected $expectedHash, got $actualHash."
}

Write-Host "Stopping Ditherloom Suite from the selected folder..."
foreach ($proc in @(Get-InstallAppProcesses $target)) {
    Stop-Process -Id $proc.ProcessId -Force -ErrorAction SilentlyContinue
}
Wait-ForRemainingAppProcesses $target 10

Write-Host "Extracting update..."
Expand-Archive -LiteralPath $zip -DestinationPath $extract -Force
if (-not (Test-Path -LiteralPath (Join-Path $extract 'DitherloomSuite.exe'))) {
    throw 'The update package does not contain DitherloomSuite.exe.'
}

Write-Host "Copying update into place..."
$restart = Join-Path $target 'DitherloomSuite.exe'
Write-UpdateContinuityMarker $target
Wait-PathUnlocked $restart 20
Copy-UpdateWithRetry $extract $target
if (-not (Test-Path -LiteralPath $restart)) {
    throw "Updated app executable was not found: $restart"
}
Write-Host "Verifying updated executable..."
Wait-UpdatedExeStable $restart $expectedExeHash 45
Start-Sleep -Seconds 2

Write-Host "Starting Ditherloom Suite..."
Start-Process -FilePath $restart -WorkingDirectory $target
Write-Host "Update complete."