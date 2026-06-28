# Ditherloom Suite v0.2.8 build 20260629.1

This build keeps the app version at 0.2.8 and updates the build ID so existing installs can detect it as an update.

## Fixed

- Home Assistant Long-Lived Access Tokens are remembered by the app only, cleaned before use, and kept out of the frame `HACONFIG` payload.
- Home Assistant settings saved to the frame now use the compact firmware runtime config and stay under the 768-byte frame metadata limit.
- Home Assistant slot rotation now marks reserved and extra HA slots as HA-owned through the Gateway before applying rotation.
- Home Assistant wake safety and HA rotation timing fields now show minutes/hours in the app while preserving the compact Gateway payload format.

## Firmware

- Bundled custom firmware: `step6-display-slot-1.118-ha-rotation`
- Firmware SHA-256: `E49C2096C2C1564199AEC237D098123E0F1790A622683860C657B26B8CD3536F`

## Package

- App exe SHA-256: `629F26CC80929484C2605F5B3834F85F5F94446B51E04121EF70712C68CB8EDD`
- Release zip SHA-256: `872B2FA7AEB63F1E4C00C8C790E97531A902B742A9041FB7C9D0FFCEF39B2A19`
