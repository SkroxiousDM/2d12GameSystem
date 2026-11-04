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

