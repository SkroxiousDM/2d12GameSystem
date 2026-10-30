# Phase 1 rulings: implementation tracker

Controlling decisions: `docs/design/rules-audit-phase1-decisions.md`. Area Rule and Interpose draft: `docs/design/area-rule-and-interpose-rewrite.md`.

## Scope

Implement the recorded rulings in current core and Testament of Dust Typst sources, the character sheet, Quick Reference, changelog and draft-status notes. Preserve historical playtest rolls and outcomes. PDF rebuilding, numerical recalibration and test reruns are deferred. This tracker records implementation, not additional designer rulings.

## Batch 1

- Core Effects: Create baseline changed from 3 to 2 Power per Truth rank; rank 2 costs 4. Baseline applies in and out of conflict. Each explicit ability/item discount is -1, minimum 1.
- Generic Playbooks and core Introduction: a Major ability taken as a creation extra costs 2 Refresh total. Normal Major cost and the existing veteran surcharge remain distinct.
- No other Phase 1 implementation is completed by this batch.

## Batch 2

- Conflict setup retains roll / 3, rounded down, then helpers and flat modifiers at full value; typical band remains 8-11.
- Flat Disposition modifiers have no stacking cap. Enforce minimum 1 after modifiers and before Superiority.
- Superiority can reduce starting Disposition to 0. Resolve overwhelming preparation as a win at no cost, without scripting volleys, within intent and stakes, referencing the none-or-trivial row of 10.12. The order-of-resolution procedure stops at setup for this outcome.
- Shared Disposition explicitly has no per-member shares or spill-over. Other individual-removal procedures are unchanged.
- Maneuver Create costs 2 Power per rank; Floor Collapse costs 4 Power; Make a Hazard remains 2.
- Quick Reference now includes the matching setup and Create rules and retains the Superiority playtest flag.
- No Area Rule, Interpose, setting killing-strike, recovery, Legacy, character-sheet, changelog or numerical-recalibration changes were made in this batch.

## Area Rule and Interpose integration on review branch

- Commit `ee3978a`: Core Rules §§10.16–10.17 added in `docs/2d12System/chapter-2.10-area-and-interpose.typ` and included immediately after the conflict-system source. The Area Rule is explicitly provisional for playtesting. Adept and Occultist Unleash now use that rule: shared Disposition loss once plus 1 per additional opposing participant, full-tier explicitly inflicted statuses on each affected character, and no status from an ordinary conflict Attack without an explicit grant.
- Commit `5434f07`: current `docs/2d12System/chapter-adversaries.typ` now summarizes area effects and Bulwark Interpose in line with Core §§10.16–10.17; Heavy Hitter no longer says bonus Power hits only the main target. `docs/2d12System/chapter-7-appendix-a-quick-reference.typ` now summarizes both procedures.
- This documentation update synchronizes `docs/design/area-rule-and-interpose-rewrite.md` and this tracker with those source edits. These are review-branch source integrations, not a merged or built release. Historical playtest rolls and outcomes, main, encounter budgets and vampire rules were not changed by the integration.
- No Typst compilation, PDF rebuild, layout check, numerical recalibration, full active-source sweep or playtest rerun is claimed.

## Frontier Descriptor names on review branch

- Commit `e58b93a`: `docs/TestamentOfDust/tod-descriptors.typ` renames setting Descriptor 7 from Cunning to Scheming and setting Descriptor 16 from Reckless to Headlong in both the Quick Reference table and entry headings. Numbers, pools, tags, Instincts, hooks and other mechanics remain unchanged. The generic Cunning and Reckless Descriptors and historical playtest records remain untouched.
- This resolves the setting Descriptor *name collisions* in the current setting-book source. A separate current-facing reference sweep and later Typst/PDF verification remain outstanding; this does not mark other setting-neutrality work complete.

## Legacy retirement on review branch

- Commit `21dabc1`: `docs/2d12System/chapter-2.6.5-recovery.typ` no longer includes `drafts/legacy-pool-6.9.typ`. Core §6.7 now states that a resolved death creates no separate points or automatic Truth; the Dying clock, Scars, permanent harm and fictional remembrance remain unchanged.
- Commit `12509ff`: `docs/2d12System/drafts/README.md` distinguishes active drafts from retired Legacy and notes that prior compilation does not verify this branch. Commit `9f15041`: the retained `legacy-pool-6.9.typ` has an explicit retired historical-draft header and no longer instructs inclusion or a Quick Reference row. Its rules body is preserved as history, not active rules.
- The active four currencies remain pools, Tychē Points, Momentum and Woe. There is no death-triggered Legacy Pool, spend menu, optional Keepsake or Echo procedure in the active rulebook. This record and the changelog do not complete the active-source reference sweep or Typst/PDF verification. Echo and other Region/Campaign Truth exceptions remain deferred to playtesting.

