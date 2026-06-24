# Ditherloom Suite v0.2.8 build 20260624.1

This build keeps the public app version at `0.2.8` and updates the internal build ID to `20260624.1` so existing installs can detect the update without a user-visible version bump.

## Included

- Home Assistant scheduled wake now uses the frame-initiated handshake model.
- The frame wakes, opens the Wi-Fi Gateway, contacts Home Assistant, receives Gateway jobs, and sleeps after completion/no-jobs or the safety cap.
- The `Max jobs per wake` setting has been removed; Home Assistant now decides when work is finished.
- Home Assistant schedule status is shown from the frame's real `SLEEPINFO` timer state.
- Home Assistant How To and Privacy wording has been updated for the local/network integration model.
- Public client package rebuilt from the verified app build.
- Bundled modified firmware updated from the tested HA handshake firmware.

## Firmware Baseline

- Firmware version: `step6-display-slot-1.114-ha-frame-initiated`
- Firmware SHA256: `85BB753B93D9CDCCDB03F2A79D4197A45A5EC834D1815EA230CD1ABA30F93A67`

## Package Hashes

See `Ditherloom-Suite-v0.2.8-SHA256.txt` for the EXE, ZIP, update manifest, and updater hashes.
