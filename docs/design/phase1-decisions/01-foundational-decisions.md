# Rules audit: Phase 1 decisions

Date: 2026-10-29. Source: `docs/design/rules-audit.md`, Phase 1 (rules decisions). All rulings are by the designer. Items marked **Playtest** are deferred to the post-audit playtest.

Reconciliation: This document includes subsequent designer rulings implemented on `boss-phases-fixed-thresholds`. Superseded instructions are identified below. Implementation status is tracked separately in `rules-audit-phase1-implementation.md`; a recorded ruling does not imply that all references, builds or playtests have been verified.

## 1. Starting Disposition formula (P2, H1, H2, M1)

- Use the Section 10.2 formula: (2d12 + Disposition skill + highest Edge) / 3, round down, then +1 per helper and all flat modifiers at full value.
- Typical band: 8-11. P scales with this band; exact P, Grit and Encounter Budget constants are set in Phase 4.
- The 2026-10-18 changelog's double-halving formula is superseded. Preserve that entry as history, label the superseded formula explicitly and record the current formula under Unreleased.
- Verify by playtest after the audit.

## 2. Floor and cap on stacked flat modifiers (D1, E2)

- No cap on stacked flat modifiers.
- Negative flat modifiers cannot reduce starting Disposition below 1.
- Only Superiority (10.3) can reduce starting Disposition to 0. A start of 0 from Superiority hand-waves the conflict as a win at no cost (the "none or trivial" row of 10.12).
- Implemented in Core Rules §§10.2–10.3 and the Quick Reference: apply all flat modifiers, enforce minimum 1, then apply Superiority, which alone may reduce starting Disposition to 0.
- **Playtest/review:** Rider +7 in a Chase against vampires; whether PCs and opposition need symmetric floors; whether the opposition may claim the automatic setup win against PCs; and simultaneous reduction of both sides to 0 at setup. No automatic-win tie ruling is selected here.

## 3. Remove the per-member Disposition model (M2)

- Shared Disposition per side only (10.7). Remove all per-member wording.
- Spill-over (ruling R4) is deleted.
- Interpose is rewritten to redirect a specific harm onto the interposing character. Scope it and check it against the one-reduction cap in 10.13.
- A character is removed from a conflict by a negative status reaching tier 6 (2.6.3).
- **Playtest:** Area Rule. (L2 stays in Phase 3.)

## 4. Killing strike (B5, M4, C6, P10)

The revised procedure implemented in commits `09ae687`, `b2ec517` and `2aa4f5d` supersedes the earlier Rank difficulties 15/18/21/24 and separate beheading status-tier Difficulty table.

- Base Difficulty by vampire Rank: Minor 18, Established 21, Great 27, Paramount 30.
- Reduce Difficulty by 3 per tier of the target's highest negative status. Use only the highest tier; do not add different statuses together. There is no minimum Difficulty.
- Apply eligible ability reductions in addition to the highest-status reduction. Each one-step reduction lowers Difficulty by 3.
- A successful killing strike destroys the named vampire.
- Failure brings a significant complication. Players may give the GM 2 Woe to buy off that complication. Buying it off does not make the strike succeed, and failure does not automatically impose a Significant compromise.
- Resolve the established conflict outcome and compromise separately. Reaching 0 shared Disposition does not itself inflict physical harm or destroy a vampire.
- Beheading uses the common killing-strike procedure, with an eligible blade or sufficient strength. There is no separate status-tier Difficulty table or tier-4+ status prerequisite.
- Sustained fire requires a vampire broken at physical status tier 5, or a staked vampire under the restricted equivalence recorded below; fire destroys a husk at once.
- Staking remains a separate procedure. Killing-strike ability reductions do not apply to staking unless an ability explicitly permits them.
- **Verification still required:** reconcile tier-6 handling with the implemented creature-specific rules and core Scar/Dying procedures. The earlier blanket tier-6 summary is not treated as a verified replacement for those procedures.

### Subsequent designer ruling: Sun-Sick 6 — 2026-11-02

