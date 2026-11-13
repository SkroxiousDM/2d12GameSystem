# Core Rules Pass 4: Complexity Flags Applied

Scope: the rule complexity flags from passes 1–3, applied after the pass 3 patch.

Your rulings:

- Rules that change the math are applied now, and each one has a `// PLAYTEST:` comment.
- The suggested names are used.
- Only Create can make a Truth outlast the scene.
- "Dangerous" Truths now have a definition.

Patch: `review/core-rules-pass4.patch` (30 files, 146 insertions, 168 deletions). It has been applied to the chapters.

## Size

| Measure | Before | After |
|---|---:|---:|
| Words, all `.typ` files | 64,899 | 64,726 |
| Full book, pages | 121 | 118 |

## Flags and Results

### Pass 1

| # | Flag | Result |
|---|---|---|
| 1 | Double 1s ambiguity | No change. Pass 1 already states the ruling plainly: a success on double 1s gets both its complication and +1 Power. |
| 2 | Two Help procedures | Setup Help is renamed **Backing**, and the text says plainly that Backing is not Help. Updated in §2.2, §10.2, §10.9, §13, §14, Factions, Adversaries §5 and the quick reference. The stale "pool-point cost remains an open ruling" lines are removed, because core and the quick reference already say Backing is free. |
| 3 | Undefined "dangerous scene Truths" | §8 now defines them: a scene Truth with lethal stakes or a listed Danger. It gives +1 Woe per scene. §9.2 points to §8. |
| 4 | Refresh-for-abilities in §4.1 | The starting abilities and ★ cost bullets move to §3.6. §4.1 keeps the base, the cap, artifacts, the minimum and buy-back, plus a pointer to §3.6. Focus Rules ★ now cites §3.6. |
| 5 | "Borrowed from" column in §1 | The column is removed and replaced by the line "Where each idea comes from: §14". §14 already has the full source table. |
| 6 | Status stacking (PLAYTEST) | New rule: **one tier above the higher of the existing and incoming tiers**. See note A. |
| 7 | Truth duration | §8 states that a Truth lasts for the scene, and that only Create can pay +1 Power to make it outlast the scene. |
| 8 | Tag-cap exception text | Removed from §2.1 and the quick reference. Signature Style, Gift and Second Trait already print the +3 rule, and so does Focus Rules §1. |

### Pass 2

| # | Flag | Result |
|---|---|---|
| 1 | Hardened Advance in §6.5 | Moved to the §12.2 Advance list and renamed **Quick Recovery**. The wilderness Focus "Hardened" keeps its name. The quick reference is updated. |
| 2 | Two meanings of "Burn" | The Weaken effect now **Suppresses** a tag. Called Shot and Adversaries §1 and Step 4 are updated. Burning your own tag (§3.4, Modules B and D) keeps the word "burn". |
| 3 | Resistance thresholds | Escape Artist, Trap Sense and Unshake-able now say "on a Resistance result of 5+". The thresholds paragraph and its example shrink to 2 sentences. |
| 4 | Negative-Edge Resistance (PLAYTEST) | Negative Edge always rolls 1d12. At −2 or lower, the cost is 1 higher (maximum 3). The second table is cut from 4 rows × 5 columns to 3 × 4. See note B. |
| 5 | Scar bookkeeping (PLAYTEST) | One per episode, One per event and Scar Recorded become 1 rule: at most one Scar per scene, and a status that stays at tier 6 gives no further Scar. The no-splitting rule is kept. |
| 6 | Running-dry recovery category | The category is now Depletion by default, and only the source can make it Injury or Affliction. The choice at the table is removed from §6.2 and §6.5. |
| 7 | Refresh rules belong in §3.6 | Done (see pass 1, flag 4). |

### Pass 3

