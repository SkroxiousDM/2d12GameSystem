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

## Open items

These abilities were written for personal Disposition and are left unchanged pending a design decision:

- **Interpose** (Never Leaves Anyone Behind 2b): moves loss from an ally's Disposition to your own. With one shared track, there is nothing to move. It needs a new effect, for example letting you be the one participant who accepts the injury trade against an Attack or Feint aimed at an ally.
- **Overwatch** (Never Misses 2a) and **Battlefield Surgeon** (Heals the Broken 2a): "restore Disposition to any ally" is now automatic, since every Defend restores the shared track. Overwatch's scene power and Battlefield Surgeon's tier-1 clear still work.
- `focuses.md` keeps the old wording for these entries until the abilities are revised.
