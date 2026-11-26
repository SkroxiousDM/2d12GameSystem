# Core Rulebook Consistency Audit

Branch: `feat/complication-die-resolution`
Scope: every file included by `the-2d12-system-v2-core-rulebook.typ`, plus `generic-character-sheet.typ`.
Output: findings only. No source file was edited.

## How to read this report

Each finding gives the file, the quoted text, the conflict and a suggested fix. Severity means:

- **High**: a table-facing rule or worked example gives a wrong or contradictory answer.
- **Medium**: two places state a rule differently, or a rule has an unanswered edge case.
- **Low**: wording drift, stale comment, or presentation.

## Coverage and limits

Read in full: Chapter 1, Chapter 2 (2.1–2.14), Quick Reference, Glossary, Modules A–F (including C.7, E.1A, E.7), the Adversaries chapter (parts 1–4), Descriptors, Author's Note and both Design Notes.

Checked structurally or by search only: the individual ability text in Playbooks 5.3–5.8 and Focuses 6.3–6.8. I verified counts, tiers, ★ placement, Module requirements and Suits coverage, and searched all of them for stale terms. I did not re-read each ability line by line, so ability-level conflicts with the core could remain.

## Verified correct

These were recomputed and match the text.

- 2.3 odds table: all 24 values match the exact 2d12 distribution.
- Resistance table (2d–5d) matches the computed values.
- E.1A pacing table: all 15 average-Power values and all 30 turns-to-fill values (12- and 16-segment clocks) match an exact calculation, with overflow discarded.
- All eight Adversary template cards match the Rank table (Grit, Guard, Shrugs, Best/Fair/Weak ratings, power and weakness tag counts, Special counts).
- Playbook base pools each total 36. Every playbook lists eight abilities plus a capstone.
- All 24 Focuses have five rows (1, 2a, 2b, 3a, 3b) and exactly one ★, at Tier 3.
- Descriptors: six per pool, 24 total.
- Focus design-note coverage list (6.9) matches the Suits column in the Focus Quick Reference for all six playbooks.
- Example of Play arithmetic (Kade, Mira and Tarin: Power, Disposition 8→5 and 8→7, Significant compromise).
- Running-dry overrun table; Reed Quay example arithmetic (E.13) and its total of 9 Quality points.
- Adversary example exchange: opposition Threat 11 = Legacy P for three PCs; Woe pool 6 = 2 per PC.

---

## High

### H1. Iron Marshal Desperate ratings do not match the Marshal card

File: `chapter-adversaries-part-4.typ`, 9.5 Desperate Rating Precedence.

> A Marshal recording Attack uses Attack +7, Defend +3, Feint +3 and Maneuver +5 before other modifiers.

Conflict: the Iron Marshal card (`chapter-adversaries-part-3.typ`, 8 Templates) reads Attack +3, Defend +6, Feint +1, Maneuver +3. Applying 9.5 itself (+2 on the recorded category, Defend replaced by the Weak rating) gives Attack +5, Defend +1 (Great Weak), Feint +1, Maneuver +3. None of the four numbers in the example match either the card or the rule.

Suggested fix: replace with "Attack +5, Defend +1, Feint +1 and Maneuver +3 before other modifiers." Also say that Defend drops from +6 to +1, since that is the surprising part of the rule.

### H2. Example exchange awards 2 Power for a win that earns 3

File: `chapter-adversaries-part-4.typ`, 9.8 Example Exchange, Volley 1.

> The Pack spends 1 Woe on a bonus die and wins by 4, generating 2 Power. It buys Impede (1) and Gain Position (1).

Conflict: Core Rules 2.5 says a versus winner generates "applicable Tag Power + 1 Power, +1 per full 3 points of winning margin". Adversary Principles say flat Tag Power is exactly 1, "a win or success gives 2 Power plus margin". A margin of 4 adds 1, so the win earns 3 Power.

