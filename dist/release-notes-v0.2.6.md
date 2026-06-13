# What's New In 0.2.6

This update is for users coming from the last public build, 0.2.3.

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
- Added frame-side timed memo expiry. A temporary memo can now be shown for a selected number of minutes, then the frame deletes it, chooses another image, and returns to sleep without needing the app to stay connected.
- Added frame-side timed photo expiry for modified firmware. A gallery photo can now be displayed for a selected number of minutes, then removed by the frame with a replacement image selected automatically.
- Added a daily low-power battery maintenance wake. The frame can briefly wake, check battery level, show the Charge Me screen if needed, then go back to sleep.
- Added the new Charge Me screen and bundled a documentation snapshot of it.
- Improved custom battery reporting. Modified firmware now reports battery percentage and voltage from the frame rather than relying on old app-side guesses.
- Kept the protected button flow: single click arms motion, left tilt shows previous, right tilt shows next, shake shows random, long press wakes Bluetooth, and double click wakes Wi-Fi when credentials are stored.
- Improved Wi-Fi wake handling. Wi-Fi can be woken for a timed window rather than left running.
- Added support for displaying a setup message if Wi-Fi is requested on the frame before credentials have been stored.
- Added modified-firmware manifest handling so USB, Bluetooth, and Wi-Fi routes can agree on the same slot library.

## App

- Updated the app to recognise the current bundled firmware version: `step6-display-slot-1.28-eraseall`.
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

- Gallery thumbnails and the active mockup clear when the frame disconnects.
- The app continues to keep source images and settings per device so later edits avoid double-dithering where the source is available.
- Per-device libraries are keyed to the frame identity so stock and modified connection routes can stay aligned for the same physical frame.
- Deleted slots are removed from the frame and from the app's remembered library/cache.
- Saved Wi-Fi details remain encrypted and tied to the relevant frame profile.

## Notes Before Updating

- If you are using stock firmware, Bluetooth remains the preferred normal connection route. Stock USB is slow and short-lived, so it is mainly for backup, conversion, restore, and manual sync.
- If you use modified firmware, allow the frame to finish any flashing, backup, or restore workflow before disconnecting USB.
- If your modified frame uses Wi-Fi, keep using the same app folder when updating so encrypted Wi-Fi details and library data remain available.
- If you use Frame Groups, wake the target frames with a double click before group sends until scheduled wake/group delivery is expanded further.
