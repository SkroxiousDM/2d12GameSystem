# Open Balance Flags Review

Status: **applied as PLAYTEST changes** on branch `review/simplicity-flow` (see `balance-flags-playtest.patch` and the Decisions section).

This review covers:
- **Generic Playbooks:** B2 Crowd Work ★, B3 Weather Sense ★, B6 Master of the Field, B7 Focused Channel.
- **Generic Focuses:** B6 Borrowed Might ★, B7 overlaps with playbook abilities.

Method: a seeded simulation (`balance-flags-sim.py`, seed 20261113, 400,000 trials per cell; the duel model uses 100,000), plus side-by-side comparison with peer abilities. The raw output is in `balance-flags-results.json`.

## Summary

| Flag | Finding | Recommendation |
|---|---|---|
| PB B2 Crowd Work ★ | +1 Disposition per successful Attack is worth about the same as a flat **+1 starting Disposition**. That's the same as the non-★ Brutal, but in a narrower scope. | **Drop ★.** Keep the scope. |
| PB B3 Weather Sense ★ | One Truth per session (worth about 2 Power) is the same as the non-★ Network. | **Drop ★**, or keep ★ and add a rider (see below). |
| PB B6 Master of the Field | One Difficulty step is worth about **one bonus die**, but it's permanent and outside the bonus-die cap. | Keep it. **Narrow the field** to about one skill's width. |
| PB B7 Focused Channel | It saves about 1 Pneuma per working; at 12 workings a day, that's half the Adept's daily budget. A base working cost of 2 runs the Adept dry. | Keep base cost 1. If Adepts overshadow other playbooks, **limit Focused Channel to minor and significant workings**. Don't adopt base cost 2. |
| FO B6 Borrowed Might ★ | A guaranteed 4 Power matches the top 20% of rolled results at Standard. That's fair for 3 Woe. **Gap:** for an Adept with a full Domain, nothing stops it from being a second Ascendant. | Keep the 4 Power. **Cap the scope at Dramatic** (no Heroic workings). |
| FO B7 Overlaps | Of the 7 listed pairs, 2 aren't true duplicates. | Give a **small rider** to Bypass, Trap Sense, Interrogator, Bane and Monster Lore. Change the sidebar rule. |

## A. Difficulty Steps vs Bonus Dice (Master of the Field)

These are independent tests. Success at a Cost counts as 1 Power, and doubles add Power. Each cell shows success % / mean Power.

| Roll | Base | One step | One bonus die | Two steps |
|---|---|---|---|---|
| +4 vs Standard 15 | 68.9 / 1.74 | 85.4 / 2.55 | 87.6 / 2.59 | 95.8 / 3.45 |
| +4 vs Hard 18 | 45.7 / 1.11 | 68.9 / 1.74 | 71.7 / 1.77 | 85.5 / 2.55 |
| +4 vs Formidable 21 | 24.9 / 0.62 | 45.9 / 1.11 | 48.5 / 1.10 | 68.7 / 1.74 |
| +6 vs Hard 18 | 61.8 / 1.52 | 80.6 / 2.27 | 83.2 / 2.30 | 93.1 / 3.14 |
| +6 vs Formidable 21 | 38.2 / 0.93 | 61.9 / 1.51 | 64.6 / 1.52 | 80.6 / 2.27 |

- One step is worth slightly less than one bonus die, about +0.4 to +0.8 Power per roll. It costs nothing, though, and still stacks with the two bonus dice allowed. As a capstone, that's fine.
- Two steps is a big jump: Formidable plays like Standard. This confirms the Generic Focuses B2 change (Master Key and Living Archive went from two steps to one).
- The risk is scope. "Medicine, occult, engineering, history" are skill-sized, but a field like "combat" or "magic" would cover most rolls.
- **Suggested wording:** "Choose one field, about as wide as a single skill (medicine, occult, engineering, history). The GM can refuse a field that would cover most of your rolls."

## B. +1 Disposition per Hit vs Flat Starting Disposition (Crowd Work)

The model is a duel between two equal sides, each at +4 with average starting Disposition 5.3. Every Attack is an independent test against Standard 15 and commits all its Power to loss (Power + 1). Each cell shows side A's win % / tie %.

