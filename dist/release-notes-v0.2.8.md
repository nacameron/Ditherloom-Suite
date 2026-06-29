# Ditherloom Suite v0.2.8 build 20260629.3

This build keeps the app version at 0.2.8 and updates the build ID so existing installs can detect it as an update.

## Fixed

- Home Assistant slot rotation is now firmware-owned and sequential through the configured HA slot list.
- HA rotation uses a persistent HA-only cursor instead of the normal/current gallery slot.
- Reserved HA slots that are not yet populated with a valid packed frame are skipped during HA rotation.
- Normal image rotation, memo slots, random rotation, display rendering, Gateway command format, Wi-Fi settings, USB, and BLE paths are unchanged.
- A project guardrail now blocks future drift back to `current_slot`-based HA rotation.

## Firmware

- Bundled custom firmware: `step6-display-slot-1.121-ha-rotation-sequential`
- Firmware SHA-256: `2BAACFF43283BAB44FEEF0659CCE00D92D468665D5205D874A1E3A7078EB1478`

## Package

- App exe SHA-256: `0A1E99F8FAD58984B9959229D9307CCA8CADF48E773669BAFDBAF672FD9D97BB`
- Release zip SHA-256: `5C9104E5F5BB991C3BA78AB1F27D1DD7F3189BBEC990F04FD7CAEF7DD183A553`
