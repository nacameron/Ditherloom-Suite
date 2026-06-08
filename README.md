# Ditherloom Suite

Windows client for compatible PicPak-style e-ink photo frames.

## Download

Public downloads are temporarily paused while the firmware installer is being re-verified.

When downloads reopen, first-time users should download the latest release package, create a folder on their hard drive that they will remember, extract the zip into that folder, then run `DitherloomSuite.exe`.

For updates, use `About > Check for updates` inside the app. The updater installs into the same folder so saved gallery, backups, Wi-Fi details, and license acceptance are preserved. If updating manually, extract the new release over the existing app folder instead of making a new folder.

See `WHATS_NEW.md` before updating if you want the short list of changes since the previous public build.

## What It Does

- Connects to stock frames over Bluetooth.
- Supports stock USB workflows for backup, firmware install, and restore.
- Supports modified firmware over USB, Bluetooth, and Wi-Fi.
- Lets you process, crop, rotate, zoom, calibrate, and preview images before sending.
- Supports text, emoji/sticker overlays, gallery thumbnails, library backup/restore, and per-device libraries.
- Can back up a stock frame before installing the modified firmware.
- Can restore a frame back to stock firmware from the backup made from that same frame.

## Stock Firmware

Stock frames can be used without changing firmware. Bluetooth is the preferred stock connection for normal image work.

Stock USB is mainly for backup, trying the modified firmware, restoring stock firmware, and manual recovery work. For stock USB gallery or backup access, long-press the frame button to wake the connection mode, then scan/connect USB in the app. The stock USB window is short-lived and can be slow.

## Modified Firmware

The modified firmware enables faster custom USB, Bluetooth, Wi-Fi workflows, local slot display commands, motion controls, and library manifest support.

Before installing modified firmware, the app recommends a full backup of the individual frame. You choose where to save it, and the app names the backup folder with the frame serial number when it can read it. Keep that backup somewhere safe. It is the route back to stock for that specific frame.

If no verified backup is recorded, the firmware installer offers four choices: make the backup, use an existing backup, deliberately skip backup and flash anyway, or cancel. Skipping backup means restore-to-stock may not be available later.

After the backup is complete, use the safer firmware install route: unplug USB, hold the frame button, reconnect USB while still holding the button, release once Windows sees the USB port, then scan/select that port in the app and start the firmware install.

## Updates

Use `About > Check for updates` inside the app to check the public GitHub releases page. If a newer release is available, the app can install it into the current app folder and reopen itself.

## License

Ditherloom Suite is licensed under the PolyForm Noncommercial License 1.0.0.

Required Notice: Copyright 2026 Neil Cameron.

See `LICENSE` for the full license terms.

The PolyForm licence applies to Ditherloom Suite software and firmware only. Bundled third-party components and OpenMoji artwork remain under their own licence terms.

## Third-Party Components

See `THIRD_PARTY_NOTICES.md` for bundled component and asset notices.