## Remaining implementation by decision

1. Disposition: core conflict setup and Quick Reference reconciled in Batch 2. Reconcile other summaries and changelog. P, Grit and Encounter Budget recalibration remain Phase 4.
2. Flat modifiers: core procedure and Quick Reference updated in Batch 2. PC/opposition symmetry, opposition eligibility and Rider balance remain playtest flags; reconcile other affected text.
3. Shared Disposition: core clarification added in Batch 2. Area Rule, Interpose, Adversaries and Quick Reference integrated on the review branch. Continue the active-source consistency sweep for other superseded per-member, splash or Disposition-transfer wording; do not rewrite historical test results.
4. Killing strikes: implement target-Rank difficulties 15/18/21/24, separate beheading status-tier difficulties 15/18/21/24/27/30, significant complication with 2-Woe buy-off, fire at broken tier 5, and staking as a special case. Tier-6 targets follow Scar and Dying with no killing-strike roll.
5. Create: core Effects, conflict Maneuver, scenery costs and Quick Reference updated in Batches 1-2. Reconcile explicit item/ability discounts and other summaries; consistency sweep remains pending.
6. Recovery: replace legacy short-rest and 1 + Edge wording with pool recovery. Classify Bled as an injury and label its modifier exceptions. Bled death alignment needs the flagged rewrite below.
7. Major creation extras: core pricing clarified in Batch 1. Reconcile setting explanations, sheet instructions and other summaries. R2 is superseded; do not rewrite historical test arithmetic.
8. Legacy: active §6.9 include and death-trigger reference removed, historical draft and drafts README marked retired, changelog and this tracker updated. Finish the active-source sweep for remaining Legacy currency, death-trigger, §6.9 or obsolete instruction references; inspect the sheet and Quick Reference for consistency. Preserve historical records and ordinary uses of the word legacy. Do not activate Echo or other deferred Truth exceptions.
9. Setting neutrality: move vampire-specific Adversaries content into the setting book, make D.6a generic, state that Frontier reskins replace the six generic playbooks, and prohibit Walks Between Worlds in the Frontier. The setting Descriptor names are selected and updated; sweep other current-facing references to old setting names without changing generic descriptors or historical records.

## Unresolved details and playtest flags

- Superiority: PC/opposition symmetry and opposition eligibility for the automatic win remain playtest questions. Do not silently resolve them. Simultaneous reduction of both sides to 0 at setup also needs review; do not invent an automatic-win tie ruling.
- Rider: retain the +7 Chase stack and flag it for playtesting.
- Area Rule: provisional scaling is now integrated on the review branch, not confirmed by playtesting. Test large groups, full-tier statuses with separate Resistance costs, Unleash and NPC area Specials; do not silently select another scaling model.
- Interpose: redirected harm is an imposed status, not ordinary shared Disposition loss. Apply before the original target's Resistance or reduction, enforce NPC one-reduction-per-status limits, and test the area-effect and excluded-cost boundaries.
- Recovery abilities: whether Field Medic and Field Surgeon lift the 1-tier treatment limit is deferred to playtesting; do not grant that exception in this pass.
- Bled: exact replacement of Bled-5/Bled-6 death text needs a deliberate rewrite to align with core. Do not treat either the old override or an invented replacement as a new confirmed ruling.
- Truth layers: Echo, capstones, Rewrite History, Ancestor's Notes and the 3-5 Campaign Truth limit remain deferred to playtesting.
- Descriptor names: setting Cunning → Scheming and Reckless → Headlong are selected and updated in `tod-descriptors.typ`; remaining reference and layout checks are tracked above and below, not an unresolved naming decision.
- Numerical balance: P, Grit, Encounter Budget and all fight reruns remain deferred until the audit is complete.

## Verification still required

- Search all active source files for superseded rules and unconverted references, including earlier area splash and per-member Disposition language. Distinguish current rules from historical design records and playtest results. Include leftover Legacy currency, death-trigger and §6.9 references in that sweep.
- Reconcile character-sheet instructions, remaining Quick Reference topics, changelog and other draft status against actual completed edits. Check other current-facing references to the renamed setting Descriptors.
- Validate diffs to preserve unrelated text. Compile and rebuild PDFs only in the later rebuild pass; no build verification is claimed here.
