# Shared Disposition: Consolidation Record

**System:** 2d12 / Testament of Dust
**Master file:** `docs/TestamentOfDust/testament-of-dust-2d12-v2-master-rulebook.typ`
**Branch:** `rules/shared-disposition` (built on `main`)
**Date:** 18 October 2026
**Status:** Added for playtest.

This branch replaces personal Disposition allocations with one shared Disposition track per side. The rule text is added verbatim as Core Rules §10.6. Passages that assumed personal Disposition are updated to match.

---

## New rule (Core Rules §10.6)

> ### Shared Disposition
>
> Each side has one Disposition total. Determine it normally, but do not divide it among participants.
>
> Successful Attacks and Feints reduce the opposing side's Disposition. Successful Defend actions restore your side's Disposition, up to its starting total. Ordinary Disposition loss does not inflict statuses, drain Pools, or individually remove participants.
>
> A character stops participating when a status, explicit effect, voluntary withdrawal, or established circumstance prevents them from pursuing the side's objective. Their removal does not directly change shared Disposition.
>
> A side loses when its Disposition reaches zero or none of its participants can continue pursuing its objective. Complete independently resolving actions before checking victory. Resolve mutual defeat and compromise normally.
>
> Injury trades protect shared Disposition, with no more than one participant accepting an injury against each Attack or Feint.

## Renumbering

The new section is inserted after §10.5 Actions and Effects. Later sections move up by one, and every cross-reference in the master is updated:

| Old | New |
|---|---|
| 10.6 Conflict Gear | 10.7 |
| 10.7 Accepting Injury | 10.8 |
| 10.8 Taken Out, Volleys and Mutual Defeat | 10.9 |
| 10.9 Conceding | 10.10 |
| 10.10 Compromise | 10.11 |
| 10.11 NPCs and Harm | 10.12 |
| 10.12 Order of Resolution | 10.13 |
| 10.13 Keeping It Fast | 10.14 |

## Conforming edits

| Section | Before | After |
|---|---|---|
| §6.3 Scope | Taken Out drops your remaining Disposition to 0; points forfeited; side loses if every member is out | Shared Disposition unchanged; side loses if no participant can continue |
| §6.4 Three ways out | Disposition 0, tier-6 status, or effect | Tier-6 status, effect, voluntary withdrawal, or established circumstance; ordinary loss never removes an individual |
| §6.4 Forfeited Disposition | Remaining Disposition forfeited and counted as lost | Replaced by "Disposition stays with the side" |
| §6.4 Getting back in | Return also needed an ability that restores at least 1 Disposition | Condition removed + explicit permission; side must not have lost; returning restores no Disposition unless stated |
| §6.6 Care in a conflict | Restoring Disposition keeps "someone" in | Keeps "your side" in |
| §10.2 Setup | Disposition divided among team members | One shared total for the whole side |
| §10.5 Actions table | "the opponent" / unspecified | Opposing side / your side |
| §10.5 Three layers | Whether "you" can keep pursuing | Whether "your side" can, one shared total |
| §10.5 closing line | A PC at 0 Disposition is out | A side at 0 Disposition loses |
| §10.8 Accepting Injury | Trade against loss to "your" Disposition; Shared loss paragraph for *Interpose* | Trade protects side's Disposition; one participant per Attack or Feint; forfeited-Disposition exclusion removed |
| §10.9 Side defeat | 0 Disposition or every member Taken Out | 0 Disposition or no participant can continue |
| §10.12 NPC defeat | 0 Disposition defeats an NPC | An NPC side at 0 Disposition is defeated |
| Riposte | "restoring your own" | "restoring your side's" |
| Quick Reference, Damage Cycle | Disposition only | Adds shared track, side defeat, one trade per Attack or Feint |
| §14.1 Known Risks | --- | New Shared Disposition entry |

## Starting Disposition halved

§10.2 Setup now halves the existing result again: roll 2d12 + Disposition skill + highest Edge, halve (round up), add +1 per helper, then halve that total (round up). This matches the "half current result" condition from the 1,000-seed pacing batch, which scaled the complete result including helpers: average starting track 6.17 (range 3--9), average 5.96 volleys, median 5, 59.4% finished within six volleys (current formula: 11.81, 8.89, 9, 15.5%).

The typical range in §10.2 and §10.14 changes from 7--12 to 4--7. Flat Disposition bonuses (playbook and focus abilities, vampire rank +2/+4/+6) are unchanged and add after setup, so they are now proportionally about twice as strong. Flagged in Known Risks.

## Revised abilities

These abilities were written for personal Disposition and are revised for the shared track. Updated in the master and in `focuses.md`.

| Ability | Before | After |
|---|---|---|
| **Interpose** (Never Leaves Anyone Behind 2b) | Once per exchange, take half an ally's Disposition loss (round up) from your own Disposition | When you accept an injury to cancel Disposition loss from an Attack or Feint, cancel 1 additional loss, up to the loss inflicted. All normal injury-trade restrictions apply |
| **Overwatch** (Never Misses 2a) | Your Defend can restore Disposition to any ally | You may Defend with Shoot when covering fire can protect your side. The once-per-scene status cancel is unchanged |
| **Battlefield Surgeon** (Heals the Broken 2a) | Defend with Medicine restores Disposition to any ally and clears one tier-1 status | You may Defend with Medicine when you can reach an ally and provide appropriate treatment. A successful Defend restores your side's Disposition normally and clears one tier-1 harmful status from that ally that your treatment can address |

Interpose is now a passive bonus on your own injury trade, so it still works within the once-per-character trade limit and the one-trade-per-Attack-or-Feint limit (§10.8). With a tier-2/3/4 trade, it cancels 2/3/4 loss.
