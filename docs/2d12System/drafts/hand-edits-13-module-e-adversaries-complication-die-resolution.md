# Pending hand edits, batch 13: Module E.5 and E.11/E.13, adversaries

Branch: `feat/complication-die-resolution`. Continues `hand-edits-12-design-pillars-complication-die-resolution.md`.

These edits are **not applied**. Check the blob SHA before editing; if it has changed, re-read the file. Terminology follows Core Rules 2.5 and 2.6 (`chapter-2.2-core-resolution.typ`).

No Typst build or rendered-page check has been done for any of these.

Source: branch-wide searches for "miss by", "Tag Power + 0", "ordinary-failure Woe", "doubles" and "Success at a Cost". Code search only sees the default branch, so each hit was matched against the branch blob SHA. These four files are unchanged on the branch, so the hits are live.

## 1. Module E.5 (Seeking Aid)

File: `docs/2d12System/chapter-3-module-e-factions.typ` (blob `0ace588`).

Ruling: Option A. A Success with Complication generates full success Power, so the old exception that secured the help whatever the Power no longer has a reason to exist. Power buys the help as normal. The faction's string is the complication and follows Core Rules 2.6.

1a. Outcomes sentence. Find:

```
For that single request check, use normal core outcomes, Power, doubles, and currencies (Core Rules @core-outcomes).
```

Replace with:

```
For that single request check, use normal core outcomes, including the Complication die, Power and currencies (Core Rules @core-outcomes).
```

1b. Success and Failure paragraph. Find:

```
On a Success, spend Power on that Effect; the help is secured only when the Power covers its price. #strong[Success at a Cost grants the help with strings.] As an exception to the core rule that unbought Effects don't happen, the agreed help is secured whatever the Power. In place of the normal consequence-or-Woe choice, the faction attaches one string: an obligation recorded as a favour owed (E.7), a delay that matters, or −1 Standing. Any Tag Power or Effort can still buy extras. Failure does not secure the help and produces an appropriate move. A failed request cannot be repeated unchanged: introduce materially new terms or circumstances.
```

Replace with:

```
On a Success, spend Power on that Effect; the help is secured only when the Power covers its price. #strong[A Success with Complication attaches a string.] The string is the complication and follows Core Rules @core-doubles. The faction names it before any response: an obligation recorded as a favour owed (E.7), a delay that matters, or −1 Standing. A string that costs −1 Standing is at least moderate. Woe buyoff, Power mitigation and Resistance work as usual, and reducing a string to none means it doesn't happen; a reduced string is a smaller version (a shorter delay, a narrower favour). Failure does not secure the help. Resolve the failure outcome (Core Rules @core-outcomes). A failed request cannot be repeated unchanged: introduce materially new terms or circumstances.
```

Open point (confirm): "A string that costs −1 Standing is at least moderate" is a proposed severity floor, not an existing rule. Remove it if you would rather leave severity to the GM.

## 2. Module E.7 file (E.11 and E.13)

File: `docs/2d12System/chapter-3-module-e.7-favours.typ` (blob `7cad7ab`). This is separate from the E.10 organizational-resolution edits in `hand-edits-complication-die-resolution.md`.

2a. E.11, Woe in faction scenes. Find:

```
Inside scripted conflicts, failure and Success at a Cost follow Core Rules @core-costs-failures-complications: no unrelated GM move, automatic injury or extra Disposition loss, or ordinary-failure Woe for losing a versus test.
```

Replace with:

```
Inside scripted conflicts, failure and Success with Complication follow Core Rules @core-costs-failures-complications: no unrelated GM move, automatic injury or extra Disposition loss, or Woe for losing a versus test.
```

2b. E.13, Reed Quay example. The example needs the Complication die to classify the outcome. The totals and Power are unchanged: 18 against Easy 12 is 6 over, so 3 Power. Find:

```
Dice of 7 and 9 total 16; +2 gives 18, producing 3 Power.
```

Replace with:

```
The Complication die shows 7 and the other die 9, a Clean Success: they total 16; +2 gives 18, producing 3 Power.
```

## 3. Adversaries chapter

File: `docs/2d12System/chapter-adversaries.typ` (blob `838daaf`). Four edits.

3a. Step 1, Flat Tag Power. Find:

```
a win gives 2 Power plus margin, and a Success at a Cost gives 1.
```

Replace with:

```
a win or success gives 2 Power plus margin, and a loss or failure gives none.
```

