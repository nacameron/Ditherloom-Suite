# What's New In 0.2.8

This hotfix is for users on the earlier 0.2.8 public build.

## 20260624.1 Home Assistant Frame Handshake

- Changed Home Assistant scheduled wake to the frame-initiated handshake model. The frame wakes, opens the Wi-Fi Gateway, contacts Home Assistant with `frame_awake`, receives Gateway jobs, then sleeps after completion/no-jobs or the safety cap.
- Removed the `Max jobs per wake` setting. Home Assistant now decides when work is finished and the firmware sleeps from the completion/no-jobs handshake.
- Added Home Assistant schedule status to the app so Save/Read can show the frame's real `SLEEPINFO` timer state instead of only showing saved setup fields.
- Added Home Assistant How To and Privacy wording. The app stores setup/routing fields only; weather, cards, entities, and generated content remain controlled by the user's Home Assistant system.
- Kept the visible app version at `0.2.8`; this build uses build ID `20260624.1` so auto-update detects it as newer.
- Updated the bundled modified firmware to `step6-display-slot-1.114-ha-frame-initiated`.

## 20260623.2 Gateway Library Hotfix

- Fixed custom-firmware Library ID isolation so the app opens the connected frame's library from the live Gateway handshake instead of reusing another frame's cached library.
- Fixed grey custom-frame thumbnails so missing local previews are filled with a Gateway-downloaded frame preview for visual relinking.
- Fixed frame nickname display after custom USB, custom BLE, or Wi-Fi Gateway identity is finalized.
- Kept the visible app version at `0.2.8`; this build uses build ID `20260623.2` so auto-update detects it as newer.

## 20260622.2 Auto-Update Hotfix

- Fixed a public auto-update startup failure where Windows could reopen the one-file app before the replaced executable and embedded Python runtime had fully settled.
- Public builds now extract their packaged Python runtime beside the app instead of relying on the Windows temp extraction location.
- The in-app updater and standalone updater now verify the copied app executable hash before restart and wait briefly before launching the replacement.

## 0.2.8 Gateway And Library Lockdown

This update is for users coming from the previous public build, 0.2.7.

- Updated the bundled modified firmware to `step6-display-slot-1.109-ble-b64-static`.
- Kept all modified-firmware app communication on the Gateway layer for Custom USB, custom BLE, and Wi-Fi.
- Hardened custom BLE uploads with the verified Gateway B64 write route and locked regression checks.
- Fixed transformed thumbnail and mockup handling so linked or relinked source images rebuild from source plus frame-stored transform metadata.
- Locked template rendering, template text colours, memo rendering, edge masks, image effects, Wi-Fi Gateway behaviour, and timed-slot behaviour with build-time checks.
- Fixed `Delete after` and `Repeat display` layout and library cleanup. A timed delete now clears stale gallery/library state when the frame reports the slot is gone.
- Fixed the text outline control row so the pixel amount appears after `Outline Px`.
- Preserved encrypted Wi-Fi credentials, frame nickname, calibration metadata, source folders, and Gateway Library ID alignment across custom connection methods.
- Added stronger startup/update cleanup so older app copies do not keep blocking replacement during public updates.

## 0.2.7 Updater Hotfix

- Hardened the in-app updater so it waits for the old app process to exit, waits for Windows to release the executable, retries the copy, verifies the updated executable, then reopens from the installed folder.
- Hardened the standalone updater script in the public release package for older installs whose embedded updater closes but does not apply the replacement.
- Added an explicit `I Decline` path on the licence screen. Declining is recorded separately and closes the app; only pressing `I Agree` records acceptance.
- Kept the same saved app folder, `app_state`, encrypted Wi-Fi details, library records, backups, and licence acceptance during update.

## Current Development Build

- Updated the bundled modified firmware to `step6-display-slot-1.96-sleep-failsafe`.
- Added the Gateway cutover for modified firmware traffic. Custom USB, custom BLE, and Wi-Fi now route app actions through the same Gateway client layer, while stock firmware stays on its stock routes.
- Added persistent Gateway Library ID handling so modified frames are identified by serial plus Library ID instead of connection method.
- Hardened frame privacy isolation. Connecting or syncing a different modified frame blanks the visible gallery and mockup first, then renders only the manifest for the connected Gateway Library ID.
- Changed modified-firmware preview sync to be manifest-first. The app trusts the Gateway manifest, rebuilds local thumbnails from encrypted source/packed data where possible, and uses downloaded frame previews only as a relink aid when the original source is missing.
- Added encrypted source filename/path metadata round-tripping through the app library and frame slot metadata where supported.
- Added visual relinking improvements, including frame-reference previews and folder thumbnail selection for cases where automatic source matching is uncertain.
- Locked confirmed edge-mask and image-effect render output with build-time checks so future builds fail if those renderers drift without explicit signoff.
- Added firmware-owned Ditherloom Suite Powered startup art for first custom-firmware boot after stock-to-custom conversion. It does not use a gallery slot.
- Tightened firmware update prompts so the app does not offer an older bundled firmware over a newer frame version.
- Added minute/hour/day/week timer fields for modified-firmware `Delete after` timers and a separate preserving `Repeat display` schedule that shows a saved photo or memo for a chosen time, rotates away, then shows it again later without deleting the slot.
- Added a firmware sleep failsafe so a modified frame enters deep sleep after USB, Wi-Fi, or BLE app activity ends, even when no rotation or memo timer is active. Added `SLEEPINFO` diagnostics for proving what is blocking sleep.