- Ordinary Sun-Sick gains and stacking remain capped at tier 5. Only the full-day exposure procedure in Frontier Rules §7.1 advances Sun-Sick to tier 6; tier-5 collapse alone does not start a Dying clock.
- A dhampir at Sun-Sick 5 left in the sun for a full day advances to Sun-Sick 6 and remains Taken Out. Record one Sōma Scar under Core Rules §6.3, subject to its one-per-episode and one-per-event limits. This is the normal tier-6 Scar, not an additional Scar for becoming Dying. When established lethal stakes permit, this is life-threatening physical harm and starts the core three-segment Dying clock under §6.7; otherwise apply incapacitation and the Scar without a Dying clock.
- Both rescue provisions are selected: removal from harmful sunlight automatically stabilises a dhampir Dying from Sun-Sick and stops the clock without erasing its segments, lowering Sun-Sick or returning the character to ordinary action. A full scene in shade or darkness lowers Sun-Sick by 2 tiers as normal; at night it clears completely. When this recovery lowers Sun-Sick below 6 and harmful exposure has ended, it counts as definitive care for this condition and clears the sunlight-caused Dying clock.
- Stabilisation, Sun-Sick recovery and clock clearance do not remove the Sōma Scar. Repeated exposure follows the core Scar Recorded rules. If renewed exposure makes the dhampir Dying again before clock clearance, resume its recorded segments; apply core further-harm rules without allowing ordinary Sun-Sick gains to exceed tier 5. These rescue provisions do not stabilise or clear a Dying clock caused by a separate injury.
- Preserve the vampire exception: a vampire at Sun-Sick 5 left in direct sun for a full day advances to Sun-Sick 6 and is destroyed as a killing blow; do not start a Dying clock.
- Implemented in `docs/TestamentOfDust/tod-setting-rules.typ` §7.1 by commit `852c81b919d29684fb9ae1ee195d0385851c0940` (`rules: clarify Sun-Sick 6 Dying, rescue and Scar handling`). Its complete diff was inspected: one file, 17 additions and 1 deletion, replacing the full-day exposure bullet with a dedicated subsection; no unintended changes were found.
- This is a scoped Sun-Sick ruling and source implementation, not clearance of the broader killing-strike/staking/tier-6 pass or other current-facing references. The general §5.2 cap and Quick Reference exception wording remain outside that source commit. No Typst compilation, PDF rebuild, rendered-layout verification, numerical recalibration, fight rerun or playtest validation was performed. Phase 1 remains open; the full PR diff review against current main remains a pre-merge gate. No merge, release, PR-text update or change to main is included.

### Subsequent designer ruling: restricted staking equivalence — 2026-11-02

- Staked remains an untiered special condition, not a killing method or an actual physical tier-5 injury. While staked, a vampire counts as broken at physical status tier 5 solely for meeting sustained fire's killing-method prerequisite.
- For subsequent killing-strike rolls, treat staked as a tier-5 negative status: reduce Difficulty by 15, or use the reduction from a higher actual negative status instead. Do not add these reductions together. Eligible killing-strike ability reductions apply additionally, as normal. This does not reduce the staking attempt's Difficulty.
- These equivalences apply to no other purpose. They do not affect staking rolls or other tests, impose a status-tier roll penalty, count as becoming broken for Blood Debt, recovery eligibility or ability triggers, or make the vampire sleeping or a husk.
- Staked cannot be purchased in tiers, stacked, reduced by status-tier healing or advanced to tier 6. Additional stakes provide no further mechanical benefit. Staking does not itself cause a Scar, Dying or destruction, and grants no additional action, extra volley or automatic killing strike.
- The vampire cannot act or recover while the stake remains. Removing the stake ends staked and both equivalences. Actual statuses and other recorded conditions remain; removing the stake does not restore Disposition or undo a settled conflict outcome. Existing staking outcomes, action use and shared-Disposition handling remain unchanged.
- Implemented in `docs/TestamentOfDust/tod-setting-rules-8.typ` §8.1 by commit `08699c64a41cb87e3988249f235f4e8a0a7b9d11`: one file, 9 additions, no deletions. Matching reference updates are implemented in `tod-character-sheet-page.typ` by `471b4bd8a6b8d8dc611726848b182dbbea98a91a` and the setting book's Frontier Quick Reference by `ac48fa68ed588d89701de296d27692b84d5167f3`; each changed one file with 4 additions and 2 deletions. All three complete diffs were inspected; no unintended changes were found.
- Root Unreleased records the source and named reference reconciliation in `167ce23612fdf5d0672170d00bb572f4a549e873`: one file, 8 additions, no deletions; its complete diff was inspected. Withdrawn confirmation payloads were not committed.
- This records a selected staking exception and its scoped implementation, not clearance of the broader killing-strike/staking/tier-6 pass. Tracker reconciliation, sunlight-exception summary work, remaining source/reference coverage and validation remain separate. No Typst compilation, PDF rebuild, rendered-layout verification, numerical recalibration, fight rerun or playtest validation is claimed. Phase 1 remains open; full PR diff review against current main remains a pre-merge gate. No merge, release, PR-text update or change to main is included.

