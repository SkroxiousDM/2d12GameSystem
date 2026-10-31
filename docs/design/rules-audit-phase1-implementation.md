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

## Adversaries shared-Disposition cleanup on review branch

- Commit `fc63b96`: `docs/2d12System/chapter-adversaries.typ` now identifies Grit as a contribution to the side's starting shared Disposition, not a personal track. Defend, Blood Price and Self-Repair restore the side's shared total; scripting and concession reminders use the side's shared Disposition. The Hound Pack example no longer subtracts the Pack's Grit when a status or explicit effect removes it, and 0 shared Disposition no longer grants a vampire physical harm.
- These specific Adversaries corrections are complete in source. The broader active-source sweep for per-member, splash, spill-over and transfer language is still pending. Historical playtest results and drafts were not rewritten, and no Typst/PDF or playtest verification is claimed.
- At the time of `fc63b96`, Leader eligibility, boss-phase triggers, Last Stand and Fail-safe were unchanged pending review. Leader eligibility, boss phases and Last Stand were subsequently integrated on `boss-phases-fixed-thresholds`, as recorded below. Fail-safe timing was subsequently approved in `a7f2159` and implemented in `954b71e`; see the dedicated entry below.

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
- These were source and documentation integrations on `rules-audit/area-rule-interpose`, not a merged or built release. This implementation record supersedes the old pending item for Rank difficulties 15/18/21/24 and a separate beheading status-tier Difficulty table; it does not make additional designer rulings. The controlling decision document is now reconciled in `2ac0a32`; other current-facing summary checks remain pending. No full active-source sweep, character-sheet reconciliation, Typst compilation, PDF rebuild, layout check, numerical recalibration or playtest rerun is claimed.

## D.4/D.6a reputation guidance on review branch

- Commit `d44c38e`: `docs/2d12System/chapter-3-module-d-downtime.typ` makes D.4 Connect cross-reference D.6a. The D.6a contact Truth bullet describes a relationship with a named person, requires stating what it makes possible and whom it concerns, and says it does not by itself grant a reputation tag or change faction Standing.
- Commit `d4fdb5f`: D.6a now explains reputation tags without a Frontier milestone dependency, applies tag-cap exceptions only within an ability's stated scope, and uses the generic Bellator capstone *Legend of the Field* as its Campaign Truth example in place of setting-specific names. The contact Truth clarification is retained.
- D.6a's setting-neutrality revision is complete in source and recorded in the changelog. Frontier opposition relocation, playbook replacement statements and the Walks Between Worlds exclusion were subsequently implemented on `boss-phases-fixed-thresholds`; see the verified implementation-history entry below. Remaining current-facing reference sweeps and build checks are separate work. No new reputation-award procedure, duration, rank, discount or guaranteed service is introduced; deferred Truth-layer questions remain unresolved.
- No Typst compilation, PDF rebuild, layout check or playtest verification is claimed.

## Recovery and Bled integration on review branch

- Commit `bf4a32b`: `docs/TestamentOfDust/tod-setting-rules.typ` §6 classifies Bled as a physical injury and labels its penalty and natural-recovery exceptions. Bled-4/5 impose −4/−5 on Sōma and Mētis rolls; unrelated harm no longer automatically Takes Out a Bled-4 character. Only Bled-6 starts core Dying, subject to lethal stakes, with Taken Out and a Scar rather than immediate death. The Bled-5 scene-end death deadline is removed.
- Transfusion retains Standard 15, one Bled tier removed per Power and donor Bled-1. It explicitly bypasses the ordinary one-tier treatment limit and treated restriction. Suitable transfusion can supply definitive care at Bled-6; clear the Dying clock when Bled falls below 6 and the immediate lethal cause ends. Pools and Scars are not restored by transfusion.
- Commit `bb1f9bb`: `tod-playbooks-frontier-doctor.typ` makes Treat the Bled apply Standard 15 instead of Hard 18 to stabilising Dying from Bled, retains kit-free transfusion and removes the obsolete frequency comparison. Not on My Table retains its tier-5 rescue and wakes the patient after 10 minutes of safe care. `tod-focuses-village.typ` gives Field Armourer a 10-minute repair time with suitable tools and access. Field Surgeon and Give of Yourself's tier-5 ceiling remain unchanged.
- Commit `3954cea`: split the Frontier insert into `docs/TestamentOfDust/tod-character-sheet-page.typ` on this branch, retaining Mētis terminology. `2d12-character-sheet-v2.typ` connects the page with explicit helper scope and replaces the obsolete pool-0/half-max-return reminder with running dry. The Frontier page mirrors the revised Bled table, recovery and transfusion rules. The Grind wording is unchanged.
- These scoped source edits and their changelog record are complete, not the entire recovery consistency pass. The controlling decision document was reconciled in `2ac0a32`; Module B inspection, rest-term mappings and the two identified Edge recovery formulas were subsequently reconciled as recorded below. Remaining recovery-reference checks, compilation, PDF rebuilding, expanded-panel layout checks and playtesting remain pending; no build or playtest verification is claimed.