| Side A gets | All actions are Attacks | Half the actions are Attacks |
|---|---|---|
| Nothing (even) | 36.6 / 26.8 | 44.9 / 10.7 |
| +1 Disposition per successful Attack | 46.3 / 28.0 | 52.3 / 11.2 |
| Flat +1 starting | 46.7 / 25.4 | 52.4 / 9.9 |
| Flat +2 starting | 56.5 / 22.8 | 59.2 / 9.0 |
| Flat +3 starting | 65.4 / 19.1 | 65.5 / 8.0 |

- In this model, +1 per hit is worth the same as +1 starting Disposition.
- The model leaves out Defend recovery, so conflicts here end in about 1–1.5 volleys. In longer conflicts the per-hit bonus gains value; expect it to land somewhere between +1 and +2.
- **Crowd Work** (Interlocutor, ★) gives this bonus only against crowds or councils. **Brutal** (Bellator, non-★) gives the same bonus on any Fight or Brawl Attack, or +1 status tier instead. Crowd Work is therefore narrower than a non-★ ability, while ★ abilities elsewhere (such as Unleash) do something no other ability does.
- **Recommendation:** drop the ★. Optional: widen the scope to "any Argument or Negotiation where the other side has two or more participants".

## C. Automatic Power vs Rolled Workings (Borrowed Might, Ascendant)

The model is an Adept working at +6 (skill +4, Domain tag +1, one other tag +1).

| Difficulty | Effort die? | Success % | Mean Power | P(Power ≥ 4) | P(Power ≥ 5) |
|---|---|---|---|---|---|
| Standard 15 | no | 80.5 | 2.26 | 20.1% | 8.4% |
| Standard 15 | yes | 93.9 | 3.18 | 41.3% | 20.0% |
| Hard 18 | no | 61.8 | 1.51 | 8.3% | 1.4% |
| Hard 18 | yes | 83.2 | 2.29 | 20.0% | 3.7% |
| Formidable 21 | yes | 64.6 | 1.52 | 3.8% | 2.0% |
| Heroic 24 | yes | 40.1 | 0.92 | 2.0% | 2.0% |

- **Borrowed Might** (4 Power for 3 Woe): for a non-Adept, Patron's Gift limits workings to Easy and Standard. There, a guaranteed 4 Power matches a top-20% roll, or a top-40% roll with Effort, and it pays for a solid set of Effects. 3 Woe is about three GM bonus dice, or one complication buy-off plus one die. That's a fair trade for a ★ T3 ability.
- **Ascendant** (5 Power, Heroic scope, no Woe): a rolled Heroic result reaches 5 Power about 2% of the time. Ascendant is in a different class, as a capstone should be.
- **Gap:** Borrowed Might is limited only by "the Domain's scope", not by Difficulty scope. An Adept who takes this Focus could use it on a Heroic working and get a second Ascendant each session, without the Scar clause.
- **Suggested wording:** add "It can't be used for a Heroic-scope working."

## D. Pneuma Budget (Focused Channel)

The model is an Adept with Pneuma 12 and Edge 2 (each Effort use costs 1). It puts all of the First–Third rest recovery into Pneuma, which averages 13.5, for a daily budget of about **25.5 Pneuma**. The model leaves out Resistance costs. Each cell shows the Pneuma left at the end of the day.

| Workings per day | Effort share | Cost 1 | Cost 1 + Focused Channel | Cost 2 | Cost 2 + Focused Channel (to 1) |
|---|---|---|---|---|---|
| 8 | 25% | 15.5 | 21.5 | 7.5 | 13.5 |
| 12 | 0% | 13.5 | 25.5 | 1.5 | 13.5 |
| 12 | 25% | 10.5 | 19.5 | −1.5 | 7.5 |
| 16 | 25% | 5.5 | 17.5 | −10.5 | 1.5 |

- Other playbooks' ordinary skill actions cost no points. With base cost 1 and Focused Channel, a no-Effort working costs the same as anyone else's action. What makes the Adept strong is the **breadth of the Domain**, not the cost.
- With base cost 2, a busy Adept (12+ workings a day) runs dry before Resistance is even counted. That's a big nerf.
- **Recommendation:** keep cost 1. If Adepts overshadow other playbooks in playtest, the narrower lever is: "Focused Channel applies only to minor and significant workings (Easy and Standard)." Dramatic workings and above would then keep their 1-point cost. Update the chapter 5 design note to say this.