## 5. Create baseline cost (B1, C12, D2, E1, G5)

- Baseline: Create costs 2 Power per rank (a rank-2 Truth costs 4). The Effects table is corrected from 3 to 2.
- Applies equally in and out of conflict.
- Each discount from an ability or item is -1, minimum cost 1. Discounts are listed explicitly; items and abilities follow the baseline.
- Scenery Maneuvers (strict): Floor Collapse (rank 2) rises from 3 to 4 Power; Make a Hazard (rank 1) stays at 2.
- 10.6 Maneuver line reads "Create a Truth (2 per rank)".

## 6. Recovery vocabulary (F2, C2, D11, C3, G2)

- Pool recovery follows Core Rules §6.5; Edge does not apply.
- Subsequent designer ruling: a short rest means completing any one of the first, second or third rests in the successive recovery cycle. Short-rest recovery restrictions apply to all three stages. Ability benefits triggered by a short rest also trigger on completing any of those stages, subject to their stated requirements and frequency limits.
- Subsequent designer ruling: a full rest means completing the fourth rest. Full-rest ability benefits trigger on that completion. These definitions do not add rest stages, alter their durations or reset the successive rest cycle. Implemented in `3fe0680`.
- Mutant Regeneration and Mother's Blood restore a flat 2 Sōma, without Edge (`281e38a`). Their other benefits and restrictions remain unchanged. Module B's recovery-layer and treatment-limit reminders are implemented in `bd227c6`.
- Remaining reference work: check active recovery wording and formulas against these selected procedures. “Short rest” and “full rest” are now defined terms, not inherently obsolete wording. Preserve explicit exceptions and distinguish pool restoration from status healing.
- Bled is a physical injury. Its listed penalties and natural-recovery intervals are explicit exceptions, not additional penalties applied alongside the ordinary status-tier penalty.
- Bled-4/5 impose −4/−5 on Sōma and Mētis rolls. Unrelated harm does not automatically Take Out a Bled-4 character.
- Bled-5 has no scene-end death deadline. Bled reaching tier 6 causes Taken Out and a Scar; when lethal stakes permit, use the core three-segment Dying clock rather than immediate death.
- Transfusion retains Standard 15, one Bled tier removed per Power and donor Bled-1. It explicitly bypasses the ordinary one-tier treatment limit and treated restriction.
- Suitable transfusion can provide definitive care at Bled-6. Clear the Dying clock when Bled drops below 6 and the immediate lethal cause ends. Transfusion does not refill pools or remove Scars.
- Related ability and character-sheet integrations are recorded in the implementation tracker. Remaining reference sweeps, sheet assembly and layout verification are not complete.
- **Playtest:** whether Field Medic and Field Surgeon lift the one-tier limit on lasting injuries. Until then, the limit remains unchanged for those abilities.