| # | Flag | Result |
|---|---|---|
| 1 | §10.18–§10.21 are not core rules | Interpose, Guardian Self-Repair and Guardian Protocol are now **Adversaries §6.13–6.15**. Their references now read "Core Rules §10.x". Domain Scope is merged into **Adept §8.1** and covers the Occultist. `chapter-2.10-guardian-domain-clarifications.typ` is deleted, and its include is removed. References are updated in the Bulwark role, the Guardian Protocol trait, the Self-Repair Special, "Special procedures" and the quick reference heading. |
| 2 | Interpose name clash | The Focus ability (combat Focuses 2b) is renamed **Cover**. |
| 3 | §10.6 exceptions name specific abilities | The Called Shot, Cheap Shot and free Extra Feat sentence is cut. Cheap Shot's text now says it applies "on that Attack only". Called Shot, Cleave, Light Fingers and Nothing Is Off-Limits already state their limits. |
| 4 | §10.7 catch-all | "Other Core Rules in Conflicts" and "Free, Immediate and Automatic Effects" move to a new **§10.18 Conflict Limits Reference** at the end of §10. §10.7 keeps costs, failures, doubles, explicit risks and protected payments, and points to §10.18. The references in §3.5, §4, §7 and §8 are retargeted. Protected payments stay in §10.7, because about 25 references point there. |
| 5 | Feint versus Maneuver (PLAYTEST) | It is now a **versus** test. This gives a one-line rule, now printed under the table: "Feint beats Defend and loses to Attack; two Attacks, two Defends or two Maneuvers are independent; every other pair is versus." The quick reference table and §14 are updated. |
| 6 | Compromise negotiation (PLAYTEST) | The 8 steps become 4: find the grade, agree one package, settle injuries, record. |
| 7 | Rotation rules | The 4 bullets become 1 sentence. A check with 3 participants showed that both limits are needed: without "nobody acts in two volleys in a row", the last actor of a round could open the next one. The rule is only reworded, so it has no PLAYTEST comment. |
| 8 | Open `// PLAYTEST:` comments | No change. |
| 9 | Pacing target | No change. |
| 10 | §11 repeats the §4.1 Refresh cost | "Creation extras" is cut to 1 line that points to §3.6. |

### Small fixes found along the way

- §10.15, step 20 pointed to §10.7 for layer recovery. It now points to §6.5.
- §6.5 "not a general reset" pointed to a section that no longer covers it. The reference is removed.

## Note A: Stacking Departs From the Pass 1 Suggestion

The pass 1 suggestion was "+1 tier, or +2 if the new hit is tier 3 or higher". I checked it against the old rule (existing + new − 1, minimum +1) for every existing tier from 1 to 5 and every incoming tier from 1 to 6:

| Rule | Same as old | Largest drop | Cases ending below the incoming hit alone |
|---|---:|---:|---:|
| Pass 1 suggestion | 21 of 30 | −3 tiers | 6 |
| One above the higher | 22 of 30 | ±1 tier | 0 |

With the pass 1 suggestion, a heavy hit on someone already hurt could leave them better off than the same hit on a healthy character. The rule I used is just as short and stays within 1 tier of the old results.

## Note B: Negative Edge Departs From the Pass 2 Suggestion

The pass 2 suggestion added +1 cost for each step below −1. That makes costs of 4 or more possible, and raises the average cost at −3 from 2.67 to 4. The rule I used caps the cost at 3:

| Edge | Old average cost | New average cost |
|---|---:|---:|
| −1 | 2.00 | 2.00 |
| −2 | 2.44 | 2.67 |
| −3 | 2.67 | 2.67 |

The double-12 result was already under 1% at negative Edge. Now it can't happen at all, because only one die is rolled.

## Playtest Checklist (New Comments)

- §5.1 stacking: heavy repeated hits in seeded batches.
- §6 negative Edge: how often stacked penalties reach −2.
- §6.3 Scars: long ordeals that span several scenes.
- §10.5 Feint versus Maneuver: check that Maneuver doesn't become the safe answer to every Feint.
- §10.13 Compromise: check that the 4 steps still record every cost and who pays it.

## Render Check

The full book compiles with no errors: 118 pages, down from 121 (art replaced by placeholders, default fonts). I checked these pages:

- §1 and §3.6–4.1
- §6 negative Edge
- §6.2–6.3
- §8–9
- §10.5–10.6
- §10.12–10.13
- §10.17–10.18
- §12
- Adversaries §6.13–7
- Adept §8
- Quick reference

There is no clipping or overlap. The negative-Edge table header "Cost at −2 or lower" wraps onto 2 lines, which reads fine.

## Not Changed

- File name: `chapter-2.10-area-and-interpose.typ` now holds Area Effects and the new §10.18. Renaming it to `chapter-2.10-area-and-limits.typ` would also mean editing the include, so I left it for your call.
- Cheap Shot's wording: it still says "Create a story tag". The core rules call these Truths, so this is worth a look in the Focus pass.
