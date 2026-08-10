# What's New In 0.3.1

This update is for users of the earlier single-file Ditherloom Suite client.

## v0.3.1 Neo

### 20260810.1 Authoritative Slot Classes And Help

- Kept the frame-reported physical class authoritative after both Read and Sync, so Photo, Memo, and Patchwork slots remain consistent across USB, Bluetooth, and Wi-Fi.
- Preserved matching encrypted editing records and thumbnails without allowing stale or missing local documents to change a frame slot's physical class.
- Updated all 39 How To articles for Patchwork, gradients, neutral photo starts, automatic custom-firmware guidance, and the current Gallery and Sync workflows.
- Alphabetized the How To index and added a release regression that prevents unsorted or stale help content from shipping.

### Ditherloom Patchwork

- Added **Ditherloom Patchwork** for modified-firmware frames, combining up to six photos, shaped photo regions, text blocks, or OpenMoji stickers into one editable frame image.
- Added Freeform composition and visual layout templates with protected outside margins, clear gutters, snapping, layer ordering, aspect-safe photos, shape masks, outlines, panel-safe colours, and gradients.
- Let each photo use its own renderer and Ditherloom-Advanced mode, including Normal, Enhanced richness, and Dark recovery. OpenMoji stickers retain their dedicated colour-preserving route.
- Kept editing responsive by rerendering changed sections in background workers and showing sewing progress while a saved Patchwork is reconstructed.
- Added direct Gateway delivery, physical verification, representative thumbnails, Gallery-to-Patchwork navigation, per-source relinking, and editable reconstruction from the exact frame's protected local library.
- Added a dedicated Patchwork firmware capability. Ditherloom offers the required custom-firmware update automatically and keeps Patchwork unavailable until the connected frame confirms support; Gallery and Memo remain available on earlier custom firmware.
- Kept every linked source and composition local. Ditherloom does not upload or remotely process Patchwork sources, layers, or finished images.

### Gradients And Creative Controls

- Added panel-safe gradients for text fills and outlines across Gallery, Memo, and Patchwork, using the same approved colour recipes as the rest of the app.
- Added gradients to supported backgrounds, including the blank Memo template, without changing the rendering rules of illustrated Memo templates.
- Gradients are prepared for the panel's four physical inks, which combine through controlled recipes and dithering to produce a much broader range of visible shades.

### 20260803.1 Wi-Fi Connection Reliability

- Improved connection reliability for frames that need a little longer to make their Wi-Fi Gateway available.
- Restored optional per-frame static network settings, including IP address, gateway, subnet mask, and DNS server.
- Added manual connection by the frame's current IP address or hostname when automatic LAN discovery cannot find an awake frame.
- Kept Wi-Fi communication on one live Gateway connection, with safer cleanup and reconnect guidance if that connection is interrupted.

### 20260802.3 Visible And Cancellable Preview Recovery

- Missing frame previews now load through the shared Gateway route with anchored in-app progress and whole-operation percentage feedback.
- Preview recovery can be cancelled safely between frame reads, and Disconnect cancels optional preview loading before closing the connection.
- USB, Bluetooth, and Wi-Fi retain the same canonical per-frame library and protected Sync transaction behavior.

### 20260802.1 Sync Completion And Gateway Class Repair

- Sync now completes as soon as its authoritative encrypted-library transaction commits; source thumbnails and missing frame previews continue through the existing bounded background workers.
- USB, Bluetooth, and Wi-Fi use the same Gateway Sync transaction and the same canonical per-frame Library ID.
- Raw Gateway Photo/Memo observations remain available long enough for explicit Sync to repair stale frame classes, while certified Memo template identity in SQLite remains the sole authority for Gallery navigation.
- Disconnect, cancellation, rollback, shutdown, source-linked thumbnails, and missing-source frame-preview fallbacks retain their existing protected routes.

### 20260801.4 Safe Disconnect From An Unfinished Sync

- Disconnect now cancels and rolls back an unfinished encrypted-library Sync, then closes the selected frame connection automatically.
- Local gallery work can no longer hide an active authoritative Sync transaction from the connection screen.
- A Sync startup failure now rolls its encrypted transaction back instead of leaving a staging journal that blocks later commands.

### 20260801.3 Disconnect After Sync Repair

- A completed Sync can no longer leave Disconnect blocked by the local SQLite-to-Gallery refresh that follows it.
- Real frame operations, including an active Gateway Sync, Send, Delete, firmware work and frame-preview downloads, remain protected from interruption.