## Boss phases and Last Stand on boss-phases-fixed-thresholds

- Commit `9c89972`: replaced Adversaries §7.1 with fixed post-setup shared-Disposition thresholds; integrated the final Special-reveal schedule, designated-Best clarification and Weak +2 rule for Defend-best bosses.
- Command now depends on active Leader participation. Reinforcements increase current and starting shared Disposition while leaving phase references fixed.
- Last Stand now postpones defeat at 0 for one additional volley, once per side per conflict, without stacking, restoring Disposition or activating new phases.
- Added the Iron Marshal worked example, setup reminders and checklist updates.
- Commit `c07ea90`: Core Rules §§10.10 and 10.14 now recognize Last Stand and place phase checks after volley resolution and defeat checks.
- Commit `7dfc168`: restored Hedge Adept Guard +1 after an unintended transcription change. The correction changes only that line.
- Commit `2ac0a32`: reconciled the controlling decision document and marked the boss-phase design draft integrated and amended.
- These scoped source integrations are complete on this branch. Fail-safe is implemented separately in `954b71e`, as recorded below. Quick Reference source coverage was subsequently added in `a89ec97`, as recorded below. Broader consistency sweeps, compilation, PDF rebuilding, layout checks and playtest verification remain outstanding.

## Fail-safe timing and source implementation on boss-phases-fixed-thresholds

- Commit `a7f2159`: recorded the designer-approved final-defeat timing model in the controlling decision document.
- Commit `954b71e`: updated the Guardian Special row and added Adversaries §6.11. Fail-safe costs 3 Woe, requires an active Guardian with the Special available, and resolves when defeat at 0 shared Disposition becomes final, after any Last Stand volley and before compromise.
- Each PC within the blast's established reach adds burned-3 as an additional compromise injury. Existing-injury credit and Resistance apply under Core Rules §10.12; the Guardian is destroyed. The effect grants no action, volley or Disposition change.
- Excludes Superiority setup wins, accepted concessions, mutual defeat and defeat solely because no participant can continue. An unavailable Special or a Guardian already removed from participation cannot activate it.
- The `954b71e` diff was checked: only the Fail-safe table row and new procedure changed; no unrelated profile statistics or text changed. This is diff verification, not compilation or playtest verification.
- The decisions file and this tracker record the scoped source implementation as complete. Quick Reference source coverage was subsequently added in `a89ec97`, as recorded below. The changelog and boss-phase design summary still require reconciliation. Broader reference checks, Typst compilation, PDF rebuilding, layout checks and playtesting remain pending.

## Major-ability pricing wording reconciliation on boss-phases-fixed-thresholds