Suggested fix: change to "generating 3 Power" and either add a third purchase (for example Hit and Run is a role trait, not a purchase, so add a 1-Power Extra Feat or bank the Power as unspent) or change the margin to 3 or less so 2 Power is correct. Changing "wins by 4" to "wins by 2" is the smallest edit.

### H3. Character sheet still prints the pre-complication-die rules

File: `generic-character-sheet.typ`, lines 208–209.

> Meet it: Success, Tag Power + 1 (+1 per full 3 over). Miss by 1–3: Success at a Cost, Tag Power only (a consequence or GM +1 Woe, your choice). Miss by 4+: Failure, GM +1 Woe.
> Doubles: success +1 Power; failure or cost, a complication (buy off: GM +2 Woe). Double 12s: success, +2 Power. Double 1s: always a complication.

Conflict: the core has no Success at a Cost, no miss bands, no failure Woe, and no special double-1 or double-12 rule ("Double 1s and double 12s have no special action overrides", 2.2 and QR). The sheet contradicts six core rules at once. This is the missing hand-edits file 10.

Suggested fix: rewrite the outcome block from the six-outcome table (Success, Success with Complication, Failure with a Benefit, Failure with Complication, Critical Success, Critical Failure), with the Complication die and the 1/2/3 Woe buyoff prices.

### H4. Glossary says failed Probes tick the case clock

File: `chapter-8-appendix-b-glossary.typ`, Case clock.

> the six-segment They Know We Know clock tracking opposition response to noise, delay or failed Probes.

Conflict: Module F.5 now says "Only noise and delay tick the case clock. A failed Probe does not tick it by itself", and its Quick Reference sidebar says the same.

Suggested fix: "…tracking opposition response to noise or delay, including a Probe complication that costs time or makes noise."

---

## Medium

### M1. Removing 1 Woe costs 3 Power in one place and 2 Weal in another

Files: `chapter-2.9-weal-and-woe.typ` (Weal table), `chapter-2.5-effects.typ` (Disrupt), `chapter-2.10-conflict-system.typ` (10.6), Glossary (Disrupt).

> Reduce Woe by 1, 2 (Weal table)
> Spend 3 Power to cancel or delay an established prepared action, or remove 1 available GM Woe. (Glossary, Disrupt)

Conflict: the same outcome costs 2 Weal, and Weal is just banked unspent Power. A player who sees 3 Power and 2 Weal has no reason to ever use the Effect.

Suggested fix: decide whether the Weal route is intended to be cheaper (Weal decays, so a discount is defensible) and say so in the Weal table, or align both at one price. The Weal table also forbids paying for it with Woe, which suggests it is treated as the special case.

### M2. Order of Resolution has no step for a GM-bought complication

Files: `chapter-2.10-conflict-system-aftermath.typ`, 10.15 steps 12–14; `chapter-2.9-weal-and-woe.typ`; QR "GM-bought complication".

> 12. Name each complication and its severity; offer Woe buyoff. 13. Allocate Power… 14. Resist eligible narrative complications, once each.

Conflict: Weal and Woe 9.2 and the QR say the GM may add a complication "after a player's roll is resolved and before the player chooses a response", one per roll. Step 12 names complications but nothing says a purchased one is added there.

Suggested fix: add to step 12, "A GM-bought complication (@core-woe) is added here, before the player responds."

### M3. Resist harder is missing from the scripted-conflict timing limits

Files: `chapter-2.4-tyche-points.typ` (Resist harder: "reduce one Resistance cost to 0"); `chapter-2.10-area-and-limits.typ`, 10.18.

2.4 says scripted conflicts add timing limits to all three Tychē spends. 10.18 lists Invoke, Declare and Prepared in Advance; Resist harder does not appear in it.

Suggested fix: add a Resist harder line to 10.18 (when it may be declared relative to Resistance and protected payments), or state in 2.4 that Resist harder has no extra conflict limit.