### 20260801.2 Complete Gateway Library Repair

- Read now shows every Gallery-eligible slot reported by the connected frame, even when an older encrypted library record is incomplete.
- Sync detects and repairs partial canonical libraries instead of treating any non-empty library as complete.
- The same verified Library ID remains authoritative across USB, Bluetooth, and Wi-Fi.

### 20260801.1 Gallery, Memo, And Rendering Repair

- Preserved verified source links and saved transforms when the connected frame reports unchanged physical content, so relinked images rebuild from their original source plus the canonical recipe.
- Kept progressive thumbnail updates visual-only: they can refresh preview pixels without replacing the slot's canonical Photo/Memo type, settings, source identity, or certified Memo template.
- Restored Gallery-to-Memo routing for the expanded certified Memo template collection while retaining ordinary photos as photos.
- Made new and reset ordinary photos start with Ditherloom-Advanced, preset **None**, and smoothing **Off**. Existing saved recipes remain unchanged and named presets remain available.
- Made explicit white, black, yellow, and red background regions use their exact physical single-ink panel codes instead of dithering those background-only pixels.
- Kept Auto, Edge, Extend, Blur, photo pixels, feathered boundaries, Memo rendering, stickers, text, templates, and the accepted Ditherloom-Advanced model on their existing validated paths.

- Rebuilt the Windows client around a modern PySide6 interface with Dark, Light, and automatic appearance modes.
- Added Ditherloom-Advanced as the default photo renderer, with Normal, Enhanced richness, and Dark recovery modes. Atkinson remains available for comparison and as a reliable fallback.
- Moved rendering, thumbnail work, frame reads, preview reconciliation, and device operations away from the interface thread for a smoother editor and clearer progress feedback.
- Added a larger physical-frame preview with direct drag, wheel or on-screen zoom, rotation, horizontal and vertical flip, edge and background treatments, text, and stickers.
- Reworked Gallery and Memo editing around the protected per-frame SQLite library, preserving source links, transforms, templates, editable memo details, and representative thumbnails.
- Kept one library per physical frame across USB, Bluetooth, and Wi-Fi, with Gateway-only modified-firmware commands and clearer connection, battery, nickname, serial, and progress state.
- Added the expanded visual Memo template library, bundled open-source fonts, OpenMoji stickers, scheduling, slot selection, and memo-aware Gallery navigation.
- Added Frame Groups while keeping a separate protected library for every member frame; group delivery mirrors the master's content into the same slots on selected members.
- Improved stock backup, stock-to-modified conversion, restore-to-stock, Home Assistant setup, timed deletion, repeat display, and full-frame rotation controls.
- Changed Windows distribution to a proper folder installation under Program Files, with protected per-user data, automatic migration from the old portable client, and a clean uninstaller.
- Kept photos, editable data, credentials, libraries, and backups local. Ditherloom Suite does not upload or process user files on an external service.

### Which Download To Use

- **New installation:** download and run `Ditherloom-Setup-0.3.1-Neo.exe`.
- **Existing single-file client:** use **Check for Updates** inside Ditherloom Suite. It automatically uses `Ditherloom-Migration-0.3.1-Neo.zip`; users should not extract or run that archive manually.
- The installer is unsigned because Ditherloom Suite is a free, noncommercial passion project. Windows may display a reputation warning. Download only from the official Ditherloom Suite GitHub release page and verify the published SHA-256 when required.

## 20260731.5 Gallery And Library Cleanup

- Fixed Gallery preview requests so a failed background request for another slot cannot be reported against the slot the user selected.
- Kept encrypted rollback snapshots only while a Sync transaction is unresolved, then removed them after a verified commit or successful rollback.
- Removed redundant damaged-database copies after a recovery replacement has been validated, while retaining the active safety snapshot until recovery succeeds.
- Added safe cleanup for older resolved Sync artifacts after the canonical database validates successfully. Physical-frame contents, source files, canonical libraries, and stock firmware backups are not included in this cleanup.

## 20260731.4 Gallery Repair

- Fixed source relinking so stale frame metadata cannot change a canonical Photo into a Memo.
- Restored automatic dithered frame-preview retrieval for photos whose original source and local thumbnail are unavailable, preserving a visual reference for relinking.
- Kept background preview retrieval on the existing Gateway route and encrypted per-frame SQLite library, with no side communication or plaintext user-state files.

## 20260716.1 Fixed Connection Race