- Commit `0f5f93a`: clarified Core Rules §4.1, the compact Core Rules §11 Playbooks summary and the Frontier Playbooks overview in `tod-playbooks.typ`.
- Commit `ad7e9e5`: clarified the setting introduction's Major notation and the Playbook Abilities reminder in `2d12-character-sheet-v2.typ`. These complete the five scoped wording fixes approved for PR #41.
- The first playbook ability has no additional-slot cost; if it is Major, its 1-Refresh Major cost still applies. Ordinary creation extras cost 1 Refresh each; Major creation extras cost 2 Refresh total each. Minimum Refresh remains 1.
- Own-playbook advancement Majors cost an Advance and 1 Refresh. The veteran surcharge remains additional: a veteran Major costs an Advance and 2 Refresh total. Focus tier access and prices, capstone eligibility and costs, artifact attunement and ability effects are unchanged.
- Both source commit diffs were reviewed and contain only the approved wording passages. Generic Playbooks and the core introduction already stated the creation-extra total and were not changed in this pass. Historical playtest arithmetic and superseded ruling R2 were not rewritten.
- This is scoped source and documentation completion, not an exhaustive ability-entry sweep or full Phase 1 closure. Remaining summaries and references require the broader consistency pass. Typst compilation, PDF rebuilding and layout verification of the longer sheet reminder remain pending; no build or playtest validation is claimed.

## Reference-sweep contradiction fixes on boss-phases-fixed-thresholds

- Commit `fe510ba`: reconciled five approved passages across three active Typst source files following the read-only reference sweep.
- `docs/2d12System/chapter-2.14-design-notes.typ` §14.1: replaced present-tense double-halving instructions with the current setup formula: divide the Disposition roll by 3, round down, then add helpers and flat modifiers at full value; minimum 1 before Superiority. Updated the adjacent Attack/Feint and Superiority notes to remove the superseded approximately-6 baseline. Earlier simulation figures remain explicitly historical, not validation of the current formula. P, Grit and Encounter Budget recalibration and fight reruns remain deferred to Phase 4.
- `docs/TestamentOfDust/tod-setting-rules-15-design-notes.typ` §15: replaced the statement that Bled-6 means death with Taken Out and a Scar, plus the core three-segment Dying clock when lethal stakes permit. The note now distinguishes Bled's penalty, recovery and transfusion exceptions from ordinary status procedures and points to the Thirst's separate rules. The underlying Frontier procedures were not changed.
- `docs/2d12System/chapter-6.5-knowledge-focuses.typ`, Heals the Broken, Tier 3b: Physician's Care now reads, “Allies you treat during a rest recover all pool points.” This is the designer-selected wording, replacing “short rest” and the obsolete “1 + Edge” comparison. No new minimum duration, treatment roll, kit requirement, frequency limit, status healing, Scar removal or rest-cycle reset was added.
- The commit diff was verified: exactly five lines replaced across the three files, with no unrelated changes. These three identified contradictions are resolved in source; this does not complete the broader reference sweep or Phase 1.
- At that pass, remaining work included other recovery and Create references, Quick Reference coverage, navigation references and audit-status reconciliation. Subsequent scoped completions are recorded below, including Quick Reference coverage in `a89ec97` and recovery mappings in `3fe0680`. Broader sweeps and validation remain pending. Typst compilation, PDF rebuilding, layout checks, numerical recalibration and playtesting were not performed.

## Verified relocation and subsequent reference reconciliation

- Frontier opposition was staged in `46fca4d`, connected after setting §15 in `c0361c0`, and removed from core Adversaries in `9108fd8`. The include connection and current core/setting division were inspected; these are completed source integrations, not pending relocation tasks.
- Commit `91a0abd` states the six Frontier playbook replacements and excludes Walks Between Worlds. Follow-up `b296a12` restores unrelated Focus suitability entries changed in that commit. Commit `a53341e` aligns both introductions with the opposition and option policy. Preserve the corrected suitability entries.
- Commit `f4cc313` marks the shared-Disposition consolidation record historical and superseded in part, preserving its original procedures and simulation results.
- Commit `a89ec97` adds core Quick Reference coverage of boss phases, Last Stand and Fail-safe and the Last Stand exception to defeat at 0.
- Commit `1b96bd4` adds killing-strike and staking summaries to the Frontier sheet and Quick Reference, reconciles the core setting-specific-harm and Dying reminders, and corrects the sheet's Frontier Rules chapter label to Chapter II.
- Commit `e247e22` implements the selected Sun-Sick normal cap at tier 5, collapse at tier 5 and full-day progression to tier 6. Commit `f381a2b` reconciles the dhampir character-sheet reminder. The previously identified Sun-Sick Scar ambiguity now has a selected source rule.
- Commit `73c48c2` corrects repository README sheet links and edition/build-status descriptions, records completed Legacy retirement documentation in the drafts README, and updates the Frontier Opposition include comment. No mechanics or historical draft body were changed.
- Commit `a128ec9` clarifies Adversaries §6.3's Create shorthand as 2 Power per rank with a cross-reference to Core Rules §5 and updates the setting appendix contents description to include killing strikes and staking. Only those two lines changed.
- These scoped source changes and their inspected diffs do not complete the exhaustive reference sweep, compilation, PDF rebuilding, layout checks or playtest validation. Changelog, controlling-decision and design-summary reconciliation remain separate where not yet updated.

