# Phase 1: Frontier option fixes completion record

Date: 2026-10-31.
Branch: `boss-phases-fixed-thresholds`.

This document supplements `rules-audit-phase1-implementation.md` and the root `CHANGELOG.md`. It records eight designer-approved source edits, not Phase 1 closure or a built release. The existing implementation tracker and root changelog are not modified by this addendum.

## Source implementation tracker

### Batch 1 — c0d0a5aae1e36a09e6092b8feb106feadf8f0d97

Message: Clarify Silver Tongue and Holy Symbol; rewrite companion and kin benefits

- `docs/TestamentOfDust/tod-playbooks-broker.typ`: Silver Tongue reduces the Power cost of creating a social story tag with Persuade or Deceive by 1, to a minimum of 1. It is a discount, not a flat 1-Power price for every rank.
- `docs/TestamentOfDust/tod-focuses-occult.typ`: Holy Symbol creates Warded as a rank-1 scene Truth for 1 Power. It protects the user and allies close enough to shelter behind the displayed cross, only against vampires who believe the old stories. It ends with the scene or when the cross stops being displayed. The existing +1 Pneuma Edge against fear for the user and allies who can see it is preserved.
- `docs/TestamentOfDust/tod-focuses-frontier.typ`: Bond of Steel is replaced entirely by once-per-scene rescue and extraction of the user or one ally in the current scene. The horse must physically reach and carry the character to a nearby safe position. Taken Out characters may be rescued, but the effect does not heal statuses, restore Disposition or return them to participation. It grants no Attack, additional scripted action or extra volley. The former independent action, +1 Attack, separate-status clause and minion immunity are removed.
- `docs/TestamentOfDust/tod-focuses-frontier.typ`: Shared Spirit adds +1 starting shared Disposition per participating kin, PC or NPC. A kin joining after setup adds 1 to current and starting shared Disposition under the reinforcement model, increasing the recovery cap without changing boss-phase references or reversing activated phases. Departure or being Taken Out does not automatically subtract Disposition.

### Batch 2 — 100c2dd3f90b2f2910de6f839f6b11193f347f1a

Message: Define smoke and doorway Truths; align Occultist backlash and Cyborg wording

- `docs/TestamentOfDust/tod-playbooks-stalker.typ`: Smoke pellets create Thick Mist as a rank-1 scene Truth for 1 Power, covering one small area established when used. It ends with the scene or when the smoke is dispersed. Quantity, load and +1 Feint are unchanged.
- `docs/TestamentOfDust/tod-playbooks-warden.typ`: Garlic, crosses, and lamp oil create Warded as a rank-1 scene Truth for 1 Power, affecting one prepared doorway. It ends with the scene or when the warding materials are disturbed or removed. Load is unchanged.
- `docs/TestamentOfDust/tod-playbooks-occultist.typ`: The Domain summary now includes doubles on failure or Success at a Cost as backlash triggers, following Adept's Domain rules. No Occultist-specific exception is introduced.
- `docs/TestamentOfDust/tod-playbooks-cyborg-hunter.typ`: The selected phrase is exactly “old-world-works that disrupts machines”. This preserves the designer's requested wording, not a claim that subject-verb agreement was corrected.

## Changelog addendum — Unreleased

### Changed and clarified — Frontier options (2026-10-31)

- Rewrote Bond of Steel as once-per-scene rescue and extraction of the rider or one ally, replacing independent companion combat benefits.
- Clarified Shared Spirit's setup and later-arrival contributions using the reinforcement model.
- Clarified Silver Tongue as a 1-Power discount, minimum 1.
- Defined rank, scope and duration for the named 1-Power Thick Mist and Warded effects from smoke pellets, doorway warding gear and Holy Symbol.
- Aligned Occultist's backlash summary with Adept and applied the selected Cyborg Hunter phrase.
- Implemented in `c0d0a5a` and `100c2dd`. Both commit diffs were inspected: eight lines replaced across seven files, with no unrelated changes.

## Preserved procedures and remaining scope

- Trapmaker and Garlic and Iron are unchanged bespoke procedures. Their free/prepared Truth grants are not generalized into Create discounts.
- The existing Feedback and Take the Hand fixes are preserved; their separate completion record is `rules-audit-phase1-remote-harm-completion.md`.
- The wider Create reconciliation remains open for other fixed/free effects, discount interactions and relevant Focus entries. Deferred Region/Campaign Truth questions are not resolved by these edits.
- These eight edits are complete in source. Broader active-source, item/Special/example, summary and navigation checks remain open; Phase 1 is not closed.
- No Typst compilation, PDF rebuild, layout verification, numerical recalibration or playtest validation was performed for these commits or this documentation update.
- Historical playtest records and main are unchanged by these commits.