## 20260613.3 Hotfix

- Added a standalone updater for older installs where the original in-app updater closes but cannot replace the running executable.
- If Check for Updates closes and does not reopen, download `Ditherloom-Suite-v0.2.6-Updater.ps1` from the release page, run it, and select the existing app folder.
- This stays on version 0.2.6 and uses a newer build ID so every earlier 0.2.6 build can still see the hotfix.

## 20260613.2 Hotfix

- The in-app updater now closes any remaining Ditherloom Suite process running from the same install folder before copying the update, then reopens the app.
- This stays on version 0.2.6 and uses the build ID so earlier 0.2.6 builds still see the hotfix.

## Self-Update Hotfix

- Fixed the in-place updater so downloaded releases are applied to the existing app folder and the app reopens after the update.
- Added updater logging and stronger validation so update failures leave useful recovery information instead of silently closing.
- Bumped the public version to 0.2.6 so users already on 0.2.5 are offered this hotfix.

## Emergency Restore Hotfix

- Hardened Restore Stock Firmware for dead-frame recovery. Stock backups are now written back in smaller verified recovery blocks instead of one long flash write.
- Added clearer restore progress text and recovery instructions so users can see which block is being written or verified.
- Added hotfix-aware update checking. Future small fixes can be detected by build ID even when the public version number does not change.
- Fixed source relinking for restored stock backups where cached gallery names differ from the original filenames.
- Cleared the device information panel on disconnect so the app does not keep showing details from a frame that is no longer connected.
- Fixed the update-available window so firmware change notes and What's New each have their own scrollable area.

## Branding And First Run

- The app is now branded as Ditherloom Suite © 2026 Neil Cameron.
- Added the new Ditherloom Suite logo, icon, and page banners.
- Added a first-run licence screen. The app waits for licence acceptance before showing the main workflow.
- Added a startup firmware choice so users choose Stock or Modified before the app reveals only the relevant connection and workflow options.
- Added cleaner page-based navigation with Back controls, so Gallery, Memo, Frame Groups, and Firmware each show only the controls needed for that task.

## Modified Firmware

- Added safer deep-sleep behaviour so modified frames can return to low-power sleep after app work, Wi-Fi windows, button actions, and internal timed actions.
- Added frame-side timed memo expiry. A temporary memo can now be deleted after a selected minute/hour/day/week duration; the frame then chooses another image and returns to sleep without needing the app to stay connected.
- Added frame-side timed photo expiry for modified firmware. A gallery photo can now be deleted after a selected minute/hour/day/week duration, then removed by the frame with a replacement image selected automatically.
- Added a separate modified-firmware repeat-display schedule for photos and memos. Scheduled content is preserved, not self-destructed: the frame shows it for the chosen duration, rotates to something else, and parks it until the next scheduled appearance.
- Added a daily low-power battery maintenance wake. The frame can briefly wake, check battery level, show the Charge Me screen if needed, then go back to sleep.
- Added the new Charge Me screen and bundled a documentation snapshot of it.
- Improved custom battery reporting. Modified firmware now reports battery percentage and voltage from the frame rather than relying on old app-side guesses.
- Kept the protected button flow: single click arms motion, left tilt shows previous, right tilt shows next, shake shows random, long press wakes Bluetooth, and double click wakes Wi-Fi when credentials are stored. After Wi-Fi successfully joins and opens the Gateway, the button light stays solid for about five seconds.
- Improved Wi-Fi wake handling. Wi-Fi can be woken for a timed window rather than left running.
- Added an explicit `Delete Wi-Fi` control for modified frames. Firmware updates, normal connect/read flows, and image delete/erase actions must preserve stored Wi-Fi credentials unless the user chooses Delete Wi-Fi.
- Added support for displaying a setup message if Wi-Fi is requested on the frame before credentials have been stored.
- Added modified-firmware manifest handling so USB, Bluetooth, and Wi-Fi routes can agree on the same slot library. Current development builds now route those custom transports through the Gateway layer.

## App