3b. Step 4, Discovered weakness. Find:

```
a Success or Success at a Cost, never a Failure or a lost versus roll.
```

Replace with:

```
any success, never a Failure or a lost versus roll.
```

3c. Step 2, benchmark sentence. Find:

```
versus totals, exceptional doubles and ability-created doubles follow Core Rules @core-doubles and @core-scripting-volleys.
```

Replace with:

```
versus totals, the Complication die, critical outcomes and ability-created matches follow Core Rules @core-outcomes and @core-scripting-volleys.
```

3d. Step 2, PC win-chance table (numbers). The old figures assumed a PC with one bonus die keeps the best two of three dice. The core now requires keeping the Complication die plus the highest other die, which lowers the odds. Recomputed for a PC with Skill +4 and one bonus die against 2d12 plus the adversary rating and no bonus dice, with exact ties split evenly (this reproduces the old 85 / 77 / 67 / 56 / about 45 figures). Find:

```
[PC win chance], [85%], [77%], [67%], [56%], [about 45%],
```

Replace with:

```
[PC win chance], [81%], [72%], [62%], [50%], [about 39%],
```

Before the numbers (strict win, tie): +0 83.2% / 3.4%, +2 74.9% / 4.4%, +4 64.8% / 5.2%, +6 53.6% / 5.7%, +8 41.9% / 5.8%. After the change: +0 79.1% / 4.0%, +2 69.7% / 4.9%, +4 58.8% / 5.6%, +6 47.3% / 5.8%, +8 35.9% / 5.6%.

## 4. Adversaries part 3

File: `docs/2d12System/chapter-adversaries-part-3.typ` (blob `21d9d3e`). Five Specials still say "including Success at a Cost". Replace that phrase with "including Success with Complication" in each.

4a. 7.8 Dirty Trick. Find:

```
After succeeding on its assigned scripted action, including Success at a Cost, the bearer may spend 1 Woe to Impede
```

Replace with:

```
After succeeding on its assigned scripted action, including Success with Complication, the bearer may spend 1 Woe to Impede
```

4b. 7.9 Covering Move. Find:

```
After succeeding on its assigned Maneuver, including Success at a Cost, spend 1 Woe to grant Gain Position
```

Replace with:

```
After succeeding on its assigned Maneuver, including Success with Complication, spend 1 Woe to grant Gain Position
```

4c. 7.10 Scan, Reveal option. Find:

```
After its own successful assigned Maneuver, including Success at a Cost, reveal
```

Replace with:

```
After its own successful assigned Maneuver, including Success with Complication, reveal
```

4d. 7.11 Lockdown. Find:

```
After its successful assigned Maneuver, including Success at a Cost, an able Guardian may spend 2 Woe
```

Replace with:

```
After its successful assigned Maneuver, including Success with Complication, an able Guardian may spend 2 Woe
```

4e. 7.12 Bolt. Find:

```
After its successful assigned Maneuver, including Success at a Cost, spend 2 Woe to withdraw
```

Replace with:

```
After its successful assigned Maneuver, including Success with Complication, spend 2 Woe to withdraw
```

## Verify before applying

- `chapter-adversaries-part-2.typ`: the branch blob (`d007e77`) differs from the default branch, so it was presumably converted earlier. The default-branch text still has stale wording: 7.5 Guardian Self-Repair says "including Success at a Cost"; 6.4 Woe Economy lists "eligible independent failures (+1)" and "ordinary-failure Woe"; 6.3 says "Independent Success at a Cost follows ...". Re-read the branch version.
- `chapter-8-appendix-b-glossary.typ` entries Doubles, Complication, Effort and Woe, and the Quick Reference: the default branch text is stale; check the branch versions against the edits in files 1 and 2.
- `chapter-2.9-weal-and-woe.typ` and `chapter-2.10-conflict-system.typ`: the default branch still has the old Woe sources ("failures (+1)"), the "Ordinary Failure" section and "Success at a Cost, if the player chooses Woe". The branch blobs differ, so check them too.

## Not yet checked

- Branch re-read of the verify list above.
- Other places that quote the old 12 / 7 / 5 pacing.
- Housekeeping deferred: character sheet layout and footer date; CHANGELOG, review notes and patch files; setting files (Testament of Dust, Aetas Obscura) and `drafts/module-stakes-and-checks.typ`.
- Typst build and rendered-page validation.