### M4. Refusing a compel at 0 Tychē

File: `chapter-2.4-tyche-points.typ`.

> Refuse → pay 1 Tychē Point.

Conflict: nothing says what happens if the player has none. It can only be answered by the table.

Suggested fix: add "If you have none, you can't refuse." or "…you may accept without gaining the point."

### M5. Versus odds table counts ties as half a win

File: `chapter-adversaries.typ`, Step 2.

> PC win chance: 81% / 72% / 62% / 50% / about 39% (Adversary rating +0 / +2 / +4 / +6 / +8)

Recomputed with one bonus die against no bonus dice and the Complication die retained: strict win chance is 79.1 / 69.7 / 58.8 / 47.3 / 35.9, and ties are 4.0–5.8 percent. The published row equals win plus half of ties (81.1 / 72.1 / 61.6 / 50.2 / 38.7). But the core says an exact tie gives neither side a win, Power or outcome, so a tie is not half a win.

Suggested fix: relabel the row "win or tie, ties split evenly", or replace it with strict wins and add a ties row.

### M6. Downtime project sizes: 8 or 12 versus 16 and 6

File: `chapter-3-module-d-downtime.typ`, D.5.

> Use an 8- or 12-segment clock … [table includes] Changing a region (C.6), 16; Study Toward an Advance, a 6-segment clock.

Conflict: the opening sentence gives two sizes and the table and option give four. 2.7 also says downtime projects "normally use 8- or 12-segment clocks", which is true of the list but not of Region projects.

Suggested fix: "Use an 8- or 12-segment clock, or 16 for a Region Truth (C.6)."

### M7. Success with Complication timing in Self-Repair and Protocol

File: `chapter-adversaries-part-2.typ`, 7.5 Self-Repair and 7.6 Protocol, against 7.8–7.13.

Dirty Trick, Covering Move, Scan, Lockdown and Bolt each say "including Success with Complication". Self-Repair says only "after the guardian succeeds on its assigned scripted action". The Kind-table rows and Adversary 6.3 treat both as plain success. Nothing is wrong, but a reader will wonder why one Special is silent.

Suggested fix: add "including Success with Complication" to Self-Repair, or add one general line in 7.7 that every "successful action" trigger includes it.

### M8. E.5 severity floor for a Standing string is unconfirmed

File: `chapter-3-module-e-factions.typ`, E.5.

> A string that costs −1 Standing is at least moderate.

Conflict: this is the only place a complication's severity is set by its content. It is not in 2.6 and was an open point in hand-edits file 13.

Suggested fix: confirm or delete. If kept, put it in 2.6's severity guidance so it is not a Module-only exception.

### M9. Negative-Edge PLAYTEST note compares against an unstated baseline

File: `chapter-2.6-resistance-harm-and-recovery.typ`, PLAYTEST comment.

> single-die negative Edge. Average cost at −2 rises from 2.44 to 2.67; at −3 it stays 2.67.

The 2.67 figure matches the Edge −2 table. The 2.44 is presumably the average under the previous negative-Edge rule, but no table or note says so, so it reads as a mismatch. Suggested fix: add "(previous rule)" after 2.44, or drop the old figure once the change is settled.

### M10. Quick Reference gaps and a wording mismatch

File: `chapter-7-appendix-a-quick-reference.typ`.

- No Weal spend table, Weal decay, or starting Woe, although the Weal and Woe tables are the most-used reference at the table.
- Running dry says "At tier 6, you are Taken Out within its scope and gain one Scar", which is consistent with 6.1 but does not repeat that finishing the causing action is still allowed (6.1 "Pay as you go").

Suggested fix: add a compact Weal and Woe block; optionally echo the "finish only the causing action" limit in the running-dry line.

### M11. Two different caps with similar names

Files: `chapter-2.4-tyche-points.typ`; `chapter-2.12-advancement.typ`.

