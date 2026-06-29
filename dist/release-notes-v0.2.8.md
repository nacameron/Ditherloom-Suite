# Ditherloom Suite v0.2.8 build 20260629.2

This build keeps the app version at 0.2.8 and updates the build ID so existing installs can detect it as an update.

## Fixed

- Home Assistant setup now preserves the app-side Long-Lived Access Token path while keeping the token out of frame firmware metadata.
- Home Assistant reserved and extra slots are saved and shown consistently, with HA rotation state preserved through the Gateway.
- HA-owned slots can be pre-reserved before the first HA upload, so empty HA slots do not block rotation setup.
- The app and firmware release records are aligned to the tested `step6-display-slot-1.120-ha-gateway-restore` frame firmware line.
- Public packaging now rejects private Home Assistant token artifacts, encrypted private-cache files, and `.ppenc` files before release packaging.

## Firmware

- Bundled custom firmware: `step6-display-slot-1.120-ha-gateway-restore`
- Firmware SHA-256: `9C32F15D28392A047A734248406A03FE862733A359B968AC7FC01F2C6C39D0A4`

## Package

- App exe SHA-256: `D231BDF3B26B60D8CF805A7011CFFF2445E9B9B2D21E32E0F1CBB1B2AED73BEA`
- Release zip SHA-256: `940F89F041AC90986AD820E84FDF7761D814CDA6AA37DE1512BFD6D15794BD12`