## Frontier option inspection, recovery mappings and overview reconciliation

- Commit `2d2452e`: clarifies the Bounty Veteran card in `docs/TestamentOfDust/tod-adversaries.typ`. Heavy Hitter's +1 harm tier applies outside conflicts; its first successful Attack each exchange gains +1 Power during conflicts, without granting a status to an ordinary conflict Attack. The diff contains exactly two replaced lines.
- Commit `33f19ad`: records a complete read of eight remaining Frontier playbook files and six remaining Frontier Focus-category files in `docs/design/rules-audit-phase1-frontier-options-sweep.md`. It also changes the two Warden ability references from Siege of the Night to Siege Until Dawn. The source diff contains those two naming corrections and one trailing blank line; the report records unresolved interactions separately.
- Commit `bd227c6`: adds Module B reminders that condition recovery and pool recovery are separate, and that spending a Check on treatment does not bypass ordinary lasting-injury treatment limits. The condition table, Check costs and ability benefits remain unchanged.
- Commit `281e38a`: removes the Edge recovery bonus from Mutant Regeneration and Mother's Blood. Both now restore a flat 2 Sōma under their stated trigger. Mutant's physical-status healing and Mother's Blood's direct-sunlight restriction remain unchanged. Exactly one line changed in each file.
- Commit `3fe0680`: implements the designer-selected rest vocabulary in Core Rules §6.5. A short rest means completing any first, second or third rest; both short-rest restrictions and ability benefits use that mapping, subject to stated requirements and frequency limits. A full rest means completing the fourth rest. Durations, recovery amounts and the successive rest cycle are unchanged.
- The Frontier Playbooks and Frontier Focuses overviews were inspected against the generic rules, setting introduction and include lists. Access, acquisition prices, replacement policy, the Walks Between Worlds exclusion, relevant references and the suitability entries restored in `b296a12` were checked. The Focus overview required no change within this scope; its cost-reduction reminder remains part of the unresolved wider Create reconciliation.
- Commit `5e2fa88`: corrects the Warden conflict-role entry in the Frontier Playbooks overview to Siege Until Dawn. Exactly one line changed; pricing, access, suitability and includes are unchanged.
- Commit `6cdc965`: reconciles controlling decisions §6 with the selected rest mappings, flat recovery amounts and Module B clarifications, and §§10–11 with completed scoped Quick Reference source coverage. Deferred questions and validation requirements remain open.
- These are scoped source and inspection completions. The 14-file inspection does not clear every ability interaction, and the overview inspection does not settle discount stacking. Remaining findings in the Frontier option sweep report require follow-up against controlling rules or designer rulings; that report's original recovery and overview status statements also need subsequent-completion notes.
- No Typst compilation, PDF rebuild, layout verification, numerical recalibration or playtest was performed by these commits. The main branch and historical playtest records were not changed.

## Remaining implementation by decision

The entries below distinguish completed source integrations from remaining reference checks and documentation reconciliation. Source completion does not imply compilation, layout verification, playtest validation or Phase 1 closure.

1. Disposition
   - Complete in scope: core conflict setup and Quick Reference use the current formula; changelog supersession of double-halving is recorded. Active §14.1 design notes were reconciled in `fe510ba`, with earlier simulation results explicitly labelled historical.
   - Remaining: sweep other active summaries, examples and current-facing documents for double-halving, flat modifiers applied before a second halving, or the approximately-6 starting track presented as the current baseline.
   - Deferred: P, Grit and Encounter Budget recalibration and fight reruns belong to Phase 4. Do not rewrite historical simulation or playtest results.

