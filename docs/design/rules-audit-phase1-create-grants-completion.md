# Phase 1: Create grants and discount playtest record

Date: 2026-10-31.
Branch: `boss-phases-fixed-thresholds`.

This document supplements `rules-audit-phase1-decisions.md`, `rules-audit-phase1-implementation.md` and the root `CHANGELOG.md`. It records designer-approved scoped source changes and a deferred playtest question, not Phase 1 closure or a built release. Those existing records are not updated in place by this addendum.

## Previous source completion

Commit `78439a6c31b2f5456fb4af5af4d236452b0d7473`:

- Lost Knowledge in `docs/2d12System/chapter-6.5-knowledge-focuses.typ` explicitly creates a rank-1 scene Truth for 0 Power, once per session. Its examples are preserved.
- Occultist Ritual in `docs/TestamentOfDust/tod-playbooks-occultist.typ` says the progress clock is used instead of a single roll. Prerequisites, clock sizes, Truth layers and examples are unchanged.
- The complete commit diff was inspected: two lines replaced across two files, with no unrelated changes. This is diff verification, not build or playtest validation.

## Designer-selected direct grants

The accompanying source changes implement these approved rulings:

- Holy Ground in `tod-focuses-occult.typ` grants its once-per-session scene Truth without spending Power. Its entry restriction and increased vampire Woe costs remain unchanged.
- History Repeats in `tod-focuses-household.typ` directly establishes its once-per-session Site Truth from history without spending Power or completing a progress clock. Its examples remain unchanged. This exception belongs to this ability, not to all Site Truths or to Region/Campaign Truth grants.
- Light a Fire in `tod-focuses-village.typ` grants the full False Dawn effect under Frontier Rules §§7.1 and 13. Once-per-session use, one-exchange duration, no Power expenditure and flares/fire/faith are preserved. It does not become actual Dawn or advance the Dawn clock.

## Deferred discount-interaction playtest flag

Playtest whether multiple eligible explicit −1 Create discounts may combine on a single Effect, subject to the minimum cost of 1 Power, and whether such discounts may modify named fixed-price effects. No new interaction ruling is selected here. Preserve explicit free grants and named prices pending review.

The selected ordinary Create baseline remains 2 Power per Truth rank; each explicit discount is −1, minimum 1. Existing one-cost-reduction reminders are not rewritten by this batch. The number of applicable discounts and their interaction with named fixed prices remain deferred rather than settled through editorial cleanup.

## Changelog addendum — Unreleased

- Clarified Lost Knowledge's free rank-1 scene Truth and Occultist Ritual's clock-instead-of-single-roll procedure in `78439a6`.
- Clarified Holy Ground as a no-Power scene-Truth grant and History Repeats as a direct Site-Truth grant without Power or a creation clock.
- Clarified that Light a Fire grants the full named False Dawn effect for its stated exchange.
- Flagged Create discount stacking and interaction with named fixed-price effects for playtesting without choosing a new interaction model.

## Preserved scope and validation limits

- Trapmaker, Garlic and Iron, Feedback, Take the Hand, previously selected fixed-price gear effects, companion fixes and the exact Cyborg Hunter wording are unchanged.
- No higher-rank named-effect pricing or general Region/Campaign Truth exception is selected. Deferred higher-layer questions remain open.
- Main and historical playtest records are unchanged by this batch.
- No Typst compilation, PDF rebuild, layout verification, numerical recalibration or playtest validation is claimed.
- Broader reference and documentation reconciliation remain open. Phase 1 remains open; source completion is not validation or release completion.