## E. Weather Sense ★ vs Network (comparison)

| Ability | Tier | Benefit |
|---|---|---|
| Network (Interlocutor) | 3, non-★ | Once per session, declare a contact Truth; the GM adds a quirk or price |
| Weather Sense (Explorator) | 8, ★ | Once per session, declare the next scene's weather or terrain Truth |
| Lands Unknown (Focus) | 3b, ★ | Name one Region Truth in each uncharted region (Module C) |
| Lost Knowledge (Focus) | 2, non-★ | Once per session, Create a Truth for 1 Power |

A rank-1 Truth normally costs 2 Power to Create, so Weather Sense is worth about 2 Power once per session. That's on par with Network and below Lands Unknown. Either:
- **drop the ★** (recommended); or
- keep the ★ and add: "and you always know the next scene's weather and terrain Danger before travel is planned."

## F. Overlap Riders (Generic Focuses B7)

You chose small riders. Each Focus version keeps its shared core, and the rider applies even when the core doesn't stack with the playbook version.

| Focus ability | Overlaps with | Duplicate? | Suggested rider |
|---|---|---|---|
| Bypass (Opens Every Lock, T1) | Decipher (Savant 5) | Yes: +1 clock segment | "Before you roll, you also know the clock's size and what failing will set off." |
| Trap Sense (Always Has an Escape Plan, 2b) | Escape Artist (Furcifer 6) | Partly: same cost-0 threshold; noticing traps is unique | "Allies you warn in time Resist that trap with Edge +1." |
| Interrogator (Solves the Unsolvable, 2a) | Tracker (Explorator 3) | The mechanic is the same, but the subject differs | "You also learn whether the subject believes each answer." |
| Unshakeable (Hunts the Things in the Dark, 3a) | Steady Mind (Savant 4), Escape Artist | It's a superset (cost 0 and 3 tiers) for a different pool | No rider. It already combines two benefits at T3. |
| Bane (Hunts the Things in the Dark, 2a) | Brutal (Bellator 2) | Partly: Bane works with any Attack skill but needs an exploited weakness | "Exploiting a weakness also reveals one more of the creature's weaknesses or abilities (a free Discover)." |
| Every Trick in the Book (Fights Dirty, 3a) | Brutal, Crowd Work | No: it applies to Feints, not Attacks | No rider. It combines with Brutal legitimately. |
| Monster Lore (Hunts the Things in the Dark, T1) | Beast Lore (Runs With the Pack, 2b, a Focus) | Yes, and narrower (supernatural creatures only) | "You also know one thing that repels or binds it (salt, iron, a name)." |

**Sidebar change (6.9 Design Notes):** replace "don't stack on one character: take the better one" with "The shared benefit doesn't stack with the playbook version, but the Focus's rider still applies."

The riders are information or support benefits: none of them adds Power, Disposition or bonus dice.

## Decisions

Applied as PLAYTEST-marked changes in one commit:
- **Crowd Work and Weather Sense keep ★.** Every playbook has exactly two ★ abilities (slots 7 and 8), so they were upgraded instead of demoted.
  - Crowd Work now applies in any Argument or Negotiation where the other side has two or more participants.
  - Weather Sense adds: "You also always know the next scene's weather and terrain Truths before the party plans it, including whether a travel leg is a hard stretch (Module B)." This replaces the earlier "terrain Danger" wording, because Module B has no Danger term; terrain and weather are Truths there (Module B §B.5).
- **Master of the Field:** the field is limited to about one skill's width, and the GM can refuse a broader one.
- **Focused Channel:** no rule change. The chapter 5 design note now names the Easy/Standard limit as the fallback lever and rules out base cost 2.
- **Borrowed Might:** can't be used for a Heroic-scope working.
- **Riders:** Bypass, Trap Sense, Interrogator, Bane and Monster Lore. Bane's free Discover applies only the first time you exploit a weakness against each creature, so it can't repeat every volley.
- **6.9 sidebar:** the shared benefit doesn't stack, but the Focus's rider still applies.

Layout: the book grows from 111 to 112 pages; the chapter 6 Design Notes sidebar now sits on its own page.
