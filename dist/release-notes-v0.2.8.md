# Ditherloom Suite v0.2.8 build 20260623.2

This build keeps the public app version at `0.2.8` and updates the internal build ID to `20260623.2` so existing installs can detect the update without a user-visible version bump.

## Included

- Gateway Library ID isolation now opens the correct per-frame library from the live custom-firmware handshake.
- Grey custom-frame thumbnails now load the frame preview through the Gateway as a visual relink aid instead of staying grey.
- Frame nicknames are restored after the Gateway Library ID/profile is finalized on custom USB, custom BLE, and Wi-Fi.
- Public client package rebuilt from the verified app build.
- Current tested firmware release package remains approved for publication.

## Firmware Baseline

- Firmware version: `step6-display-slot-1.110-usb-brownout-recovery`
- Firmware SHA256: `BCC62C7D087B66BB0EE06361D69FB01456B414D4E96B53846F00F3257A7CE87E`

## Package Hashes

See `Ditherloom-Suite-v0.2.8-SHA256.txt` for the EXE, ZIP, update manifest, and updater hashes.