- Fixed Connection Race
- Kept the visible app version at `0.3.0`; this build uses build ID `20260716.1`.

## 20260713.1 Secure And Reliable Frame Libraries

- Reworked frame libraries to be more secure, reliable, consistent, and faster during normal gallery use.
- Added a protected library for each exact frame, keeping source links, transforms, memo text, templates, thumbnails, Home Assistant ownership, nickname, and groups together.
- Kept the same modified-frame library available over Custom USB, Bluetooth, and Wi-Fi. Changing connection method no longer changes which library is opened.
- Made routine Read faster by loading the trusted app library while observing the connected frame. `Sync Previews` remains the deliberate slot-by-slot reconciliation step.
- Added safer all-or-nothing library updates, restart recovery, explicit failure handling, and stronger frame-isolation checks.
- Added encrypted library backups and protected restore handling for private sources and editable details.
- Improved gallery reliability so confirmed Sends update the correct slot only after verification, while cancelled or unsent work cannot replace an existing thumbnail.
- Unified stored-source rendering for the editor mockup and gallery, preserving transforms and memo content consistently.
- Kept unavailable originals visible only as clearly marked relink references rather than treating frame images as editable originals.
- Kept Home Assistant-owned slots securely recorded while hiding them from normal gallery and preview work.
- Preserved a separate secure library route for stock-firmware frames.
- Updated the bundled modified firmware to `step6-display-slot-1.135-library-capabilities` so the app verifies complete frame support before opening or changing a modified-frame library.
- Updated the visible app version to `0.3.0`; this build uses build ID `20260714.1`.

## 20260711.1 Interrupted Firmware Update Recovery

- Added automatic complete-image retries at progressively safer USB transfer speeds when a firmware update is interrupted.
- Added an explicit recovery route for frames that cannot return their Ditherloom identity after an incomplete firmware write.
- Preserved the stock/custom firmware safety boundary: recovery requires confirmation that the frame already ran Ditherloom custom firmware.
- Updated the visible app version to `0.2.9`; this build uses build ID `20260711.1`.

## 20260707.2 Home Assistant Rotation Timer Hotfix

- Fixed the modified firmware's Home Assistant slot rotation timer so awake time is counted and the remaining rotation countdown is preserved across sleep.
- Kept the Home Assistant server contact cadence separate from the local HA slot rotation cadence.
- Restored the locked Home Assistant delivery display rule: incoming HA jobs are written silently, then `HACOMPLETE all_jobs_complete` displays only the next valid HA rotation slot once.
- Preserved the existing Gateway-only communication path, single Wi-Fi Gateway listener, Wi-Fi settings, slot layout, image format, app schema, USB path, BLE path, and Home Assistant component contract.
- Kept the visible app version at `0.2.8`; this build uses build ID `20260707.2` so auto-update detects it as newer.

## 20260707.1 Home Assistant Assigned Slots And Firmware Hotfix

- Changed the Home Assistant setup wording to one `Assigned slots` field. Users can enter any valid frame slot numbers or ranges up to the frame's physical slot capacity.
- Kept Home Assistant slot allocation separate from the populated HA rotation display cycle, so empty assigned HA slots do not erase the saved assigned-slot list.
- Updated the bundled modified firmware to `step6-display-slot-1.134-wifi-button-recover`.
- Kept the visible app version at `0.2.8`; this build uses build ID `20260707.1` so auto-update detects it as newer.

## 20260629.1 Home Assistant Setup Hotfix

- Fixed Home Assistant setup so the app keeps the Long-Lived Access Token app-local, strips pasted smart quotes or surrounding text before use, and sends only a clean token to Home Assistant discovery.
- Fixed Home Assistant frame config saves so the frame receives only the compact firmware runtime config, keeping larger app-local setup fields out of the 768-byte `HACONFIG` storage limit.
- Fixed Home Assistant slot rotation saves so the app marks the reserved/extra HA slots as HA-owned through the Gateway before applying HA rotation.
- Changed Home Assistant wake safety and HA rotation timing fields to minutes/hours in the app UI while keeping the compact Gateway/firmware payload in seconds.
- Added guardrails for the Home Assistant token path, compact frame config path, HA slot-class route, and Stock/Modified startup chooser layout so these behaviours cannot drift silently.
- Kept the visible app version at `0.2.8`; this build uses build ID `20260629.1` so auto-update detects it as newer.

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
- Reworked the app library for better stability and consistency, with frame-reference previews and manual source selection when an original image needs to be relinked.
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
