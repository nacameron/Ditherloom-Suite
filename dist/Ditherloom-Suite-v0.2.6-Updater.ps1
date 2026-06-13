param(
    [string]$InstallPath = ""
)

$ErrorActionPreference = 'Stop'
$packageUrl = 'https://github.com/nacameron/Ditherloom-Suite/releases/download/v0.2.6/Ditherloom-Suite-v0.2.6.zip'
$expectedHash = 'F18D789661E97BB1CC86343722E1BADC8862B93A2E0020103179C10D597B3FE1'
$packageName = 'Ditherloom-Suite-v0.2.6.zip'

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
Start-Sleep -Milliseconds 750

Write-Host "Extracting update..."
Expand-Archive -LiteralPath $zip -DestinationPath $extract -Force
if (-not (Test-Path -LiteralPath (Join-Path $extract 'DitherloomSuite.exe'))) {
    throw 'The update package does not contain DitherloomSuite.exe.'
}

Write-Host "Copying update into place..."
Copy-Item -Path (Join-Path $extract '*') -Destination $target -Recurse -Force

Write-Host "Starting Ditherloom Suite..."
Start-Process -FilePath (Join-Path $target 'DitherloomSuite.exe') -WorkingDirectory $target
Write-Host "Update complete."