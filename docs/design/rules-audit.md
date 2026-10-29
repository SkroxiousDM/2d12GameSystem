# Rules audit: fix order

Audit of *The 2d12 System* core rulebook against the *Testament of Dust* setting book. Date: 2026-10-29. Source: `main` (multi-file Typst sources), plus the project files `gm/opposition-statblocks.md` and `playtests/playtest-01-sample-characters-and-test-fight.md`, `CHANGELOG.md` and `docs/2d12System/drafts/README.md`.

IDs (A1, B5, C2 and so on) come from the audit passes. Each item below has a one-line description. The order is by dependency, not severity: settle the Phase 1 decisions first, because later phases reuse them.

## Scope and caveats

- Read: core rulebook root and all chapter files (Introduction, Core Rules 2.1-2.14, Modules A-F, Descriptors, Playbooks, Focuses, Adversaries, Quick Reference, `common.typ`, the three included drafts); setting book root and all `tod-*` files; the character sheet (tail after Campaign Truths was truncated).
- Not read: `README.md`, `CONTRIBUTING.md`, `docs/AetasObscura/`, `docs/grendel/`, `docs/Archive/`, the GRENDEL and 2D20 project reference files, and the remaining files in `docs/design/`.
- The copies of the statblocks and playtest files under `docs/design/` were not audited. The versions audited are the project-file copies, which may differ.
- Withdrawn or resolved during the audit: A2, A5, A8, A9, B9, D12. B4 is downgraded to a wording nit.

## Phase 1: Rules decisions (do first)

1. **Starting Disposition formula** (P2, H1, H2, M1). The changelog (2026-10-18) says roll / 2, add helpers, halve again (round up), flat bonuses before the second halving, minimum 1, typical 4-7. Section 10.2 says divide by 3, then add helpers and flats at full value, "usually 8-11". The Adversaries chapter, statblocks and playtests use roll / 2 plus helpers with P = 8 + party size. Under the changelog rule a party of 3 averages about 6 against P = 11.
2. **Floor and cap on stacked flat Disposition modifiers** (D1, E2). A minion group at Grit 3 with a -3 modifier starts at 0. A Rider can stack +7 in a Chase against vampires. Depends on step 1.
3. **Remove the per-member Disposition model** (M2): spill-over (ruling R4), Interpose, and per-member wording in the Area Rule conflict with shared Disposition (10.7). Depends on step 1.
4. **Killing strike** (B5, M4, C6, P10): scaled by Rank (15/18/21/24) or fixed at Hard 18; failure consequence (GM +2 Woe vs compromise at least Significant); whether beheading needs a tier-4+ status; fire on "broken" (tier 5) vs tier-4+.
5. **Create baseline cost** (B1, C12, D2, E1, G5): Effects table says 3 Power, Maneuver Create says 2, story tags are priced at 2, items and abilities say 1 or 2. State one baseline and list the discounts.
6. **Recovery vocabulary** (F2, C2, D11, C3, G2): "short rest" and "1 + Edge" are legacy text that conflicts with 6.5 (Edge does not apply). Decide whether Restore-cost abilities (Field Medic, Field Surgeon) lift the 1-tier limit on lasting injuries, and whether Bled is an injury or an affliction.
7. **Refresh cost of a star ability taken as a creation extra** (G1): 1 Refresh in total (the Playtest 01 ruling R2) or 2.
8. **Legacy and Truth layers** (K3, K4, K5, P11, H4, F3, D8, K7, E9): Legacy as a deliberate fifth currency vs the four-currency pillar; trigger Legacy on any PC death (Bled and Sun-Sick deaths do not use the Dying clock); Echo and capstone/Rewrite History/Ancestor's Notes creating Region or Campaign Truths without the 12-segment clock or major arc; the 3-5 Campaign Truth limit.
9. **Core stays setting-neutral** (B3, J5, P5, G4, F11, F12): vampire content in Adversaries and Module D.6a contradicts the 2026-10-19 changelog. Move it out or amend the changelog. Rule on whether generic playbooks and Walks Between Worlds are allowed in the Frontier, and on Descriptor name collisions (Reckless, Cunning).

