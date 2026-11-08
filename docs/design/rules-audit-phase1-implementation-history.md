# Phase 1 rulings: implementation history

Moved verbatim from the [implementation tracker](rules-audit-phase1-implementation.md) in the 2026-11-07 documentation split. These entries record their original scopes; later follow-ups and current remaining work are in the tracker. Older pending wording is historical where a later scoped entry supersedes it.

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

## Adversaries shared-Disposition cleanup on review branch

- Commit `fc63b96`: `docs/2d12System/chapter-adversaries.typ` now identifies Grit as a contribution to the side's starting shared Disposition, not a personal track. Defend, Blood Price and Self-Repair restore the side's shared total; scripting and concession reminders use the side's shared Disposition. The Hound Pack example no longer subtracts the Pack's Grit when a status or explicit effect removes it, and 0 shared Disposition no longer grants a vampire physical harm.
- These specific Adversaries corrections are complete in source. The broader active-source sweep for per-member, splash, spill-over and transfer language is still pending. Leader eligibility, boss-phase triggers, Last Stand and Fail-safe remain unchanged pending review; no new trigger ruling is claimed. Historical playtest results and drafts were not rewritten, and no Typst/PDF or playtest verification is claimed.

## Frontier Descriptor names on review branch

- Commit `e58b93a`: `docs/TestamentOfDust/tod-descriptors.typ` renames setting Descriptor 7 from Cunning to Scheming and setting Descriptor 16 from Reckless to Headlong in both the Quick Reference table and entry headings. Numbers, pools, tags, Instincts, hooks and other mechanics remain unchanged. The generic Cunning and Reckless Descriptors and historical playtest records remain untouched.
- This resolves the setting Descriptor *name collisions* in the current setting-book source. A separate current-facing reference sweep and later Typst/PDF verification remain outstanding; this does not mark other setting-neutrality work complete.

## Legacy retirement on review branch

- Commit `21dabc1`: `docs/2d12System/chapter-2.6.5-recovery.typ` no longer includes `drafts/legacy-pool-6.9.typ`. Core §6.7 now states that a resolved death creates no separate points or automatic Truth; the Dying clock, Scars, permanent harm and fictional remembrance remain unchanged.
- Commit `12509ff`: `docs/2d12System/drafts/README.md` distinguishes active drafts from retired Legacy and notes that prior compilation does not verify this branch. Commit `9f15041`: the retained `legacy-pool-6.9.typ` has an explicit retired historical-draft header and no longer instructs inclusion or a Quick Reference row. Its rules body is preserved as history, not active rules.
- The active four currencies remain pools, Tychē Points, Momentum and Woe. There is no death-triggered Legacy Pool, spend menu, optional Keepsake or Echo procedure in the active rulebook. This record and the changelog do not complete the active-source reference sweep or Typst/PDF verification. Echo and other Region/Campaign Truth exceptions remain deferred to playtesting.

## Revised Frontier killing strikes on review branch

- Commit `09ae687`: `docs/TestamentOfDust/tod-setting-rules.typ` integrates the revised §5.2 procedure. Base Difficulty is Minor 18, Established 21, Great 27, Paramount 30; reduce it by 3 per tier of the target's highest negative status, with no minimum. A successful strike destroys the named vampire. Failure brings a significant complication with a 2-Woe buy-off; buying it off does not turn failure into success, and failure does not automatically impose a Significant compromise.
- Commit `b2ec517`: affected Frontier playbook, Focus and gear references use the revised procedure, including staking references for stake-capable ranged weapons.
- Commit `2aa4f5d`: `docs/TestamentOfDust/tod-setting-rules-8.typ` reconciles §8.1 killing methods. Beheading uses the common killing-strike procedure with no tier-4+ prerequisite; sustained fire requires a vampire broken at physical status tier 5, retaining the husk exception. Staking remains separate. The general §5.2 text explicitly stacks eligible ability reductions; those reductions do not apply to staking unless an ability explicitly says so.
- Commit `527dd62`: `CHANGELOG.md` records the revised procedure and related reconciliation under Unreleased.
- These are source and documentation integrations on `rules-audit/area-rule-interpose`, not a merged or built release. This implementation record supersedes the old pending item for Rank difficulties 15/18/21/24 and a separate beheading status-tier Difficulty table; it does not make additional designer rulings. Reconcile the controlling decision document and other current-facing summaries with the revised procedure in the remaining consistency pass. No full active-source sweep, character-sheet reconciliation, Typst compilation, PDF rebuild, layout check, numerical recalibration or playtest rerun is claimed.

