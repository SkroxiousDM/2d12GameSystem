# Rules audit: Phase 1 decisions

Date: 2026-10-29. Source: `docs/design/rules-audit.md`, Phase 1 (rules decisions). All rulings are by the designer. Items marked **Playtest** are deferred to the post-audit playtest.

## 1. Starting Disposition formula (P2, H1, H2, M1)

- Use the Section 10.2 formula: (2d12 + Disposition skill + highest Edge) / 3, round down, then +1 per helper and all flat modifiers at full value.
- Typical band: 8-11. P scales with this band; exact P, Grit and Encounter Budget constants are set in Phase 4.
- The changelog entry of 2026-10-18 ("halve twice") is superseded and must be rewritten.
- Verify by playtest after the audit.

## 2. Floor and cap on stacked flat modifiers (D1, E2)

- No cap on stacked flat modifiers.
- Negative flat modifiers cannot reduce starting Disposition below 1.
- Only Superiority (10.3) can reduce starting Disposition to 0. A start of 0 from Superiority hand-waves the conflict as a win at no cost (the "none or trivial" row of 10.12).
- Edit required: 10.3 currently says "to a minimum of 1".
- **Playtest:** Rider +7 in a Chase against vampires; whether PCs and opposition need symmetric floors; whether the opposition may claim the hand-wave against PCs (a PC side is not expected to start at 0).

## 3. Remove the per-member Disposition model (M2)

- Shared Disposition per side only (10.7). Remove all per-member wording.
- Spill-over (ruling R4) is deleted.
- Interpose is rewritten to redirect a specific harm onto the interposing character. Scope it and check it against the one-reduction cap in 10.13.
- A character is removed from a conflict by a negative status reaching tier 6 (2.6.3).
- **Playtest:** Area Rule. (L2 stays in Phase 3.)

## 4. Killing strike (B5, M4, C6, P10)

- Difficulty scales with the target's Rank: 15 / 18 / 21 / 24.
- Beheading uses a separate difficulty by the target's negative-status tier: tier 5 = 15, tier 4 = 18, tier 3 = 21, tier 2 = 24, tier 1 = 27, no negative status = 30.
- Failure: a significant complication that can be bought off for 2 Woe.
- Fire kills only at tier 5 ("broken").
- Staking (C7) remains a special case.
- Assumption to confirm: a target at tier 6 is resolved by Scar and Dying (10.14), with no killing-strike roll.

## 5. Create baseline cost (B1, C12, D2, E1, G5)

- Baseline: Create costs 2 Power per rank (a rank-2 Truth costs 4). The Effects table is corrected from 3 to 2.
- Applies equally in and out of conflict.
- Each discount from an ability or item is -1, minimum cost 1. Discounts are listed explicitly; items and abilities follow the baseline.
- Scenery Maneuvers (strict): Floor Collapse (rank 2) rises from 3 to 4 Power; Make a Hazard (rank 1) stays at 2.
- 10.6 Maneuver line reads "Create a Truth (2 per rank)".

## 6. Recovery vocabulary (F2, C2, D11, C3, G2)

- Replace all legacy "short rest" and "1 + Edge" text with pool recovery as defined in 6.5 (Edge does not apply).
- Bled is an injury. Its penalties follow the "plus or minus tier" rule or are marked as exceptions.
- Bled-5 and Bled-6 death rules are reworked to align with the core Dying clock; any difference is an explicit replacement (A3).
- **Playtest:** whether Restore-cost abilities (Field Medic, Field Surgeon) lift the 1-tier limit on lasting injuries. Until then the limit is unchanged.

## 7. Refresh cost of a star ability as a creation extra (G1)

- A star (Major) ability costs 1 Refresh when taken through advancement.
- Taken as a creation extra it costs 2 Refresh in total.
- Supersedes Playtest 01 ruling R2; do not fold R2 into core in Phase 4.
- Confirm reading: "2 in total" is the full price, not 2 on top of the base 1.

## 8. Legacy and Truth layers (K3, K4, K5, P11, H4, F3, D8, K7, E9)

- Legacy is removed for now. The four-currency pillar stands.
- Cleanup: remove Legacy from the Quick Reference row, Section 2.1, draft header comments (K9), pillar wording (P12, P13) and ability text that triggers on PC death.
- **Playtest:** whether Echo, capstones, Rewrite History and Ancestor's Notes may create Region or Campaign Truths without the 12-segment clock or a major arc; the 3-5 Campaign Truth limit.

## 9. Core stays setting-neutral (B3, J5, P5, G4, F11, F12)

- Vampire content moves from core Adversaries to the Testament of Dust setting book.
- Module D.6a is made generic and stays in core.
- Generic playbooks are not used in the Frontier: the 6 generic playbooks are reskinned for the Frontier setting.
- Walks Between Worlds is not allowed in the Frontier.
- Descriptor collisions (Reckless, Cunning): rename the setting descriptors; core keeps its names.

## Follow-on edits

- Phase 4 item 2: do not fold R2 into core.
- Phase 4 item 5: remove Legacy from the document pass.
- Phase 4 item 1: set P, Grit and Encounter Budget to the 8-11 band.
- Changelog (P7): supersede the 2026-10-18 Disposition entry; log the Legacy removal and these rulings.