## Phase 2: Mechanical fixes (independent, quick)

**Names and terms**
- L4: statblocks Design Principle 1 still says Akmē.
- N3: playtest uses Akmē throughout (pools, Edge, costs).
- J2: Module F's "Edge" Insight collides with the Edge stat.
- F5: ability "Hardened" shares a name with the recovery Advance, and refers to a "personal Grind clock" that Module B does not have.
- G3: "unaware" is used as a condition but never defined.
- H5: "dangerous scene Truth" (+1 Woe) is never defined.

**Cross-references**
- J1: Module F.1 cites D.6 for floating clues (they are in F.6).
- L6: Guard cites Core 10.4 (should be 10.5).
- N4: playtest cites 10.3, 10.5, 10.7, 10.8 (now 10.4, undefined, 10.12, 10.15).
- M5: statblocks say "Core 10.7" for compromise tiers (now 10.12, already 2/3/4).
- C13, P16: Frontier Rules 10.4 cites Module C.5 only; use the replacement text already in the drafts README (World Turn rules: E.10 if Module E, otherwise C.5).
- J4: Module D.7 "without Module E" ignores C.5.
- A1: core Introduction says three optional modules, the modules chapter says six, the setting book says three.
- H6: Section 2 subsections (2.1-2.7) clash with chapter-2.N file numbering (for example 2.7 Risky Rolls vs chapter 2.7 Progress Clocks).

**Small text fixes**
- B10: Hedge Adept has 4 power tags (Established allows 3).
- H8: Explorator XP trigger wording differs between the 2.11 table and chapter 5.7.
- D9, E4: cyborg horse tags appear in three versions.
- D10: "a second vampire's bounty" and "+1 Advance" do not match defined terms.
- D13: Well-Kept "improves by 1" is clear only for 1 in d12.
- E6: stake belt "never declare as load" is redundant (stake is load 0).
- E7: spending a wealth tag is undefined.
- C8: Frontier Descriptors skew 7 Pneuma / 6 Psyche / 4 Soma / 3 Metis.
- E8: some anchor skills are suggested below +3 (Brawl, Science).
- F10: Master-work (12 segments) vs Old-World Steel (8).
- H7: example of play lists Patrolling Guards but does not apply it.
- H9, A10, P6: credits (Mouse Guard, :Otherworld vs :Otherscape; Entanglements and Long Knives need licence check and credit).
- K9: stale draft header comments (C.5 note already applied; Quick Reference Legacy row not applied).
- P7: changelog does not log the Metis rename, running dry, healing intervals, Dying clock, injury trade, Scenery Maneuvers, Modules D/E/F, Legacy, C.7/C.8/E.1A; older entries describe a different ruleset.
- P14: date offset is fixed at -6 (Manitoba is -5 under daylight time); sheet footer says 2026-10-31.
- P15: sheet has 7 ability rows for up to 8 abilities plus capstone.
- H3: Dying clock (3 segments) and 6-segment downtime clocks (Inventor, Serum) are outside the 2.7 and D.5 size lists.

**Setting book consistency**
- B6: Thirst and Sun-Sick tier-6 Scar rules vs core automatic Scar at tier 6.
- B8 (A4): Bled, Thirst and Blood Debt penalties do not follow the "plus or minus tier" rule; mark as exceptions.
- B11: Woe spends in Adversaries are missing from 9.2; unclear which vampire spends count against Specials.
- B12: Grind overrides (night travel, Supplies, per-leg ticks) are unlabelled.
- A3: Bled-5 and Bled-6 death rules should be marked as replacing the Dying clock.
- A6: Escalation "once per scene" vs core "once per item per scene".
- A7: Duel of Wills vs Spirit Duel (unclear whether replacement or separate).
- A11: setting compile date changes each build.
- B13: core Introduction contents table omits the Adversaries chapter.

