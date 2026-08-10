# Ditherloom Suite

Ditherloom Suite is a privacy-first Windows application for preparing photos, memos, stickers, schedules, and firmware workflows for compatible 400 x 300 four-colour e-ink frames.

## Download

Open the [latest Ditherloom Suite release](https://github.com/nacameron/Ditherloom-Suite/releases/latest).

Current release: **v0.3.1 Neo**, build **`20260810.1`**.

### New users

Download and run **`Ditherloom-Setup-0.3.1-Neo.exe`**.

The installer places the application under Program Files and keeps each user's protected library and settings in their Windows profile. The installer is unsigned because Ditherloom Suite is a free, noncommercial passion project, so Windows may display a reputation warning.

### Existing single-file users

Open the existing Ditherloom Suite client and select **Check for Updates**. The app will download **`Ditherloom-Migration-0.3.1-Neo.zip`**, preserve the existing protected state, install Neo, verify the migration, and leave the old installation untouched if migration cannot be completed safely.

The migration archive includes the verified `DitherloomSuite.exe` bootstrap required by the last public single-file client and hands installation to the protected folder updater automatically.

Do not download or extract the migration ZIP manually. It is labelled **Automatic updater file - existing installations only** on the release page.

## What Neo Adds

- A modern PySide6 interface with Dark, Light, and automatic appearance modes.
- Ditherloom Patchwork for sewing up to six photos, shaped regions, text, and OpenMoji stickers into one editable frame image, with layouts, snapping, layers, relinking, and representative thumbnails.
- Ditherloom-Advanced photo rendering with Normal, Enhanced richness, and Dark recovery modes.
- Panel-safe gradients for supported text, outlines, backgrounds, and Patchwork elements.
- Faster background rendering, thumbnails, frame reads, and progress feedback.
- A larger physical-frame preview with drag, zoom, rotation, flip, effects, text, and stickers.
- Protected per-frame SQLite libraries shared correctly across USB, Bluetooth, and Wi-Fi.
- Expanded memos, templates, open-source fonts, OpenMoji stickers, schedules, and slot controls.
- Frame Groups with separate libraries for each physical frame and matched content delivery by slot.
- Improved stock backup, firmware conversion, restore-to-stock, and Home Assistant setup.
- Automatic custom-firmware update guidance before Patchwork becomes available, while existing Gallery and Memo features remain usable on earlier custom firmware.
- A proper Program Files installation, automatic migration, updates, and clean uninstall.

See [What's New](WHATS_NEW.md) for the full history.

## Privacy

Ditherloom Suite does not hold, upload, or remotely process your photos or files. Sources, editable details, thumbnails, credentials, frame libraries, and backups remain on your computer, your frame, and the local network routes you choose.

Deleting protected local data is permanent. Ditherloom Suite cannot restore information that has been deleted. Stock firmware backups are deliberately preserved so users always retain a route back to the original firmware.

## Licence And Attributions

Ditherloom Suite is supplied for personal, noncommercial use under the included licence. Third-party runtimes, fonts, OpenMoji artwork, tools, and libraries remain under their respective licences. See [LICENSE](LICENSE) and [Third-Party Notices](THIRD_PARTY_NOTICES.md).

## Community

Questions, release discussion, and user help are available in the [Ditherloom Suite Facebook group](https://www.facebook.com/share/1DHwKKqgrN/?mibextid=wwXIfr).