> Refresh cap 3 + 1 per 3 Advances (2.12); Tychē cap Refresh + 3 (2.4).

Conflict: no contradiction, but "cap" is used for both a ceiling on Refresh and a ceiling on Tychē held. The second paragraph of 2.4 mentions both in one place.

Suggested fix: call them the Refresh limit and the Tychē ceiling.

---

## Low

### L1. Stale "kept pair" wording

Files: `chapter-2.3-character-creation.typ` line 85 (Specialisation PLAYTEST comment); `chapter-2.14-design-notes.typ` line 34 ("whether it changes the kept pair").

The Complication die is now always retained, so "the kept pair" no longer varies. Left unchanged on purpose in hand-edits file 11. The Glossary entry "Kept dice" and the core's "retained dice" are also two names for one thing.

Suggested fix: pick "retained dice" everywhere and rename the Glossary entry, or add "Retained dice" as a see-also.

### L2. Old rule named in a focus PLAYTEST comment

File: `chapter-6.6-social-focuses.typ`, line 34.

> // PLAYTEST: R1, was redundant with core Success at a Cost; …

Comment only, not printed. Suggested fix: change to "core Success with Complication" or delete the comment.

### L3. Pool descriptions drift between Chapter 1 and 3.2

Files: Chapter 1 terminology and 2.2.

Examples: Mētis "being caught" against "being caught or grabbed"; Pneuma adds "social pressure"; Psychē adds "madness from knowledge"; Chapter 1 lists "alacrity" under Mētis. Suggested fix: one canonical description per pool, quoted in Chapter 1 and referenced by 3.2.

### L4. Design Notes suggest Effort minimum 1

File: `chapter-2.14-design-notes.typ`. The note proposes a minimum Effort cost of 1; 2.4 uses a minimum of 0. This is a note about a possible change, not a conflict. Mark it clearly as a variant.

### L5. Faction rating labels differ between C.8 and E.2

C.8 names ratings +1 minor, +2 solid, +3 major, +4 dominant. E.2 names +1 Limited, +2 Established, +3 Strong, +4 Exceptional. Module E replaces C.8, so a table that mixes modules sees both. Suggested fix: use the E.2 labels in C.8.

### L6. Descriptor entries are formatted inconsistently

File: `chapter-4-descriptors.typ`.

- 2. Charismatic has a stray bullet before the first tag name ("- " on its own line).
- 16. Resolute lists tags inline ("Tags: My Word Is Iron;, I Know What I Stand For") and puts Tags before Suggested Instinct, unlike the other 23.

Suggested fix: bring both in line with the other entries. Check the rendered PDF for the stray bullet.

### L7. Playbook ★ count varies by playbook

Bellator has one ★ ability by name in the structural count; the other five have two. If that is intended balance, say so in 5.9; if not, check Bellator.

### L8. Legacy encounter budget is acknowledged as out of date

File: `chapter-adversaries.typ`, 5. It already states that P = 8 + party size is a historical benchmark and that Threat and Grit were not recalibrated. Not an inconsistency, but the Standard row says "PCs should win and take a Minor or Significant compromise" while the note says the numbers are not validated. Suggested fix: keep the flag; do not quote the table as a guarantee elsewhere.

---

## Checked and clean

Searches across the book sources (excluding drafts) found no remaining use of: Success at a Cost (except the comment in L2 and the sheet in H3), "miss by" (sheet only), "Tag Power + 0", "ordinary-failure Woe", "exceptional doubles", failure Woe, or the old 12 / 7 / 5 pacing. The Adversaries chapter's Woe economy (6.3, 6.4) now agrees with 2.9 and 10.x on "no automatic failure Woe".

## Suggested order of fixes

1. H3 (character sheet) and H1 and H2 (Adversary examples), since players read these first.
2. H4 and L2 (stale terms), a few words each.
3. M1–M4 and M11, which need a design decision before wording.
4. The rest as a cleanup pass.
