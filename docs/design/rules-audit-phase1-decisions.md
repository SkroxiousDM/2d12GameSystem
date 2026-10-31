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
- Sustained fire requires a vampire broken at physical status tier 5; fire destroys a husk at once.
- Staking remains a separate procedure. Killing-strike ability reductions do not apply to staking unless an ability explicitly permits them.
- **Verification still required:** reconcile tier-6 handling with the implemented creature-specific rules and core Scar/Dying procedures. The earlier blanket tier-6 summary is not treated as a verified replacement for those procedures.

## 5. Create baseline cost (B1, C12, D2, E1, G5)

- Baseline: Create costs 2 Power per rank (a rank-2 Truth costs 4). The Effects table is corrected from 3 to 2.
- Applies equally in and out of conflict.
- Each discount from an ability or item is -1, minimum cost 1. Discounts are listed explicitly; items and abilities follow the baseline.
- Scenery Maneuvers (strict): Floor Collapse (rank 2) rises from 3 to 4 Power; Make a Hazard (rank 1) stays at 2.
- 10.6 Maneuver line reads "Create a Truth (2 per rank)".

## 6. Recovery vocabulary (F2, C2, D11, C3, G2)

- Pool recovery follows Core Rules §6.5; Edge does not apply. Sweep active sources for obsolete "short rest" and "1 + Edge" formulas. Inspect Module B's Grind wording before changing any setting or module exception.
- Bled is a physical injury. Its listed penalties and natural-recovery intervals are explicit exceptions, not additional penalties applied alongside the ordinary status-tier penalty.
- Bled-4/5 impose −4/−5 on Sōma and Mētis rolls. Unrelated harm does not automatically Take Out a Bled-4 character.
- Bled-5 has no scene-end death deadline. Bled reaching tier 6 causes Taken Out and a Scar; when lethal stakes permit, use the core three-segment Dying clock rather than immediate death.
- Transfusion retains Standard 15, one Bled tier removed per Power and donor Bled-1. It explicitly bypasses the ordinary one-tier treatment limit and treated restriction.
- Suitable transfusion can provide definitive care at Bled-6. Clear the Dying clock when Bled drops below 6 and the immediate lethal cause ends. Transfusion does not refill pools or remove Scars.
- Related ability and character-sheet integrations are recorded in the implementation tracker. Remaining reference sweeps, sheet assembly and layout verification are not complete.
- **Playtest:** whether Field Medic and Field Surgeon lift the one-tier limit on lasting injuries. Until then, the limit remains unchanged for those abilities.

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

## 10. Boss phases, Command and Last Stand

Recorded from the designer's subsequent rulings and implemented on `boss-phases-fixed-thresholds`.

- Use the boss side's final starting shared Disposition after all setup modifiers and Superiority as a fixed phase reference.
- Half is half that reference, rounded down. Desperate is one third, rounded down.
- Resolve the volley's actions and check removal, victory and mutual defeat before activating phases. A defeated side does not activate a new phase.
- Each phase activates once per conflict. If both thresholds are reached in the same check, activate Half before Desperate.
- Listed Specials follow this Opening/Half schedule:

  | Listed Specials | Available at Opening | Revealed at Half |
  |---|---:|---:|
  | 1 | 0 | 1 |
  | 2 | 1 | 1 |
  | 3 | 1 | 2 |
  | 4 | 2 | 2 |

- Revealing a Special makes it available, not free. Its costs, requirements, timing and use limits remain.
- Role traits, Kind traits and general Woe spends outside the Special allowance remain available normally.
- At Desperate, Defend uses Weak. The designated Best action gains +2; if that action is Defend, use Weak +2.
- Command applies only while its Leader remains an active participant. Half grants no additional Command bonus.
- Reinforcements increase both current and starting shared Disposition by their Grit. The increased starting value is the recovery cap; the phase reference and thresholds do not change.
- Recovery and reinforcements do not reverse phases, refresh them or hide revealed Specials.
- Last Stand costs 2 Woe and postpones defeat at 0 shared Disposition for exactly one additional volley. Both sides participate under the normal scripting and rotation rules.
- Last Stand can extend a side only once per conflict; multiple bearers do not stack or chain it. It does not restore Disposition, waive incapacitation or activate new phases. Resolve defeat or mutual defeat after the additional volley.
- **Still open:** Fail-safe timing, Quick Reference reconciliation, compilation, layout checks and playtesting.

## Follow-on edits

- Phase 4 item 2: do not fold R2 into core.
- Phase 4 item 5: remove Legacy from the document pass.
- Phase 4 item 1: set P, Grit and Encounter Budget to the 8-11 band.
- Changelog (P7): supersede the 2026-10-18 Disposition entry; log the Legacy removal and these rulings.
