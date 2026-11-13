# Adversaries rules and module wiring — review notes

## Provenance and scope

Original five-file review baseline: e70688f1a10bb8142345cb2ad5611e22ced35f2f.
Integration baseline: 17ad6a1f535d08f8366b41d2bb80b391e106e04d on review/simplicity-flow.
Staging branch: review/adversaries-rules-wiring-20261113.
Approved uploaded patch SHA-256: 5a62fe3b38789f23b0bf0207f9996b06a681d5a7a2bdfe746a935ccdea00f15a.

Apply the approved five-file rules/timing proposal and the separately approved module-wiring correction. Preserve the integration baseline's flat modules, boss-phase headings and unrelated layout edits. Do not change PDFs or the playtest branch.

## Rules included

- Self-Repair Variant C: no Disposition recovery from 0; status repair cannot cancel pending defeat.
- Hold the Line as an alternative to status interception, sharing one use per exchange.
- Fixed available non-Defend Desperate category; no new phase unlock or action.
- One pending Gain Position per side regardless of source.
- Dirty Trick, Covering Move replacing Hostage, Scan, Lockdown and Bolt full procedures.
- Finite shared named reserves: Howl/Hound Pack; Calls the Works/Gate Warden; Veteran/two Hired Guns; Marshal/two House Guard Bands using Raider Band mechanics.
- Closed action-triggered declarations before reactions; no late Covering Move substitution after Scan; same-volley Lockdown/Bolt exception.
- Self-Repair before Bolt; defeat/Last Stand before eligible phase checks; phases before eligible exchange-end arrivals.
- Pre-reveal action-free call windows, delayed-route commitments and post-conflict dispatch handling.
- Last Stand creates no call window or exchange boundary and repeats no arrival check.
- One deferred application per named Special per target per conflict across sources.
- Woe initialization, Feint consistency, card corrections and experiment-only budget guidance; Threat = Grit remains unchanged.

## Typst wiring

Move the unchanged statblock renderer to adversaries-common.typ. Import it explicitly where cards are evaluated. Include Part 2 from the main chapter and Part 3 from Part 2. Do not restore the removed function wrappers or revert the newer phase headings.

## Verification and limitations

The original pinned five-file patch passed baseline blob checks, git-apply checks and byte-for-byte application/reversal checks during preparation. These checks are not Typst compilation or balance validation.

At preparation of these notes, final verification of the staged six-source-file integration and archival patch is still pending. No successful Typst compilation, rendered-layout inspection or new balance simulation is claimed. The separate playtest branch has not been compared. Supporting test notes remain unchanged. Final squash into review/simplicity-flow requires its own confirmation.
