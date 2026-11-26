# Pending hand edits: complication-die resolution

Branch: `feat/complication-die-resolution`. Last source commit when compiled: `09a91fc`.

These edits are **not applied**. Each entry gives the file, its blob SHA on the branch when read, the exact text to find and the replacement. Check the blob SHA before editing; if it has changed, re-read the file. Terminology follows Core Rules 2.5 (`chapter-2.2-core-resolution.typ`): "success" includes Clean Success, Success with Complication and Critical Success, and every total below Difficulty is a Failure.

No Typst build or rendered-page check has been done for any of these.

## 1. Weird focuses

File: `docs/2d12System/chapter-6.8-weird-focuses.typ` (blob `1f7eee4`). Ward the Threshold, tier 2b, Benefit. Ruling: Option A (the complication applies under normal rules). Do not touch the soft hyphens in the Regeneration ability name.

Find:

```
(Success at a Cost counts)
```

Replace with:

```
(a Success with Complication counts as a success; its complication applies under the normal rules)
```

## 2. Stealth and precision focuses

File: `docs/2d12System/chapter-6.4-stealth-and-precision-focuses.typ` (blob `73c9048`). Called Shot, tier 1, Trigger. Ruling: Option A (suppression still happens and the complication applies normally).

Find:

```
including Success at a Cost.
```

Replace with:

```
including a Success with Complication.
```

## 3. Adversaries

File: `docs/2d12System/chapter-adversaries.typ` (blob `838daaf`). Success with Complication now generates the same Power as a Clean Success, so these are rule changes, not only renames.

3a. Flat Tag Power bullet. Find:

```
a win gives 2 Power plus margin, and a Success at a Cost gives 1
```

Replace with:

```
a success gives 2 Power plus margin, clean or with a complication
```

3b. Discovered weakness bullet. Find:

```
a Success or Success at a Cost, never a Failure
```

Replace with:

```
any success, never a Failure
```

## 4. Adversaries part 3

File: `docs/2d12System/chapter-adversaries-part-3.typ` (blob `21d9d3e`). Both Specials: "succeeding" already includes Success with Complication.

4a. Impede Special. Find:

```
succeeding on its assigned scripted action, including Success at a Cost, the bearer
```

Replace with:

```
succeeding on its assigned scripted action, the bearer
```

4b. Gain Position Special. Find:

```
succeeding on its assigned Maneuver, including Success at a Cost, spend 1 Woe
```

Replace with:

```
succeeding on its assigned Maneuver, spend 1 Woe
```

## 5. Module E.7 file

File: `docs/2d12System/chapter-3-module-e.7-favours.typ` (blob `7cad7ab`). Covers E.7 to E.14. Ruling: Option A, faction rolls use the Complication die and the core outcome table, with complications resolved narratively and no off-screen Woe.

5a. E.10, Organizational resolution, outcome bullets. Find these three lines:

```
- Success: Tag Power + 1, plus 1 per full 3 points over the target.
- Success at a Cost (miss by 1–3): Tag Power + 0, and a concrete setback appropriate to the action.
- Failure (miss by 4+): no Power and no progress; introduce a relevant setback.
```

Replace with these two lines:

```
- Success (any total that meets the target): Tag Power + 1, plus 1 per full 3 points over the target. A Critical Success adds 1 Power.
- Failure (total below the target): no Power and no progress.
```

5b. The Doubles bullet. Find:

```
- Doubles follow the core's success/cost/failure twist rules, including double 12s and double 1s.
```

Replace with:

```
- Faction rolls use the Complication die and the core outcome table (Core Rules @core-outcomes). A Success with Complication or Failure with Complication introduces a concrete setback appropriate to the action, resolved narratively. A Failure with a Benefit gives a fictional opening. Matching dice are critical: a Critical Success adds 1 Power, and a Critical Failure brings a major setback.
```

5c. Organizational exception paragraph. Find:

```
Resolve twists narratively; there is no off-screen Woe buy-off.
```

Replace with:

```
Resolve complications narratively; Woe buyoff, mitigation and Resistance don't apply off-screen.
```

5d. E.11, Woe in faction scenes, two changes.

Find:

```
failure and Success at a Cost follow
```

Replace with:

```
failure and Success with Complication follow
```

Then delete this clause (failure no longer grants Woe):

```
, or ordinary-failure Woe for losing a versus test
```

The sentence then ends: no unrelated GM move, automatic injury or extra Disposition loss.

5e. E.13, Reed Quay example, two changes.

Find:

```
Dice of 7 and 9 total 16
```

