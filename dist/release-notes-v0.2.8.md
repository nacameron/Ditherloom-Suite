# Ditherloom Suite v0.2.8 build 20260703.2

This build keeps the app version at 0.2.8 and updates the build ID so existing installs can detect it as an update.

## Fixed

- Fixed the custom Wi-Fi Gateway listener startup path used after the frame joins saved Wi-Fi.
- The frame keeps the locked 12KB Wi-Fi Gateway listener stack, but now reserves it statically so the listener does not fail with `server_errno=12` after Wi-Fi association.
- The single Wi-Fi Gateway listener and single-connection rule remain locked.
- Home Assistant delivery, display rendering, packed image format, slot layout, Wi-Fi credentials, USB, and BLE paths are unchanged.
- Project guardrails now block drift back to heap-backed Wi-Fi listener task creation.

## Firmware

- Bundled custom firmware: `step6-display-slot-1.133-wifi-static-listener`
- Firmware SHA-256: `9DB18FC5F5D69189BB4C1DB61124DDB967FEB1639F72E87F55022C81DAA1CCCF`

## Package

- App exe SHA-256: `F2C8C1094E5A6F2B3C34062670B2D8220A76907E49A622BD821D295D2D3C4DC4`
- Release zip SHA-256: `8495A677CCFEA2A7E0E99DE62B7B9F5CACDB8C95351C74B6214B950CBCB683B2`
