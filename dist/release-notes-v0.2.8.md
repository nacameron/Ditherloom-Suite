# Ditherloom Suite v0.2.8 build 20260629.4

This build keeps the app version at 0.2.8 and updates the build ID so existing installs can detect it as an update.

## Fixed

- Home Assistant slot rotation is now firmware-owned and sequential by physical HA slot number.
- The HA rotation list is sorted internally, so a reserved-first setup such as `445,443,444` rotates as `443 -> 444 -> 445`.
- When Home Assistant refreshes a populated HA slot, the HA rotation cursor resets so the next timed rotation starts from the lowest populated HA slot.
- HA slot uploads now preserve the slot's HA ownership metadata instead of reverting the slot class during image replacement.
- Normal image rotation, memo slots, random rotation, display rendering, Gateway command format, Wi-Fi settings, USB, and BLE paths are unchanged.
- Project guardrails now block drift away from the HA-only cursor, populated-slot check, sorted HA order, and reset-on-HA-upload rule.

## Firmware

- Bundled custom firmware: `step6-display-slot-1.122-ha-rotation-ascending`
- Firmware SHA-256: `72EFE57C077ABED1B259FE45E0220807298F1EA20AE8846419B213EA7B0E35EB`

## Package

- App exe SHA-256: `3A2F555C4575BC6082D06D4FB5C37CF2989D881875128259AE32EC4BCF9A3C73`
- Release zip SHA-256: `83CE28512E176FE47E571AAC85F94479D8739AB983E44F507C77A13845D4C2D4`
