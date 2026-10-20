# Unified Damage Cycle: Consolidation Record

**System:** 2d12 / Testament of Dust (drafted as the Hollow Frontier damage cycle)
**Master file:** `docs/TestamentOfDust/testament-of-dust-2d12-v2-master-rulebook.typ`
**Branch:** `rules/unified-damage-cycle` (built on `running-dry-r3`)
**Date:** 18 October 2026
**Status:** Consolidated for playtest. Items marked **[Playtest value]** are new numbers that still need testing.

This branch puts the whole damage cycle into the master rulebook: the injury trade, concession, compromise settlement, treatment, healing intervals, dying, permanent harm and NPC handling, plus all the fixes from the consistency and loophole review. It sits on top of the Running Dry R3 changes (`running-dry-r3`, PR #21), so it replaces that PR. The master rulebook is now the authoritative text. This file records where each part came from and what was adapted.

---

## Version Notes

| Revision | Description |
|---|---|
| Draft 1 | "Damage, Defeat, and Recovery" insertion text: stakes, three forms of attrition, resolution order, injury trade, imposed harm, being taken out, conceding, victory and compromise, separate recovery. |
| Draft 2 | Completed the unresolved mechanics: status penalties and stacking, tier 6, treatment and Restore, healing intervals, dying and stabilisation, permanent harm, NPC damage. |
| Review | 15 consistency and loophole fixes (removal accounting, timing, mutual defeat, injury credit, settlement Resistance, protected payments, Feint, treatment limit, routine care, recovery timing, Dying cadence, definitive care, tier-6 recovery rows, conflict boundaries, NPC limits, precedence). |
| R2 / R3 | Running Dry → Status → Scar rewrite and its interaction fixes. Already merged into the master on `running-dry-r3` (§6.1–6.5). |
| This branch | Drafts 1–2 and the review fixes, adapted to the master and merged around R3. |

---

## Where Each Part Now Lives

| Damage-cycle text | Master location |
|---|---|
| Declare the stakes; lethal stakes; intent sets scope | Core Rules §10.2 Setup |
| Three forms of attrition; ordinary conflict attacks; direct harm | §10.5 Actions and Effects ("Three layers, three jobs") |
| Status penalties, same-kind stacking, what a status hinders | §5.1 Statuses |
| Resolve imposed statuses; limits of Resistance; protected payments | §6 Resistance (after the Resistance table) |
| Running dry, depletion statuses, tier 6 and Scars | §6.1–6.3 (R3, unchanged) |
| Being taken out; removal from a conflict; forfeited Disposition | §6.4 Being Taken Out |
| Separate recovery; no general reset | §6.5 Rest and Recovery |
| Appropriate care, routine care, emergency care, Restore limits, care in a conflict, healing intervals, recovery timing, afflictions | §6.6 Treatment and Healing (new) |
| Becoming Dying, cadence, stabilising, definitive care, immediate death | §6.7 Dying and Stabilisation (new) |
| Lasting changes; adaptation and replacement | §6.8 Permanent Harm (new) |
| Injury trade, restrictions, payments, shared loss, refresh | §10.7 Accepting Injury (new) |
| Finish the action first; independent actions; side defeat; mutual defeat | §10.8 Taken Out, Volleys and Mutual Defeat (new) |
| Offer and settle a concession | §10.9 Conceding (new) |
| Settle the outcome; count existing injuries; Resist settlement harm | §10.10 Compromise (was §10.7) |
| NPC resources, injury trades, defeat, special creatures | §10.11 NPCs and Harm (new) |
| Quick reference; precedence statement | §10.12 Order of Resolution (new) |
| (unchanged) | §10.6 Conflict Gear; §10.13 Keeping It Fast (was §10.8) |

Smaller cross-references:

- §5 Effects table: the Attack row notes that in a conflict an Attack removes Disposition, and the Restore row points to the limits on lasting injuries.
- §6 was renamed **Resistance, Harm and Recovery**.
- Playbook Rules §1.3: new entries for **Injury trade** and **Dying**.
- Playbook Rules §2.3: armour never reduces Disposition loss, accepted injuries or running-dry statuses.
- §14.1 Known Risks: a new playtest note for the damage cycle.
- Quick Reference appendix: a new **Damage Cycle** block.

---

## Decisions Carried Into the Master

1. **Injury trade:** once per character per conflict, accept a tier-2/3/4 injury to cancel 1/2/3 incoming Disposition loss. It applies to Attack and Feint, not Maneuvers, hazards or special effects. **[Playtest value]**
2. **Compromise statuses raised to tier 2/3/4** (Minor/Significant/Major). Previously the master used tier 1 and tier 2. The cycle uses 2/3/4 so that Resistance doesn't routinely erase compromise injuries.
3. **No Tychē reward for conceding.**
4. **Treatment limit:** ordinary treatment removes at most 1 tier of a lasting injury, then the injury is marked *treated* until a healing interval actually removes a tier.
5. **Healing intervals:** 1 night / 1 day / 3 days / 1 week / treatment + 1 week; tier 6 split into nonlethal and life-threatening rows. **[Playtest value]**
6. **Dying:** 3-segment clock; Medicine vs. Hard 18 to stabilise; failed attempts don't advance the clock; definitive care is needed to bring a tier-6 mortal injury below tier 6. **[Playtest value]**
7. **Emergency care** when uncertain: treatment skill vs. Standard 15.
8. **Precedence:** explicit damage-cycle amendments → creature-specific and revised abilities → damage-cycle general rules → earlier general rules.

---

## Adaptations to the Master

The drafts were written against the Hollow Frontier opposition and playtest documents, which aren't in this repository. Where the master differs, the master wins:

| Draft assumption | Master reality | What was done |
|---|---|---|
| NPCs use Grit and Shrugs (2 tiers each, extra Shrugs cost Woe) | The master has no Grit or Shrugs; ordinary NPCs have no pools | NPCs reduce harm only through listed armour, traits or abilities, with at most one reduction per status application |
| Armour reduces harm before Resistance | Armour adds extra tiers *when you Resist* physical harm (Playbook Rules §2.3) | Kept the master's armour rule; armour is applied as part of Resistance |
| "Normal spillover" of Disposition loss | The master has no spillover rule | The shared-loss rule covers abilities that move loss (such as *Interpose*) and explicitly creates no spillover |
| Area-attack splash restrictions | Not in the master | Not imported |
| Generic dying rule | Frontier *Bled* has its own tiers 4–6 and stabilising | *Bled* keeps its own procedure; no second Dying clock |
| Vampire killing rules | *Hard to Kill*, killing strike, blood-based recovery (Frontier Rules §5.2) | Retained as creature-specific rules with precedence |
| "Running dry: taken out + Scar + half refill" (Draft 2) | Already replaced by R3 | Draft 2's Running Dry and Scar text dropped in favour of R3 §6.1–6.3 |

---

## Loopholes Closed by the Review Fixes

1. Stranded Disposition after removal by status or running dry: it's forfeited and counts as lost.
2. Post-removal Effort, and undefined simultaneous actions: finish the action first; independent actions both resolve.
3. Mutual defeat had no result: it now gets a shared setback and no compromise.
4. Vague injury credit against compromise: one injury pays for one cost for its owner, at the required tier.
5. Unlimited replacement costs after successful Resistance: none are added; alternatives must be stated first.
6. A 12 on Resistance incidentally clearing an accepted injury: payments are protected.
7. Feint bypassing the injury trade: the trade now covers Attack and Feint.
8. Treat → rest → interrupt → treat again: the *treated* mark clears only when healing actually removes a tier.
9. Routine care as free Power: it generates no Power or Momentum.
10. Recovery time depending on the order of treatment and rest: elapsed time is kept when the tier drops and discarded when it rises.
11. More rescuers making the patient die faster: the clock advances by interval only.
12. Generic Restore curing a mortal wound: tier 6 needs definitive care.
13. Changing conflict type to refresh the trade: refreshes need a genuinely new conflict.
14. Stacked NPC reductions: one per status application.
15. Old ability text overriding the revision: explicit precedence list.

---

## Open Playtest Items

- How often the injury trade is taken, and whether it lengthens conflicts.
- Whether tier 2/3/4 compromise statuses are too harsh alongside the injury trade.
- Healing-interval lengths and the 3-segment Dying clock.
- **Restore-cost abilities.** *Field Medic* and *Field Surgeon* make Restore cheaper but don't lift the 1-tier limit on lasting injuries. Decide whether they should count as explicit healing.
- **Miracle Worker.** It returns an ally from a tier-6 physical status, but gives back no Disposition, so under §6.4 the ally can't rejoin an ongoing conflict. Consider adding "+1 Disposition". (Carried over from PR #21.)
- Whether a depletion status can count toward a compromise's injury cost. The current text credits only injuries, so a depletion status (exhaustion or strain) does not count.
- **PDFs** need rebuilding locally with Cinzel and EB Garamond installed.
