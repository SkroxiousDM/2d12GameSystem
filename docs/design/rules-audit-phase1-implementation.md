# Phase 1 rulings: implementation tracker

Controlling decisions: `docs/design/rules-audit-phase1-decisions.md`.

## Scope

Implement the recorded rulings in current core and Testament of Dust Typst sources, the character sheet, Quick Reference, changelog and draft-status notes. Preserve historical playtest rolls and outcomes. PDF rebuilding, numerical recalibration and test reruns are deferred. This tracker records implementation, not additional designer rulings.

## Batch 1

- Core Effects: Create baseline changed from 3 to 2 Power per Truth rank; rank 2 costs 4. Baseline applies in and out of conflict. Each explicit ability/item discount is -1, minimum 1.
- Generic Playbooks and core Introduction: a Major ability taken as a creation extra costs 2 Refresh total. Normal Major cost and the existing veteran surcharge remain distinct.
- No other Phase 1 implementation is completed by this batch.

## Remaining implementation by decision

1. Disposition: retain roll / 3, round down, then helpers and flats at full value. Reconcile summaries and changelog. P, Grit and Encounter Budget recalibration remain Phase 4.
2. Flat modifiers: no stacking cap; floor at 1 before Superiority. Only Superiority can reach 0, resolving the conflict at no cost, with the 10.12 none-or-trivial cross-reference. Update conflict procedure and Quick Reference together.
3. Shared Disposition: reconcile current rule text and adversary abilities; remove per-member loss and spill-over from current rules. Interpose redirects a specific harm, not shared Disposition loss. Keep historical test results intact.
4. Killing strikes: implement target-Rank difficulties 15/18/21/24, separate beheading status-tier difficulties 15/18/21/24/27/30, significant complication with 2-Woe buy-off, fire at broken tier 5, and staking as a special case. Tier-6 targets follow Scar and Dying with no killing-strike roll.
5. Create: update conflict Maneuver wording, Floor Collapse to 4 Power, and explicit item/ability discounts. Batch 1 establishes the core baseline only; it does not finish the consistency sweep.
6. Recovery: replace legacy short-rest and 1 + Edge wording with pool recovery. Classify Bled as an injury and label its modifier exceptions. Bled death alignment needs the flagged rewrite below.
7. Major creation extras: core pricing clarified in Batch 1. Reconcile setting explanations, sheet instructions and other summaries. R2 is superseded; do not rewrite historical test arithmetic.
8. Legacy: remove the active subsystem, death triggers, includes and instructions; reconcile pillars, sheet, Quick Reference, draft notes and changelog. Do not remove ordinary uses of the word legacy unrelated to that currency.
9. Setting neutrality: move vampire-specific Adversaries content into the setting book, make D.6a generic, state that Frontier reskins replace the six generic playbooks, prohibit Walks Between Worlds in the Frontier, and flag replacement Descriptor names.

## Unresolved details and playtest flags

- Superiority: PC/opposition symmetry and opposition eligibility for the automatic win remain playtest questions. Do not silently resolve them.
- Rider: retain the +7 Chase stack and flag it for playtesting.
- Area Rule: deferred to playtesting; do not choose a new scaling model.
- Interpose: scope the redirected specific harm explicitly and check the one-reduction cap; do not treat ordinary shared Disposition loss as an individual hit.
- Recovery abilities: whether Field Medic and Field Surgeon lift the 1-tier treatment limit is deferred to playtesting; do not grant that exception in this pass.
- Bled: exact replacement of Bled-5/Bled-6 death text needs a deliberate rewrite to align with core. Do not treat either the old override or an invented replacement as a new confirmed ruling.
- Truth layers: Echo, capstones, Rewrite History, Ancestor's Notes and the 3-5 Campaign Truth limit remain deferred to playtesting.
- Descriptor collisions: setting Reckless and Cunning must be renamed; replacement names have not been selected.
- Numerical balance: P, Grit, Encounter Budget and all fight reruns remain deferred until the audit is complete.

## Verification still required

- Search all active source files for superseded rules and unconverted references.
- Reconcile character-sheet instructions, Quick Reference, changelog and draft status against actual completed edits.
- Validate diffs to preserve unrelated text. Compile and rebuild PDFs only in the later rebuild pass; no build verification is claimed here.