## D.4/D.6a reputation guidance on review branch

- Commit `d44c38e`: `docs/2d12System/chapter-3-module-d-downtime.typ` makes D.4 Connect cross-reference D.6a. The D.6a contact Truth bullet describes a relationship with a named person, requires stating what it makes possible and whom it concerns, and says it does not by itself grant a reputation tag or change faction Standing.
- Commit `d4fdb5f`: D.6a now explains reputation tags without a Frontier milestone dependency, applies tag-cap exceptions only within an ability's stated scope, and uses the generic Bellator capstone *Legend of the Field* as its Campaign Truth example in place of setting-specific names. The contact Truth clarification is retained.
- D.6a's setting-neutrality revision and D.4 contact Truth cross-reference are complete in source. The later Frontier follow-up above also records completion of the scoped vampire relocation and playbook replacement statement. Walks Between Worlds remains allowed under the corrected technological interpretation. Descriptor-reference and broader current-facing source sweeps remain pending. No new reputation-award procedure, duration, rank, discount or guaranteed service is introduced; deferred Truth-layer questions remain unresolved.
- No Typst compilation, PDF rebuild, layout check or playtest verification is claimed.

## Recovery and Bled integration on review branch

- Commit `bf4a32b`: `docs/TestamentOfDust/tod-setting-rules.typ` §6 classifies Bled as a physical injury and labels its penalty and natural-recovery exceptions. Bled-4/5 impose −4/−5 on Sōma and Mētis rolls; unrelated harm no longer automatically Takes Out a Bled-4 character. Only Bled-6 starts core Dying, subject to lethal stakes, with Taken Out and a Scar rather than immediate death. The Bled-5 scene-end death deadline is removed.
- Transfusion retains Standard 15, one Bled tier removed per Power and donor Bled-1. It explicitly bypasses the ordinary one-tier treatment limit and treated restriction. Suitable transfusion can supply definitive care at Bled-6; clear the Dying clock when Bled falls below 6 and the immediate lethal cause ends. Pools and Scars are not restored by transfusion.
- Commit `bb1f9bb`: `tod-playbooks-frontier-doctor.typ` makes Treat the Bled apply Standard 15 instead of Hard 18 to stabilising Dying from Bled, retains kit-free transfusion and removes the obsolete frequency comparison. Not on My Table retains its tier-5 rescue and wakes the patient after 10 minutes of safe care. `tod-focuses-village.typ` gives Field Armourer a 10-minute repair time with suitable tools and access. Field Surgeon and Give of Yourself's tier-5 ceiling remain unchanged.
- Commit `3954cea`: split the Frontier insert into `docs/TestamentOfDust/tod-character-sheet-page.typ` on this branch, retaining Mētis terminology. `2d12-character-sheet-v2.typ` connects the page with explicit helper scope and replaces the obsolete pool-0/half-max-return reminder with running dry. The Frontier page mirrors the revised Bled table, recovery and transfusion rules. The Grind wording is unchanged.
- These scoped source edits and their changelog record are complete, not the entire recovery consistency pass. Reconcile the controlling decision document and remaining summaries; check Module B before changing the Grind's short-rest language, and finish the active-source sweep for old recovery formulas. Compilation, PDF rebuilding, expanded-panel layout checks and playtesting remain pending; no build or verification is claimed.