2. Flat modifiers and Superiority
   - Complete in scope: core setup and Quick Reference apply flat modifiers at full value without a stacking cap, enforce minimum 1 before Superiority, and allow Superiority alone to reduce starting Disposition to 0.
   - Remaining: reconcile affected abilities, examples and summaries with that ordering. Preserve explicitly historical descriptions of superseded rules.
   - Deferred: PC/opposition symmetry, opposition eligibility for an automatic setup win, simultaneous-zero setup and Rider balance remain playtest/review questions. Do not select new rulings during reference cleanup.

3. Shared Disposition, Area Rule and adversary procedures
   - Complete in scope: the core shared-side model, provisional Area Rule, Interpose and scoped Adversaries corrections are integrated. Leader eligibility, fixed boss-phase thresholds and Last Stand are implemented in `9c89972` and `c07ea90`; Fail-safe timing and source implementation are complete in `954b71e`.
   - Remaining: sweep active rules, abilities, Specials, examples and summaries for personal Disposition shares, splash, spill-over, participant-removal subtraction and unsupported Disposition-transfer wording. Ordinary shared Disposition loss must not itself inflict individual harm or remove a participant.
   - Complete in scoped summary coverage: `a89ec97` adds boss phases, Last Stand and Fail-safe to the core Quick Reference, including the Last Stand exception to defeat at 0. The later Dying-summary correction in `1b96bd4` preserves that coverage.
   - Remaining summary verification: check other current-facing references and the compiled Quick Reference layout. Continue checking that phase references remain fixed through recovery and reinforcements and that defeated sides do not activate new phases.
   - Documentation reconciliation: verify and update remaining Fail-safe changelog, boss-phase design-summary and PR-status notes. Do not present completed timing implementation as an unresolved design decision.
   - Preserve historical drafts and playtest outcomes; identify superseded procedures rather than rewriting recorded events.

4. Killing strikes
   - Complete in scope: the revised Rank/status procedure, affected playbook/Focus/gear references, killing-method table, explicit ability-reduction stacking rule, controlling decisions and changelog are integrated.
   - Complete in scoped summary reconciliation: `1b96bd4` adds separate killing-strike and staking procedures to the Frontier character sheet and Quick Reference and clarifies the core Dying reminder.
   - Remaining: sweep other current-facing summaries and ability/item references for obsolete Rank difficulties, a separate beheading status-tier table, a tier-4+ beheading prerequisite, automatic Significant-compromise language and staking conflated with killing strikes. Verify the expanded summaries during the later build and layout pass.
   - Verify that summaries preserve the current base difficulties of 18 / 21 / 27 / 30, reduction by the highest negative status only, eligible ability reductions, no minimum Difficulty and the distinction between buying off a failure complication and succeeding.
   - Verify tier-6 handling against the implemented creature-specific rules and core Scar/Dying procedures. Do not invent a general tier-6 replacement rule or remove an explicit creature exception.

5. Create
   - Complete in scope: core Effects, conflict Maneuver, scenery costs and Quick Reference use the 2-Power-per-rank baseline; rank 2 and Floor Collapse cost 4 Power.
   - Remaining: inspect active ability, item, Special and summary references for old baseline costs, ambiguous flat-price shorthand and discounts that do not state their relationship to the baseline.
   - Completed shorthand reconciliation: `a128ec9` changes Adversaries §6.3 to “Create a Truth (2 Power per rank; explicit discounts follow Core Rules §5)”. This does not resolve discount stacking or reprice bespoke effects.
   - Review before editing: reconcile the controlling discount wording with reminders allowing only one cost reduction and with bespoke free or fixed-price effects such as Lost Knowledge. Distinguish ordinary discounts from explicit exceptions; do not silently introduce stacking or reprice an ability.