Replace with (the Complication die is the lower die, so there is no setback):

```
Dice of 7 (the Complication die) and 9 total 16, a Clean Success
```

Find (arithmetic error that predates this branch: 18 vs 15 is 3 over, which gives 1 + 1 = 2 Power; 18 vs Easy 12 gives 3 Power):

```
would produce 3 Power
```

Replace with:

```
would produce 2 Power
```

## 6. Quick Reference

File: `docs/2d12System/chapter-7-appendix-a-quick-reference.typ` (blob `06f746d`). The file is otherwise consistent with the Complication-die rules. Approved: all four edits below.

6a. Section 3, Setup, step 2. Settles the Edge audit: the core (`chapter-2.10-conflict-system.typ`, blob `238ab92`) says highest Edge in that skill's pool. Find:

```
Roll 2d12 + Disposition skill + highest Edge in its pool.
```

Replace with:

```
The leader normally rolls 2d12 + Disposition skill + highest Edge in that skill's pool.
```

6b. Section 1, Complications and Risk. Insert a new paragraph after this anchor line, with a blank line before the `*Risky 1–3, optional:*` paragraph.

Anchor:

```
Protected payments remain excluded (Core Rules @core-doubles).
```

Add after it:

```
*GM-bought complication:* After a roll resolves and before the player responds, the GM may spend Woe to add one complication to it, whatever the outcome: 1 for minor, 2 for moderate, 3 for major. At most one per roll. State the consequence and severity first; it must arise from the established danger or situation. Buyoff, mitigation and Resistance apply normally, and the Woe isn't refunded if the player buys it off. In scripted conflicts the usual limits apply (Core Rules @core-costs-failures-complications).
```

6c. GM Strip table. Add this row after the `[NPC complication], …` row:

```
[GM-bought complication], [One per roll, added after it resolves and before the player responds: 1/2/3 Woe for minor/moderate/major. State the consequence and severity first. Normal buyoff, mitigation and Resistance; the Woe isn't refunded if bought off. Conflict limits still apply (Core Rules @core-doubles; @core-costs-failures-complications).],
```

6d. Section 3, Conflict failure and costs. Removes a table whose "Ordinary-failure Woe" column is None in every row. Find:

```
#table(columns: (72%, 28%),
  table.header([Situation], [Ordinary-failure Woe]),
  [Failed independent action], [None],
  [Versus loss, exact tie or trump], [None],
)
An ordinary failed action grants no additional unrelated GM move, automatic injury or extra Disposition loss.
```

Replace with:

```
A failed independent action, a versus loss, an exact tie or a trump grants no automatic Woe, unrelated GM move, automatic injury or extra Disposition loss.
```

## 7. Glossary (proposed, not yet approved)

File: `docs/2d12System/chapter-8-appendix-b-glossary.typ` (blob `f3971e1`). Only entries A to M were read. Wording below is proposed and still needs approval.

7a. Invoke entry. Your ruling is that Invoke rerolls the Risk die. Find:

```
unless explicitly permitted. The +2 affects only the total
```

Replace with:

```
unless explicitly permitted; Invoke is permitted and rerolls it, and the new result replaces the old. The +2 affects only the total
```

7b. Complication entry. Find:

```
before choosing a response. Original-severity Woe buyoff
```

Replace with:

```
before choosing a response. The GM may add one Woe-bought complication per roll after it resolves and before the player responds, paying 1/2/3 Woe for minor/moderate/major. Original-severity Woe buyoff
```

7c. Compel entry. Find:

```
It changes the situation, not an automatic numerical penalty or a resolved success.
```

Replace with:

```
It changes the situation, not an automatic numerical penalty or a resolved success. An accepted compel's complication has no severity and can't be bought off, mitigated or Resisted; the GM gains no Woe for it.
```

## Not yet checked

- Glossary entries N to Z (the file was truncated at Modifier), including Success with Complication, Woe, Weal, Risky and Smooth Recovery.
- Branch version of the Example of Play.
- Furcifer (Opportunist), Interlocutor (Smooth Recovery) and `chapter-2.6.5-recovery.typ`.
- Modules C, D and F, the character sheet, `chapter-2.3-character-creation.typ`, the design pillars and the epigraph.
- Branch-wide search for: miss by, Tag Power + 0, ordinary-failure Woe, doubles, Threat.
- Out of scope unless ruled otherwise: Testament of Dust setting files, `drafts/module-stakes-and-checks.typ`, `docs/playtest/engine_v2/resolution.py`, design and audit notes, CHANGELOG.