## Phase 3: Ability and rule-text rewrites

**Combat abilities**
- L2: Adept and Occultist Unleash text says full effects on every target; the Area Rule says splash of exactly 1.
- L1: Shrugs plus Armour exceeds the one-reduction cap in 10.13.
- C9: Cyborg capstone (tier-5 cap) vs Rebuilt Again trigger and killing-method wording; Awaken the Blood fills the +2 dice cap.
- E10, D7: Last One Standing and Not Until the Sun Rises do not say whether the tier-6 Scar still applies.
- F7: One Shot "non-major NPC" is undefined.
- F8: Living Wall "harm" does not say whether it includes Disposition loss.
- D5: Take the Hand makes harm come out of Pneuma; core has no pool-as-damage rule.

**Dead or unclear abilities**
- F1: Change of Plans duplicates the Success at a Cost choice in 2.5.
- F4: Favour Bank and Power Broker vs Module E.7 and E.10.
- F6: "act immediately" (Second Wind, Quick Reflexes) vs scripted conflicts.
- F9: Handler's Animal Companion bonus does not reach the Rider's Beast Companion.
- E3: Beast Companion has 1 power tag (core Animal Companion has 2).

**Modules**
- J3: Module F.4 restores pool points outside the rests.
- J6: many setting abilities refer to the Players' Turn that Module D replaces.
- J7, J8, J9, J10: downtime clock sizes, Upkeep vs wealth tags, "favour Truth" vs E.7 record, Commission contracts and Module F.
- K6, K7, K8: C.7 adds tags and one Belief on top of creation rules; C.7 vs the preset Campaign Truths; C.7 shapes.

**Setting text**
- C5: Order Sidearm has 3 power tags (artifacts allow 1-2).
- E5: Rider's duster is armour plus Edge; crossbow omits Hard 18.
- D3: four ways to upgrade a weakness tag into a killing method with no stacking rule.
- D6: cypher supply (Salvager, Harvest, Chemist, Cypher Hoarder) is uncapped.
- D4: Kin Rider ("minion group of one") and Militia Captain (1 power tag) break the minion-group format.
- C1: Siege of the Night vs Siege Until Dawn.
- L8, L9: NPC compels are not defined in core; reinforcements add Disposition above the starting value.
- M6, M7: Minion Bodies drop on any successful Attack (core says outside conflicts); passive opposition (12 + rating) vs Guard differs for minion groups and Paramount.
- C7: staking at range uses Hard 18, Standard 15 vs a broken vampire, and Standard 15 vs a sleeping one.

## Phase 4: Rebuild numbers, tests and documents (after Phase 1 steps 1-4)

1. **Adversaries and statblocks:** rescale Grit and the Encounter Budget to the chosen Disposition scale (P2); revisit the PC win-chance table and add a tie rule (L3); update the Rules-source pin and add a sync note (N2, L5, L7).
2. **Re-run tests:** rerun both statblock fights and Playtest 01 on final rules (N1, M3); fold rulings R1, R2, R3, R5 and the doubles-on-Disposition question into core (N5).
3. **Module E.1A tables:** replace the pacing table (K1: average Power per turn is about 0.89-1.69, not 0.65-1.52, because Success at a Cost gives 1 Power) and fix the Qualities recipe so the Reed Quay example works (K2).
4. **Character sheet:** P1 (pool at 0 rule), P3 (Belief clause in Tychē Earn), P4 (three Belief lines), P5/P8 (Frontier chapter reference is II, not VII), P9 (Thirst applies to any ability marked Thirst), P15. Rebuild the PDF.
5. **Documents:** credits and licences (P6, A10, H9), design pillar wording (P12, P13), changelog entries (P7), Legacy in the Quick Reference and Section 2.1 (K3, P11).
