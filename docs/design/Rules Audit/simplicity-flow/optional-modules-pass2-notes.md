# Optional Modules Pass 2: Simplicity and Flow (D–F)

Scope:
- Module D (Downtime)
- Module E (Factions, Standing & Obligations), including E.1A (Starting Cluster) and E.7–E.14 (`chapter-3-module-e.7-favours.typ`)
- Module F (Inquiry & Revelation)

This pass starts from the state after optional modules pass 1 (A–C, applied).

Patch: `review/optional-modules-pass2.patch` (5 files, 77 insertions, 77 deletions). **Applied** as is, including the PLAYTEST defaults.

## Size

| File | Before | After | Change |
|---|---:|---:|---:|
| `chapter-3-module-d-downtime.typ` | 2,170 | 2,047 | −123 |
| `chapter-3-module-e-factions.typ` | 2,120 | 1,962 | −158 |
| `chapter-3-module-e.1a-starting-cluster.typ` | 1,079 | 939 | −140 |
| `chapter-3-module-e.7-favours.typ` | 2,806 | 2,660 | −146 |
| `chapter-3-module-f-inquiry-and-revelation.typ` | 1,959 | 1,751 | −208 |
| **Modules D–F total** | 10,133 | 9,358 | −775 |
| Full book, pages | 115 | 115 | 0 |

## Main Pattern

These modules repeat core limits that already apply ("no extra scripted turn", "not a second Disposition", "no free Help") in long, hedged sentences, sometimes two or three times. The patch states each limit once, briefly, with a pointer to the core section. Edit-pass meta text ("this pass does not invent a currency choice", "the core's unresolved Woe ruling… remains open") is replaced with rules or removed.

## Book-Wide Changes in D–F

- **References.** Bare core references (§9.2, §6.6, §10.7 and so on) become "Core Rules §x", following the Introduction's convention. A list keeps one prefix ("Core Rules §10.6, §10.12"). Module-internal references (D.4, E.10, F.6) stay as they are, and "(§F.6)" becomes "(F.6)".
- **Spelling.** favor → favour (the E.7 heading becomes "Favours and Obligations"), fulfillment → fulfilment, defenses → defences. No other chapter used "favor".
- Not changed: the book mixes -ize and -ise ("authorize" and "authorise", "organization"). Tell me if you want one form throughout.

## Changes by File

### Module D — Downtime

- Field rests: one sentence that keeps Core Rules §6.5 rests and Module B recovery separate, and says reaching a haven isn't a reset.
- World Turn: "The cadence with Module D is between adventures" is cut, because E.10 already says so.
- Stay clock filled: the undefined "Debt complication" becomes the Truth *In Debt to the Haven* (Flag 1).
- Hospitality: two sentences become one.
- Success at a Cost / Failure: tightened.
- Scenes that become conflicts: shortened to four points: may need a scripted conflict (§10.1); use §10.5–10.7, not Standard 15 and the Effect menu; Checks and Help grant no extra turn; no Disposition for each contributor.
- Recuperate: "(the 4th rest already does)" is removed; the limits are listed once.
- Prepare: keeps named opposition, one category per stay, concrete preparation, the cap of 3, and no renaming; the rest is cut.
- D.6a reputation bullets: tightened.
- Example: "the stay's week does not replace that procedure" is cut.

### Module E — Factions

- Opener: "Its numbers are playtest values."
- The replacement note becomes one sentence and now also says that E.1A replaces C.8.
- Assets: the second sentence, which repeated the first, is cut.
- "When the request is a conflict": shortened; it points to Core Rules §10.7 and §10.12–10.13.
- Active Help: an ally pays from its own pools; an ordinary NPC has no pools (Core Rules §6.1); Qualities aren't pools.
- Accompanying allies: participant or asset, never both; no Disposition of its own; Core Rules §10.9.
- Backing: one sentence.

### E.1A — Starting Cluster

- The duplicate "don't build a second cluster" is cut; the E.1 restatement is trimmed.
- Standing guidance bullets (L23–28) are tightened.
- "Starting history, not a forced resolution" becomes "The incident is history", matching C.8's wording.
- **Pacing table corrected.** The old averages left out Success at a Cost, which E.10 says gives 1 Power on a miss by 1–3. The patch recomputes the table for 2d12 + Quality against Standard 15. Power is 1 + ⌊margin ÷ 3⌋ on a hit and 1 on a miss by 1–3. Doubles and opposition are ignored. Turns are exact expected values with overflow discarded. Marked PLAYTEST in the caption ("Pacing (playtest)").