6. Recovery, Bled and treatment
   - Complete in scope: Bled injury classification, listed penalty and recovery exceptions, tier-6 core Dying, explicit transfusion exception, related ability timing, sheet reminders and controlling decisions are integrated.
   - Subsequent source reconciliation: `fe510ba` corrects the Frontier §15 Bled-6 design note and gives Physician's Care the designer-selected text, “Allies you treat during a rest recover all pool points.” Those specific contradictions are resolved.
   - Subsequent tier-6 reconciliation: `1b96bd4` clarifies that setting conditions may expressly use core Dying rather than necessarily replacing it. The selected Sun-Sick progression is implemented in `e247e22`, with the sheet reminder reconciled in `f381a2b`; do not continue listing that Scar relationship as an unselected ruling.
   - Completed vocabulary reconciliation: Module B was inspected and clarified in `bd227c6`. The designer-selected short-rest and full-rest mappings are implemented centrally in Core Rules §6.5 by `3fe0680`; short-rest benefits and restrictions apply to completion of any first–third rest, and full-rest benefits trigger on completing the fourth rest. Preserve stated requirements, frequency limits and the successive rest cycle.
   - Completed Edge reconciliation in identified entries: `281e38a` changes Mutant Regeneration and Mother's Blood from 2 + Edge to a flat 2 Sōma. Their other benefits and restrictions remain.
   - Remaining: check other recovery references against these definitions and selected amounts, including obsolete Bled penalties or death deadlines and text that treats pool restoration as automatic status healing. Do not list these specific mappings or Edge bonuses as unresolved, but do not infer that every recovery interaction or reference has been cleared.
   - Check related treatment and definitive-care references without granting Field Medic or Field Surgeon an unselected exception to the one-tier lasting-injury treatment limit.
   - Later verification: validate split-sheet assembly and the expanded recovery/Bled panels during the build and layout pass. Do not mark the entire recovery item complete from these scoped corrections.

7. Major creation extras and acquisition summaries
   - Complete in scope: core pricing was clarified in Batch 1. The five approved core, setting and character-sheet wording reconciliations are complete in `0f5f93a` and `ad7e9e5`, with tracker and changelog records.
   - Remaining: inspect other active acquisition summaries and ability entries for wording that confuses the Major surcharge with an additional-slot or veteran surcharge. Verify consistency without changing Focus access, capstone requirements, artifact costs or ability effects.
   - Preserve the distinction between a first playbook ability's additional-slot exemption and its Major cost. Major creation extras cost 2 Refresh total; the veteran surcharge remains additional.
   - R2 remains superseded. Do not rewrite historical test arithmetic or reinstate that ruling in Phase 4.
   - Later verification: check the longer character-sheet reminder in the compiled layout.

8. Legacy retirement
   - Complete in scope: the active Legacy include and death-trigger reference are removed; the retained draft and drafts README identify the subsystem as retired; tracker and changelog records are present.
   - Remaining: search active sources and current-facing summaries for Legacy currency, death-triggered points, spend menus, automatic death-created Truths, obsolete §6.9 references and instructions that would reactivate the retired fragment.
   - Check the character sheet, Quick Reference, introductory pillars and relevant ability text for consistency with the four-currency model.
   - Preserve archived rules, historical playtest records, fictional remembrance and ordinary non-mechanical uses of “legacy.” Do not activate Echo or another deferred Truth exception as a replacement subsystem.

9. Setting neutrality and Frontier option references
   - Complete in recorded scope: D.4/D.6a generic contact/reputation guidance and the setting Descriptor heading/table renames are integrated.
   - Verified source implementation: Frontier opposition relocation is recorded in `46fca4d`, `c0361c0` and `9108fd8`; Frontier playbook replacements and the Walks Between Worlds exclusion in `91a0abd`, with unrelated suitability entries restored in `b296a12`; introduction alignment in `a53341e`. These scoped implementation tasks are complete.
   - Remaining status reconciliation: update other current-facing status documents that still describe those implemented changes as pending. Implementation-history verification does not complete the full setting-neutrality reference sweep or build checks.
   - Remaining: sweep core and setting cross-references, option summaries and navigation text. Check current-facing uses of Scheming and Headlong while preserving generic Cunning and Reckless and historical records.
   - Completed navigation correction: the Frontier sheet names Chapter II following `1b96bd4`. The inspected Descriptor chapter uses Scheming and Headlong consistently in its headings and reference table; references elsewhere still require the broader sweep.
   - Subsequent overview inspection: `tod-playbooks.typ` and `tod-focuses.typ` were checked for access, acquisition prices, replacement policy, exclusions, suitability, references and includes. The suitability entries restored in `b296a12` remain intact. The single identified overview naming correction is implemented in `5e2fa88`; this does not close the broader setting-neutrality sweep.

