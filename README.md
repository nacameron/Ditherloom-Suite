# Ditherloom Suite

Ditherloom Suite is a Windows desktop app for preparing images, memos, stickers, and firmware workflows for compatible 400 x 300 four-colour e-ink frames.

## Install

Create a folder somewhere on your hard drive that you will remember, extract the release zip into that folder, then run `DitherloomSuite.exe`.

## Start

```powershell
.\DitherloomSuite.exe
```

## Basic Use

1. Choose an image.
2. Adjust fit, background, rotation, zoom, brightness, contrast, saturation, gamma, and sharpness.
3. Use the live preview to check how the image will appear on the e-ink screen.
4. Select a slot.
5. Send the image.

## Gallery

- Click `Sync Previews` to refresh the gallery thumbnails.
- Single click a thumbnail to load that image into the editor.
- Double click a thumbnail to load it into the editor and show it on the frame.
- Use `Delete Slot` to remove the selected image.
- Use `Delete All` only when you want to clear every image from the selected frame.

## Secure Frame Libraries

Each exact frame has its own protected local library for source links, transforms, memo text, templates, thumbnails, Home Assistant ownership, nickname, groups, and presentation state. Modified frames open the same library over Custom USB, Bluetooth, or Wi-Fi; changing connection method never changes ownership.

Routine `Read` observes the physical frame without discarding trusted library details. Use `Sync Previews` when you deliberately want to reconcile the frame and its app library slot by slot. Library backups are encrypted for the Windows account that created them and should still be stored somewhere private.

## Privacy

Your files, your PC. Ditherloom Suite keeps your images, source paths, protected frame libraries, Wi-Fi details, encrypted backups, and frame data on your own computer and frame. They are not sent to us or to any outside service.

Home Assistant setup stores only the frame/Gateway connection settings needed for that integration, such as the Home Assistant address, Library ID, reserved slot, topic base, and scheduled wake timing. It does not send your personal source photos, app library, relink cache, thumbnails, or frame backups to Home Assistant. Home Assistant-rendered content is generated and served by the Home Assistant system you choose. If your Home Assistant runs locally, that content stays within your local Home Assistant network path. If you use Home Assistant Cloud, a reverse proxy, or another remote access service, that is part of your Home Assistant/network privacy setup rather than this app uploading your files.

If a future feature ever needs to send data outside your environment, it will be a clear, explicit opt-in choice.

## Calibration

Use `Calibrate` to send the calibration target to an empty slot, then provide a clear photo of the frame. The app will estimate the visible screen area and let you fine tune each edge in 1-pixel steps.

## License

This software is provided for personal, noncommercial use only. You may use the client as supplied, but you may not modify, reverse engineer, decompile, redistribute modified copies, sell, rent, sublicense, or use it commercially without separate written permission.

Ditherloom Suite name, logo, branding, and original artwork are (c) 2026 Neil Cameron.
Ditherloom Suite templates bundled with the app are (c) 2026 Neil Cameron.