| Quality | Old avg | New avg | Old turns 8 / 12 | New turns 8 / 12 |
|---|---:|---:|---|---|
| 0 | 0.65 | 0.89 | ~12 / ~18 | ~9 / ~14 |
| +1 | 0.83 | 1.06 | ~10 / ~14 | ~8 / ~12 |
| +2 | 1.04 | 1.25 | ~8 / ~12 | ~7 / ~10 |
| +3 | 1.27 | 1.46 | ~6 / ~9 | ~6 / ~9 |
| +4 | 1.52 | 1.69 | ~5 / ~8 | ~5 / ~8 |

Projects finish faster than the old table suggested, mostly at low Qualities. If the old pacing was intended, raise the clocks rather than the table (see Flag 2).

### E.7–E.14 — Favours, Strain, World Turn, Conflict

- Agreed costs: shortened to "a favour grants its stated service", plus the protected-payment rule (Core Rules §10.7).
- Played conflicts (L40): one sentence with Core Rules §10.6, §10.12.
- **E.9 Strain:** the duplicate "declare it and mark Strain before resolving" is removed; the Timing paragraph covers it.
- Shared Disposition (E.11): tightened.
- **Stale line removed:** "The core's unresolved Woe ruling for losing versus tests remains open." Core Rules §10.7 now settles it: losing a versus test gives no ordinary-failure Woe. The paragraph now says so, and keeps Specials, hazards and Risky rolls.
- Limited harm (E.12): tightened.
- E.13 worked example checked: the Qualities total 9; 7 + 9 + 2 = 18 against 12 gives 3 Power, and against 15 gives 2. No change.

### Module F — Inquiry & Revelation

- The opener is shortened.
- "(§F.6)" becomes "(F.6)".
- Found clues: one sentence of limits; never gate the guaranteed core clue.
- Payment: shortened; points to Core Rules §6.1.
- **Edge Insight renamed Leverage** (see Flag 3). Its case-long extension now has a cost: 1 more Power on a Probe, or 1 more pool point on a Buy (PLAYTEST default, replacing "this pass does not invent a currency choice").
- Benefit scope: one sentence.
- Contacts / Spotlight / Foresight: tightened.
- **Help on a Buy:** the old text said "+1 point of discount per helper" but allows only one helper. It now reads "One ally may Help a Probe as normal, or help a Buy by lowering its cost by 1 (minimum 1)."
- Boosted-skill recovery, Probe caps, case clock and scene splitting: tightened.

## Rule Complexity Flags

| # | Where | Issue | Suggestion |
|---|---|---|---|
| 1 | D.3 | "A Debt complication appears" when the stay clock fills, but "Debt complication" is never defined. | Default in patch: the party gains the Truth *In Debt to the Haven*, removed by a Sustain endeavour or agreed payment, so the existing Truth rules apply. PLAYTEST. |
| 2 | E.1A pacing | The corrected table gives a +0 faction a filled 8-clock in about 9 turns, not 12. | Keep the clocks and accept faster pacing, or make the default project clock 10 to restore the old feel. Playtest either way. |
| 3 | F.3 | "Edge" was both an Insight and a pool. | Renamed **Leverage** in the patch. "Angle" would also work. |
| 4 | F.3 | The cost of the case-long extension was unspecified. | Default in patch: 1 more Power (Probe) or 1 more pool point (Buy). PLAYTEST. |
| 5 | F.4 | "Burning one gives +1 Power" uses the tag-burning term. I checked it against Core Rules §3.4, and it's consistent. The pass 4 Suppress rename applied only to Weaken. | No change. |
| 6 | E.9 | At most one extra major action per turn, which must Strain the primary Quality; E.13 shows Treasure Strained at +2. Recovery needs a full idle turn, so a faction that surges twice in a row is locked out. | Fine as a brake. If it feels harsh in play, let Strain clear at the end of any turn where that Quality wasn't Strained again. |

## Render Check

Both versions compiled (with placeholder art). Book: 115 pages before and after. Pages 44–56 (Modules D–F) were rendered and inspected: no overflow, clipped table cells or broken headings. The new pacing table fits its column.

## Reminder

`drafts/README.md` credits C.7 to *Entanglements* (Ewen Cluney) and C.8/E.1A to *Long Knives* (Levi Kornelsen), and asks for a licence check and an acknowledgements credit before publishing.
