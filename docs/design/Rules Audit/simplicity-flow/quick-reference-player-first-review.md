# Quick Reference — player-first review

## Scope and provenance

Approved single-file editorial/consistency rewrite of docs/2d12System/chapter-7-appendix-a-quick-reference.typ. Player-first procedures; short separate GM strip; legibility, not a fixed page count, determines layout. No new balance changes. Core and adversary rules, PDFs and unrelated workspace files are unchanged by this pass.

Reviewed baseline commit: 50d261cd201f1278b7c5b567371f7884e03e543d.
Commit preparation head: 3b7eb54c59f8138570ee1c1e1bd8c42bf7b4fab8.
The intervening head change is Obsidian workspace state; the appendix was last changed at the reviewed baseline.
Baseline blob: 343f041c9df8a6e01d8a6ad12e74b705331a19a4.
Approved replacement blob: 3a40b622c9716ffafaf10c2361e00f0d2a079784.

## Editorial decisions

- Reorder into making rolls, resources/consequences, conflict setup and resolution, Power spending, loss/outcomes, then GM reminders.
- Replace dense summaries with lookup tables and numbered procedures.
- Restore existing core reminders: both-zero setup is mutual defeat; Effort Level limits and purchase timing; Risk die is separate and never kept or added to the total/cap.
- Preserve the approved Gain Position, injury-trade, independent-action, Self-Repair, phase/arrival, Last Stand and deferred-application limits.
- Replace the extended Furcifer block with a pointer. Remove isolated Floor Collapse and Quick Recovery reminders from the universal reference; their full rules remain unchanged.
- Scope appendix-only body/table settings locally; use full-width interaction and spending tables. No forced page or column breaks. The draft is not represented as a word-count reduction.

## Exact diff archive

quick-reference-player-first.patch.py reproduces the exact reviewed three-context unified diff from the immutable before/after Git blobs above. It verifies both blob IDs and the generated diff's SHA-256. This avoids duplicating the full chapter in a stored textual patch. The original plain proposed diff remains reproducible byte-for-byte.

Run from a checkout containing both blobs:

    python "docs/design/Rules Audit/simplicity-flow/quick-reference-player-first.patch.py" --repo . --output quick-reference-player-first.patch

The generator only reads Git objects and writes the requested patch file. It does not apply changes, fetch, commit or push.

## Verification limits

The replacement was reproduced exactly and its blob matches the approved draft. The proposed diff passed git apply --check, byte-for-byte application, reverse checking and restoration of the original bytes. The archival generator was tested against a temporary repository containing the exact blobs and produced the identical diff.

These are not Typst compiler or layout checks. No Typst compiler is available in this environment. No successful compilation, page count, rendered fit, layout inspection or new balance simulation is claimed. Existing PLAYTEST rules remain in force.
