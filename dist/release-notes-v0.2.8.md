# Ditherloom Suite v0.2.8 build 20260625.1

This build keeps the app version at 0.2.8 and updates the build ID so existing installs can detect it as an update.

## Fixed

- Home Assistant Long-Lived Access Tokens are now remembered by the app for the current frame profile.
- The token is stored in the app's encrypted per-frame private settings file, using the same protected storage path as saved Wi-Fi credentials.
- The token is not written into firmware `HACONFIG`, keeping the frame config compact and avoiding the firmware storage limit.
- Reading Home Assistant settings from the frame can now repopulate the app's local token field for later edits and resaves.

## Firmware

- Bundled custom firmware remains: `step6-display-slot-1.116-ha-haconfig-response`
- Firmware SHA-256: `235733AB8FB70FE12E701D4553C90268082A9D70E6C59A27BE17794E84BC3C60`