- Updated the app to recognise the current bundled firmware version: `step6-display-slot-1.31-startup-art`.
- Added What's New under the About menu so the bundled release notes can be read inside the app.
- Made the What's New and update release-notes windows scrollable so longer notes are not clipped.
- Added Folder Watch for automatic uploads while the app is open. It asks for permission during setup, prompts before starting on later app entry, and can target either the current Gallery frame or a modified-firmware Wi-Fi Frame Group.
- Added clearer help text for Stock vs Modified workflows, firmware conversion, restoring stock firmware, timed connections, Wi-Fi troubleshooting, motion control, memos, and battery/deep-sleep behaviour.
- Added Frame Groups help and controls for Wi-Fi-only group sends to modified-firmware frames.
- Added frame nicknames and group membership controls for modified Wi-Fi frame groups.
- Added a dedicated Memo page with a blank frame canvas, full-screen memo text, stickers above the text layer, and the same send/output controls as image work.
- Added a bundled memo template picker with 78 named four-colour e-ink templates. Templates sit below text and stickers, keep their panel-safe colours, and use a template-aware render path to avoid crushing warm colours.
- Improved template rendering so native panel colours stay solid and warm/intermediate template colours use ordered handling instead of being crushed out.
- Added up to six sticker layers per composition. Stickers can be selected, moved, resized, rotated, changed, or removed.
- Added a Clear All option in the sticker picker so users can remove every sticker from a composition without the picker re-adding one on apply.
- Added OpenMoji-based sticker browsing with category filtering, cached previews, visible graphic selection, and attribution in Third Party Components.
- Added selected-slot delete mode for deleting multiple gallery items at once.
- Added a soft black frame colour option alongside the existing frame colours for the mockup and gallery thumbnails.
- Added a virtual zoom wheel beside the preview instructions, while keeping mouse-wheel zoom.
- Added pictograph-led help for converting a stock frame to modified firmware and for using the custom motion controls.
- Added live custom battery display support across modified USB, Bluetooth, and Wi-Fi routes where the frame exposes it.
- Improved update messaging so users are told when an app update also includes firmware changes.
- Preserved in-place updates so saved galleries, backups, Wi-Fi details, and licence acceptance stay in the existing app folder.
- Added update-package compatibility for older public builds that still look for the original executable name during in-place update.
- Improved app help with a How To section covering connecting, image processing, gallery work, memos, stickers, firmware conversion/revert, motion, backups, timed photos, and Wi-Fi troubleshooting.
- Improved the third-party components window so bundled components and artwork attribution are visible from the About menu.

## Firmware Conversion And Recovery

- The safer conversion route is now documented in the app: make or register a full backup first, then use the bootloader connection route for flashing.
- The Firmware page now includes a compact visual conversion strip below the conversion instructions, and Help, How To includes the full pictograph sequence.
- Stock users keep Gallery and Firmware workflows only. Modified users also get Memo and Frame Group workflows.
- Stock USB no longer auto-syncs the library on connect, keeping the short stock USB window available for backup, serial read, conversion, or restore work.
- Full stock backups are tied to the frame they came from. Users should keep the backup and serial number together.
- Restore-to-stock now accepts older backup folders, `summary.json`, or the full flash `.bin` from the backup.
- Restore-to-stock now uses smaller verified flash blocks with retry instructions instead of one long write, so users with an existing backup folder can revive a dead frame through bootloader mode.
- Restore-to-stock guidance is clearer: use only the full backup from that same frame, put a dead frame into bootloader mode first, and keep the frame plugged in until the app says restore is complete.
- Added clearer prompts for making a full stock backup, using an existing backup, or deliberately skipping backup before flashing modified firmware.

## Privacy And Library Handling

- Gallery thumbnails and the active mockup clear when the frame disconnects, and modified-firmware connect/sync clears the old view until the connected Gateway Library ID has been read.
- The app continues to keep source images and settings per frame library so later edits avoid double-dithering where the source is available.
- Per-device libraries are keyed to frame identity. Modified firmware uses serial plus Gateway Library ID so stock and modified connection routes can stay aligned for the same physical frame without showing one frame's gallery on another.
- Deleted slots are removed from the frame and from the app's remembered library/cache.
- Saved Wi-Fi details remain encrypted and tied to the relevant frame profile.

## Notes Before Updating

- If you are using stock firmware, Bluetooth remains the preferred normal connection route. Stock USB is slow and short-lived, so it is mainly for backup, conversion, restore, and manual sync.
- If you use modified firmware, allow the frame to finish any flashing, backup, or restore workflow before disconnecting USB.
- If your modified frame uses Wi-Fi, keep using the same app folder when updating so encrypted Wi-Fi details and library data remain available.
- If you use Frame Groups, wake the target frames with a double click before group sends until scheduled wake/group delivery is expanded further.

