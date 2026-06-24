# Ditherloom Suite v0.2.8

Build `20260624.3`

- Fixes Home Assistant callback discovery to use the integration's existing `/api/ditherloom/discovery` endpoint.
- Adds the required Home Assistant access-token field for authenticated discovery. The token is used for discovery only and is not written to the frame.
- Bundles custom firmware `step6-display-slot-1.115-ha-entry-callback`.
- Keeps the established Gateway-only custom transport locks and render/template locks unchanged.
