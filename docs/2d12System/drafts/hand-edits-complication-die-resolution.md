# Pending hand edits: complication-die resolution

Branch: `feat/complication-die-resolution`. Last commit when compiled: `09a91fc`.

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

## Not yet checked

- Branch versions of the Quick Reference, Glossary and Example of Play.
- Furcifer (Opportunist), Interlocutor (Smooth Recovery) and `chapter-2.6.5-recovery.typ`.
- Modules C, D and F, the character sheet, `chapter-2.3-character-creation.typ`, the design pillars and the epigraph.
- Branch-wide search for: miss by, Tag Power + 0, ordinary-failure Woe, doubles, Threat.
- Out of scope unless ruled otherwise: Testament of Dust setting files, `drafts/module-stakes-and-checks.typ`, `docs/playtest/engine_v2/resolution.py`, design and audit notes, CHANGELOG.