## Unresolved details and playtest flags

These are deferred design or validation questions, not permission to change the selected procedures during editorial cleanup.

- Superiority: test PC/opposition symmetry and opposition eligibility for the automatic setup win. Simultaneous reduction of both sides to 0 still requires review; no automatic-win tie ruling is selected.
- Rider: retain the +7 Chase stack against vampires and flag it for playtesting rather than adjusting it in the reference pass.
- Area Rule: the integrated scaling remains provisional. Test larger groups, full-tier statuses with separate Resistance costs, Unleash and NPC area Specials. Do not substitute another scaling model without a ruling.
- Interpose: test interception timing, fictional eligibility, area restrictions and excluded costs. Preserve redirection of an imposed status rather than shared Disposition loss, with at most one NPC reduction per status.
- Recovery abilities: whether Field Medic and Field Surgeon lift the one-tier lasting-injury treatment limit remains deferred. Their cost reductions do not receive that exception in this pass.
- Bled: core Dying at tier 6 and transfusion's explicit treatment-limit exception are selected and implemented, not unresolved death-rule decisions. Test their interaction with stabilisation, definitive care, further harm and separate pool/status recovery.
- Truth layers: Echo, capstones, Rewrite History, Ancestor's Notes and the 3–5 Campaign Truth limit remain deferred to playtesting. Do not infer a general Region/Campaign Truth exception from an individual entry.
- Boss phases: test threshold crossings, skipped thresholds, multiple thresholds reached together, recovery, reinforcement increases and active-boss eligibility. The phase reference remains fixed.
- Last Stand: test the one-additional-volley procedure, action rotation, the no-recovery restriction, participant removal, mutual defeat and the once-per-side limit.
- Fail-safe: timing is selected and source implementation is complete. Test active-Guardian eligibility, Special availability, Last Stand deferral, excluded outcomes, blast reach, existing-injury credit and Resistance.
- Numerical balance: P, Grit, Encounter Budget and fight reruns remain deferred until the audit is complete and Phase 4 begins.

## Verification still required

### Active-source and reference sweep
- Complete the read-only sweep across active core and setting sources, character sheets, Quick References, current-facing Markdown documents and included fragments. The initial targeted pass was not exhaustive.
- Check all relevant playbook, Focus, item, Special and example entries, not just the passages already corrected.
- Distinguish active rules and current-status documents from retired drafts, archives and historical playtest records.
- Verify the complete text of any file whose retrieval was truncated before claiming full coverage.
- Record findings by file and section, distinguishing contradictions, ambiguous wording, missing summary coverage, stale status text and deferred design questions.

### Documentation reconciliation
- Reconcile tracker, controlling decisions, design-summary status, changelog and PR description against verified source changes.
- Preserve completed scoped fixes, including Major-pricing reconciliation and `fe510ba`; do not reopen them merely because the broader item remains unfinished.
- Correct stale setting-neutrality and Fail-safe status statements after verifying their implementation history.
- Preserve historical entries and test arithmetic. Label superseded rules clearly instead of rewriting recorded outcomes.
- Keep remaining work explicit; no documentation update alone closes Phase 1.

### Diff and branch review
- Verify each correction diff preserves unrelated rules, profile statistics, costs, tags and option eligibility.
- Review the complete PR diff against current main before merge; individual commit checks do not substitute for that review.
- Do not merge, rebase or change main as part of a read-only audit or documentation-only update.

### Build and layout verification — later pass
- Compile the core rulebook, setting book and character sheet; rebuild the intended PDFs.
- Verify split-sheet assembly, included fragments and cross-references.
- Check expanded design-note text, recovery/Bled panels, the Major-pricing reminder, tables, page flow and navigation labels.
- Record the actual build results. Prior compilation or source-diff inspection does not verify the current branch's output.

### Playtesting and recalibration — deferred
- Run the selected post-audit tests for the procedures and open questions listed above.
- Perform Phase 4 numerical recalibration and fight reruns only at the planned stage.
- Record source completion, build verification and playtest validation separately.
