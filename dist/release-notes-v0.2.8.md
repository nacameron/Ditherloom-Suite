# Ditherloom Suite v0.2.8 build 20260624.4

This build keeps the app version at 0.2.8 and updates the build ID so existing installs can detect it as an update.

## Fixed

- Fixed Home Assistant settings save confirmation for large HACONFIG payloads.
- Preserved the locked Wi-Fi Gateway route by keeping the response on `wifi_sendf`.
- Increased the firmware static Wi-Fi TCP response buffer so full `OK HACONFIG` replies can be returned after `SETHACONFIG`.

## Firmware

- Bundled custom firmware: `step6-display-slot-1.116-ha-haconfig-response`
- Firmware SHA-256: `235733AB8FB70FE12E701D4553C90268082A9D70E6C59A27BE17794E84BC3C60`