### Subsequent scoped recovery reconciliation — 2026-11-03

- RT-01–RT-03 are identifiers from the bounded recovery-reference pass, not original audit identifiers. Chemist's selected standard-item crafting and The Blood Bank's selected fixed-output transfusion are recorded in [the residual ability decision record](03-residual-ability-item-and-special-rulings.md), under Subsequent designer rulings: Chemist and The Blood Bank.
- The Blood Bank is an explicit exception to the rolled transfusion output above: once per patient per scene, an overseen no-roll transfusion removes up to 3 Bled tiers, generates no Power or Momentum and is not multiplied by Restore-efficiency abilities. Ordinary rolled transfusions, transfusion requirements, donor Bled-1 and Treat the Bled's kit exception remain as recorded. Source: `0b66dc4a812c7403cdd369018de310b01454b19a`. This does not grant Field Medic or Field Surgeon a general treatment-limit exception.
- RT-02: `785029e13bda02da9f56f4b5570c4cd94d53fc67` reconciles only the Sun-Sick note in `docs/TestamentOfDust/tod-character-sheet-page.typ` with the selected Sun-Sick 6 procedure in §4 above. It adds lethal-stakes/Dying, sunlight-removal stabilisation, definitive-care clock clearance, separate-injury exclusion, Scar retention and repeated-exposure reminders. The complete diff was inspected: one file, 7 additions and 1 deletion, with Bled, Thirst and surrounding sections unchanged. This supersedes pending sheet-summary coverage only for that note; earlier checkpoint wording is preserved and other references remain outside this completion.
- RT-03: `38652010669e94c1a999b7c8f7f234028bdd87b0` qualifies only the treatment passage in the core Quick Reference's Damage Cycle summary: ordinary treatment removes at most 1 tier per lasting injury, with the treated restriction until a healing interval removes a tier; explicit healing and treatment exceptions follow their own text. The complete diff was inspected: one file, 1 addition and 1 deletion, with no unintended changes. This reconciles existing Core Rules §6.6 rather than selecting a new treatment-limit exception.
- These completions do not close the recovery/Bled/treatment or killing-strike/staking/tier-6 passes. Remaining source/reference coverage and recovery interactions stay open. No Typst compilation, PDF rebuild, rendered-layout verification, numerical recalibration, fight rerun or playtest validation was performed; the longer sheet note, Doctor rows and Quick Reference passage have unverified rendered fit. Changelog reconciliation remains separate. Phase 1 remains open; full PR diff review against current main remains a pre-merge gate. No merge, release, PR-text update or change to main is included.

## 7. Refresh cost of a star ability as a creation extra (G1)

- A star (Major) ability costs 1 Refresh when taken through advancement.
- Taken as a creation extra it costs 2 Refresh in total (the full price, not 2 on top of the base 1).
- Supersedes Playtest 01 ruling R2; do not fold R2 into core in Phase 4.

## 8. Legacy and Truth layers (K3, K4, K5, P11, H4, F3, D8, K7, E9)

- Legacy is removed for now. The four-currency pillar stands.
- Cleanup: remove Legacy from the Quick Reference row, Section 2.1, draft header comments (K9), pillar wording (P12, P13) and ability text that triggers on PC death.
- **Playtest:** whether Echo, capstones, Rewrite History and Ancestor's Notes may create Region or Campaign Truths without the 12-segment clock or a major arc; the 3-5 Campaign Truth limit.

## 9. Core stays setting-neutral (B3, J5, P5, G4, F11, F12)

- Vampire content moves from core Adversaries to the Testament of Dust setting book.
- Module D.6a is made generic and stays in core.
- Generic playbooks are not used in the Frontier: the 6 generic playbooks are reskinned for the Frontier setting.
- Walks Between Worlds is not allowed in the Frontier.
- Setting Descriptor Cunning is renamed Scheming; setting Reckless is renamed Headlong. Core retains its generic Descriptor names. The setting headings and reference table are updated; remaining current-facing reference and layout checks are separate work.

