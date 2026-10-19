# Running Dry: Master Rule Text

**System:** 2d12 / Hollow Frontier damage cycle
**Intended master file:** `docs/TestamentOfDust/testament-of-dust-2d12-v2-master-rulebook.typ` (SkroxiousDM/2d12GameSystem)
**Revision:** R3 (consolidated)
**Date:** 18 October 2026
**Status:** Finalized for playtest. Items marked **[Playtest value]** are new numbers that still need testing.

---

## Version Notes

| Revision | Date | Description |
|---|---|---|
| R1 | Before 18 Oct 2026 | Original repository rule. Emptying a Pool took the character out of the scene, recorded one Scar for that Pool, and later refilled the Pool to half its maximum. |
| R1.1 | 18 Oct 2026 | Draft of the damage cycle. Kept R1's structure, clarified timing, and added Unaffordable Resistance Costs. |
| R2 | 18 Oct 2026 | Your alterations. Running dry now imposes a Status whose tier depends on overrun. A Scar comes from any harmful Status reaching tier 6, not from emptying a Pool. Four details confirmed (see Design Decisions). |
| R3 | 18 Oct 2026 | This document. Combines the R2 rule text with the interaction-review fixes (payment timing, separate costs, depletion-status identity, depletion recovery, Scar limits, removal scope, NPC handling, returning to a conflict, injury-trade restriction, Scar Recorded marker) and the new resolution order. |

---

## Summary of Changes

### What Changed from R1

| Area | R1 (old) | R3 (current) |
|---|---|---|
| Effect of running dry | Character automatically taken out of the scene | An appropriate harmful Status is imposed. Removal happens only if a Status reaches tier 6 |
| Severity | The same every time | Incoming tier = 1 + overrun |
| Scar trigger | Emptying a Pool | Any harmful Status first reaching tier 6 |
| Scars per event | One per Pool emptied | At most one per character per action or hazard event |
| Pool refill | Automatic refill to half maximum after the scene | None. Pools recover only through normal recovery |
| Overspending | Unclear | Only Resistance and imposed costs may overrun a Pool. Voluntary costs must be affordable |
| Empty Pool | Carried penalties of its own | Has no penalty of its own. Its Statuses apply instead |
| Recovery | Pool recovery only | Pool and depletion Status recover separately. Recovery points can also remove depletion tiers |
| NPCs | Not addressed | Ordinary NPCs never run dry |

### Loopholes Closed in R3

1. Collapse-then-keep-spending: once a running-dry Status takes you out, you can't make further optional expenditures.
2. Splitting or bundling costs to change overrun: each cost listed separately is paid separately, and a single listed cost can't be divided.
3. Spreading depletion across different Status names to put off tier 6: each Pool has one depletion Status per ordeal.
4. Taken-out characters resisting forever: Resistance needs a response the character can still physically make.
5. Being "already broken" as a safe state: Scar Recorded marker, plus a one-Scar-per-episode rule.
6. Several Scars (or instant retirement) from one event: at most one Scar per character per event.
7. Local incapacity counting as total defeat: tier-6 removal is limited to the Status's established scope.
8. Heal, rejoin, collapse, repeat: healing alone doesn't restore Disposition or participation.
9. Recovery for depletion Statuses was undefined: now has a defined procedure.
10. Same-Resistance self-clearing: an incidental clearing benefit can't remove the running-dry Status that paid for it.
11. Overrunning a Pool to reset recovery: running dry gives no recovery shortcut.

---

## Design Decisions

Decisions you confirmed (R2):

1. **Overrun** = final cost after all reductions − points available in the relevant Pool, with a minimum of 0.
2. **Incoming Status tier** = 1 + overrun, followed by normal same-kind stacking.
3. **Only Resistance and imposed costs can overrun a Pool.** Voluntary Effort, Help, and ability costs must be affordable unless an ability explicitly allows overrun.
4. **Tier 6** both takes the character out (within the Status's scope) and produces one Scar. Further harm while that Status stays at tier 6 produces no further Scars.

Adopted from the interaction review (R3):

5. Each cost is resolved at the moment its own rule requires payment, not all at the end of the action.
6. A Pool's first running-dry Status sets its depletion Status for the rest of the continuous ordeal.
7. Depletion Statuses recover through Pool-recovery rests at 2 recovery points per tier. **[Playtest value]**
8. One Scar per character per action or hazard event. **[Playtest value]**
9. The bookkeeping marker is called **Scar Recorded** so it doesn't clash with the existing "Broken" terminology.

---

# Rule Text

## 1. Pool Costs and Payment Timing

### When to Pay

Pay each cost when its rule requires payment. Immediately resolve any running-dry Status caused by that payment.

If the Status takes you out, complete only the action or Resistance whose cost caused it. You can't make further optional expenditures or activate more abilities as part of that action.

A declared action isn't cancelled just because its own required payment takes you out. Its result and effects still resolve.

If that action is one of two independently resolving actions in a volley, both actions resolve before victory is checked.

### Separate and Combined Costs

Each expenditure that a rule lists separately is a separate cost. Resolve it at its stated timing.

A single listed cost can't be divided into smaller payments. Separate costs can't be combined just to change overrun or Status stacking.

When one effect imposes several simultaneous deductions from the same Pool, total them as one imposed cost, unless the effect explicitly treats them as separate events.

Resolve deductions from different Pools separately.

### Which Costs May Overrun

Resistance and imposed costs may exceed the points available in a Pool.

Voluntary Effort, Help, and ability activation costs must be paid in full unless their rules explicitly allow overrun. You may voluntarily spend your exact remaining points. Doing so runs the Pool dry and imposes a tier-1 Status.

A cost you voluntarily accept as payment for a benefit is not an imposed cost. It can't overrun a Pool unless its rule expressly allows it.

---

## 2. Running Dry

### Trigger

You run dry when a positive cost reduces a Pool to zero or exceeds the points available in that Pool.

Resolve the action or Resistance that incurred the cost. Then impose an appropriate harmful Status representing the resulting exhaustion, strain, or loss of control.

Running dry doesn't automatically take you out, produce a Scar, or restore Pool points. Apply the resulting Status normally.

### Calculate Overrun

First find the final cost after Edge, Tychē, and all other permitted reductions. Compare that cost with the points currently available in the relevant Pool.

```
Overrun = max(0, final cost − available Pool points)
```

Spend the available points the cost requires. A Pool can't fall below zero, and unpaid excess doesn't spill into another Pool.

If the expenditure empties or overruns the Pool, the incoming running-dry Status has this tier:

```
Incoming Status tier = 1 + Overrun
```

| Points available | Final cost | Overrun | Incoming Status |
|---:|---:|---:|---|
| 3 | 2 | 0 | None; the Pool keeps 1 point |
| 3 | 3 | 0 | Tier 1 |
| 1 | 2 | 1 | Tier 2 |
| 1 | 3 | 2 | Tier 3 |
| 0 | 3 | 3 | Tier 4 |
| 0 | 5 | 5 | Tier 6 |

An incoming tier above 6 is recorded as tier 6. Any further consequence needs an explicit rule or an established stake. Excess tier alone creates no additional Scars.

---

## 3. Running-Dry Statuses

### Choose the Status

The Status must fit both the Pool and the action that exhausted it.

| Pool | Example running-dry Statuses |
|---|---|
| Sōma | Physically Exhausted, Muscular Strain |
| Akmē | Unsteady, Reflexes Overloaded |
| Psychē | Mentally Exhausted, Cognitive Overload |
| Pneuma | Resolve Fractured, Spiritually Drained |

Set the Status's name, scope, and recovery category (see Section 10) before applying it. Its name determines which actions it hinders.

### Running-Dry Status Identity

The first running-dry event for a Pool sets that Pool's depletion Status for the current continuous ordeal. Record the associated Pool beside the Status.

Further running dry in that Pool worsens the same Status, unless a materially different cause calls for a different consequence. A new name or description alone isn't a different cause.

One running-dry event worsens only one Status. Don't apply it to both the depletion Status and a separate injury unless another rule explicitly imposes both.

### Apply Normal Stacking

A running-dry Status stacks with an existing Status of the same kind using the normal procedure:

```
Resulting tier = existing tier + max(1, incoming tier − 1)
```

So an incoming tier-1 Status raises an existing same-kind Status by one tier.

Example: a character with Mentally Exhausted-2 overruns Psychē by 2. The incoming Status is Mentally Exhausted-3, which raises the existing Status to tier 4.

If the resulting harmful Status reaches tier 6, apply Section 6.

### Running-Dry Statuses Are Costs

Armour, Resistance, and effects that cancel incoming consequences can't prevent or reduce a running-dry Status.

Once recorded, it can be treated or recovered like any existing Status. An ability that explicitly heals, repairs, or restores an existing Status can affect it within that ability's limits.

An incidental Status-clearing benefit from the same Resistance (such as clearing a tier-1 Status on a high die result) can't clear the running-dry Status that pays for that Resistance.

---

## 4. Resistance While Depleted

### Resisting at Low or Empty Pools

You may attempt Resistance with a depleted or empty Pool unless your condition prevents Resistance (see Section 7).

Find the final cost normally:

- If you can pay without emptying the Pool, no running-dry Status is imposed.
- If paying empties the Pool, impose tier 1.
- If paying exceeds the available points, impose tier 1 + overrun.

The Resistance still takes effect even when its cost makes you run dry.

Resolve protection, Resistance, and the original consequence before applying the running-dry Status. The new Status doesn't penalise the roll after the fact or undo the Resistance that caused it.

### Zero-Cost Uses

A final cost of zero doesn't trigger running dry, even if the relevant Pool is already empty.

Being at zero isn't a recurring event. Don't impose another Status just because time passes, a new turn begins, or the character takes an action that costs no Pool points.

A later positive Resistance cost or imposed cost can cause another running-dry event while the Pool stays at zero.

---

## 5. Empty Pools

An empty Pool has no points available to spend. On its own it doesn't impose a penalty, remove Disposition, take the character out, or produce a Scar.

Apply the penalties and fictional restrictions of any resulting Statuses instead.

A character with an empty Pool can keep acting if their Statuses and circumstances allow. They can use other resources, take actions with no Pool cost, or recover normally.

An empty Pool stays at zero until an eligible recovery procedure or effect restores it. There is no automatic half-maximum refill.

---

## 6. Tier 6, Removal, and Scars

### Reaching Tier 6

When a harmful Status reaches tier 6, either in a single application or through stacking:

1. Resolve its tier-6 outcome.
2. Apply removal within the Status's established scope (below).
3. Record one appropriate Scar, subject to the limits in this section.

A tier-6 Status doesn't automatically mean unconsciousness or death. Its outcome follows from its nature and the established stakes.

### Scope of Removal

When a tier-6 Status leaves you unable to keep pursuing the current conflict's objective, you are taken out and your remaining personal Disposition becomes zero.

If it prevents only a particular activity, apply that restriction without removing you from the whole conflict.

Set the scope of a non-damage Status when it is inflicted. Don't widen that scope once it reaches tier 6.

Whether or not it removes you from the conflict, a harmful Status reaching tier 6 produces its appropriate Scar.

### Disposition on Removal

When a character is taken out by a Status or another effect, reduce their remaining personal Disposition to zero. This loss can't be cancelled through an injury trade, transferred to another participant, or treated as an Attack.

These points count as lost when working out the side's remaining Disposition and any eventual compromise.

If every participant on a side is taken out, that side loses the conflict immediately.

### Status and Scar

The Status records the current condition. The Scar records the lasting effect of reaching the breaking point.

| Tier-6 Status | Possible Scar |
|---|---|
| Physically Exhausted | My old injury gives out under strain |
| Reflexes Overloaded | Hesitates when everything moves at once |
| Cognitive Overload | Gaps in the memory of that night |
| Terrified | Cannot forget what was behind the door |
| Resolve Fractured | Doubts the oath that once sustained me |
| Bound or Captured | Cannot bear being restrained |

The player and GM agree on a Scar that fits what happened. A Scar can't introduce an unrelated injury, dictate an unrelated belief, or extend the opposition's victory beyond the established stakes.

### One Scar per Breaking Episode

A harmful Status produces one Scar when it first reaches tier 6.

Further harm while that Status stays at tier 6 produces no further Scar. Reducing it and then worsening it again during the same unresolved episode doesn't reset its Scar trigger.

### One Scar per Event **[Playtest value]**

A single action or hazard event can give a character no more than one Scar, even if it takes several harmful Statuses to tier 6.

Choose a Scar that reflects the event's lasting consequence. Mark Scar Recorded on every Status that reached tier 6 during that event.

A later, distinct event can produce another Scar from a different Status, subject to the breaking-episode limit.

Effects meant to inflict several Scars at once need that stated explicitly as an ability property.

### Scar Recorded Marker

When a Status produces a Scar, or is marked during a Scar-producing event, mark its underlying condition **Scar Recorded** for the rest of the continuous ordeal.

Keep the marker even if the Status is cleared. If the same condition comes back during that ordeal, it can't produce another Scar.

Remove the marker only once both of these are true:

- The Status has been fully cleared.
- The scene or continuous ordeal that caused it has ended.

After that, a later and genuinely new episode can produce another Scar.

The marker is bookkeeping only, not a Status or a penalty.

Distinct harmful Statuses can each produce a Scar in separate events. Don't split one underlying condition into several differently named Statuses to gain or avoid Scars.

### Scar Effects

A Scar is a lasting weakness tag, not a tiered Status. Apply it when relevant, and it can be compelled for Tychē.

Ordinary treatment, rest, Restore, and Pool recovery don't remove a Scar. Changing or overcoming one requires a suitable advancement, milestone, or explicit ability.

When a Scar and a harmful Status express the same underlying impairment on the same roll, apply only the greater penalty. Distinct weaknesses follow the normal modifier rules.

A character's fourth Scar retires them from ordinary adventuring. Finish the immediate outcome, then work out their departure with the player. Retirement doesn't mean death.

---

## 7. Being Taken Out

### Resistance While Taken Out

Being taken out doesn't automatically prevent Resistance. You may Resist only when your current condition allows the response it needs.

For example, you can brace against further pain while pinned down. You can't dodge while completely restrained, or make a conscious act of will while unconscious.

When a Status first takes you out, finish any Resistance already in progress. Further Resistance needs a response that is still possible under that Status.

Resistance can't reverse an established defeat, revoke an accepted concession, or prevent costs already accepted as payment.

### After Settlement

Once the conflict's outcome is settled, resolve only the consequences that were expressly left open to Resistance. Don't use further Resistance to reopen the objective or delay settlement.

### Returning to Participation

Removing the cause of incapacitation lets a character act again. It doesn't restore forfeited Disposition.

To rejoin an ongoing Disposition conflict after being taken out, the character needs both of these:

1. The condition that prevented participation has been removed.
2. An ability or rule explicitly allows a taken-out participant to return and restores at least 1 Disposition.

Ordinary Defend can't bring back a taken-out participant unless its rules explicitly allow it.

A character who can act again after the conflict has ended may act normally in the fiction that follows, subject to their remaining conditions.

---

## 8. Amendment: Injury Trade

Replace the final restriction on Take an Injury to Stay in the Conflict with:

> You can't use the injury trade if applying and stacking the accepted injury would take that Status to tier 6.
>
> The trade must leave you able to continue the conflict. It can't swap ordinary Disposition defeat for immediate Status defeat.
>
> Accepted injuries otherwise follow the normal Status and Scar rules.

The approved schedule is unchanged: tier 2 / 3 / 4 cancels 1 / 2 / 3 incoming Disposition loss, once per character per conflict.

---

## 9. Amendment: Dying and Permanent Harm

### Tier-6 Harm and Dying

A life-threatening physical Status that reaches tier 6 produces a Scar. It can also make the character Dying when lethal stakes allow that outcome.

These are separate consequences:

- The Status determines immediate incapacitation.
- The Scar records lasting harm.
- The Dying clock determines whether the character survives without timely help.

Receiving a Scar doesn't stabilise the character or replace the Dying procedure.

A running-dry Status doesn't become lethal just because it reaches tier 6. Death needs a suitable lethal cause and established stakes.

### Permanent Changes

Tier-6 harm always produces a Scar (subject to Section 6 limits). It doesn't automatically sever a limb, destroy an organ, reduce a maximum Pool, or impose any other permanent mechanical loss.

Those changes require an explicitly established consequence, a specific effect, or voluntary agreement.

---

## 10. Recovery

### Recovering from Running Dry

Recover spent Pool points through the normal Pool-recovery procedure.

Recover the running-dry Status separately, according to its category, which you set when the Status is first recorded:

- **Depletion Status** (exhaustion, strain, temporary overload): use Recovery from Depletion Statuses below.
- **Injury** (actual physical damage): use the injury-treatment and healing-interval procedures.
- **Affliction** (supernatural or ongoing cause): use its specific recovery requirements.

Don't treat every running-dry Status as a bodily wound.

Restoring a Pool doesn't automatically clear its associated Status, and clearing that Status doesn't automatically restore the Pool, except as allowed below.

### Recovery from Depletion Statuses **[Playtest value]**

A running-dry Status that represents exhaustion, strain, or temporary overload is a depletion Status, unless its source explicitly makes it an injury or affliction.

When you complete a normal Pool-recovery rest, you may put its recovery result toward the associated Pool, its depletion Status, or both:

- Restore Pool points normally.
- Spend 2 points of the recovery result to remove 1 tier from the depletion Status.

Each point of the recovery result can be spent only once.

A full overnight Pool restore also removes depletion Statuses whose sustaining causes have ended. It doesn't remove associated Scars, actual injuries, or afflictions.

Ordinary reassurance or first aid can make recovery possible, but it can't repeatedly remove depletion tiers through Restore. Explicit abilities that restore exhaustion or existing harmful Statuses work as their text says.

### No Recovery Shortcut

Running dry grants no special recovery roll, automatic refill, or exemption from ordinary recovery limits.

A character can't deliberately overrun a Pool to replace a bad recovery result or reach a fresh recovery stage.

---

## 11. NPC Expenditure

Ordinary NPCs don't use the running-dry procedure. Spending Woe, using a Shrug, or using up a scene allowance doesn't impose a running-dry Status.

Woe can't be overrun. An NPC can't activate an effect whose required Woe cost it can't pay.

NPCs built with the full PC Pool rules use running dry normally.

When an NPC's harmful Status reaches tier 6, resolve its stated outcome. Record a lasting Scar only if that NPC will stay relevant after the event. This gives the NPC no extra survival and doesn't prevent death.

---

## 12. Resolution Order

This replaces the earlier quick-reference sequence in full.

1. Establish stakes and declare the action.
2. Pay required pre-roll costs and resolve any running-dry Statuses.
3. Resolve the roll.
4. Make permitted post-roll choices, pay their costs, and resolve any resulting running dry.
5. Determine Disposition loss and any separately imposed consequences.
6. Offer eligible injury trades.
7. Apply remaining Disposition loss and permitted spillover.
8. Apply protection and Resistance to imposed consequences. Resolve the resulting harm, then any running-dry Status caused by Resistance.
9. Resolve tier-6 outcomes, Scars, and any Dying clock.
10. Complete independently resolving actions in the same volley.
11. Check removal, victory, and compromise.
12. Recover Pools, depletion Statuses, injuries, and Scars through their own procedures.

**Running-dry steps in brief:**
Pay each cost at its timing → if it empties or overruns the Pool, calculate overrun → impose the Pool's depletion Status at tier 1 + overrun → stack normally → at tier 6, apply scoped removal and one Scar (subject to event and episode limits) → apply Dying only for a lethal cause with lethal stakes → recover the Pool and the Status separately.

---

# Interaction Checks

| # | Interacting rule | Risk found | Resolution | Section |
|---|---|---|---|---|
| 1 | Effort and ability payment timing | Spend the last points before the roll, collapse, then keep buying Power after the roll | Each cost resolves at its own timing. Once taken out, no further optional spending | 1 |
| 2 | Multiple costs in one action | GM or player could split or merge costs to change the tier | Listed costs stay separate. Simultaneous deductions from one effect are totalled | 1 |
| 3 | Resistance while taken out | An incapacitated character resists without limit | Resistance needs a response the character can still make. No reopening after settlement | 7 |
| 4 | Status naming and stacking | Alternating names delays tier 6 | One depletion Status per Pool per ordeal | 3 |
| 5 | Pool recovery | Depletion Status recovery undefined | 2 recovery points per tier; overnight clearance once the cause ends | 10 |
| 6 | Multiple tier-6 Statuses | One event produces several Scars and possible instant retirement | One Scar per character per event | 6 |
| 7 | Tier-6 scope versus Disposition | Local incapacity treated as full defeat | Removal only when the objective can't be pursued; scope set when inflicted | 6 |
| 8 | NPC Grit, Shrugs, and Woe | Unclear whether NPCs run dry | Ordinary NPCs never run dry; Woe can't be overrun | 11 |
| 9 | Healing and Defend | Heal, rejoin, collapse loop | Rejoining needs an explicit return rule plus at least 1 Disposition | 7 |
| 10 | Injury trade | A trade could trigger tier 6 and a Scar | A trade can't take a Status to tier 6 | 8 |
| 11 | Scar reset tracking | Status cleared before the ordeal ends, so the trigger is lost | Scar Recorded marker | 6 |
| 12 | High-result Resistance clearing | The same Resistance clears its own running-dry cost | Incidental clearing can't remove the paying Status | 3 |
| 13 | Dying procedure | Tier-6 exhaustion treated as lethal | Running-dry Statuses aren't lethal without a lethal cause and stakes | 9 |
| 14 | Removal and team Disposition | A removed character strands or transfers Disposition | Remaining Disposition is forfeited and counts as lost | 6 |
| 15 | Zero-cost actions at empty Pool | Repeated Statuses just for sitting at zero | Zero cost never triggers running dry | 4 |

---

# Superseded Text

Remove or replace these passages in the master file:

- **Running Dry (R1 / R1.1):** automatic removal from the scene or conflict, a Scar per emptied Pool, and the refill to half maximum. Replaced by Sections 2–6.
- **Unaffordable Resistance Costs (R1.1):** replaced by Sections 1 and 4.
- **Scars (R1.1) Pool-based examples:** replaced by the Status-based examples in Section 6.
- **Pool Depletion (Being Taken Out):** replaced by Section 5.
- **R2 Disposition-removal paragraph under Reaching Tier 6:** replaced by Scope of Removal in Section 6.
- **R2 "Keep its Scar trigger marked until…":** replaced by the Scar Recorded marker in Section 6.
- **R2 taken-out Resistance permission:** replaced by Section 7.
- **R2 Quick-Reference steps and the earlier Completed Damage Cycle list:** replaced by Section 12.
- **Meaningful Voluntary Injuries, final sentence:** replaced by Section 8.

---

# Open Items for Playtest

1. **Depletion recovery rate.** Check whether 2 recovery points per tier is too slow or too fast against the escalating rest procedure.
2. **One Scar per event.** Confirm this default, or decide which effects should explicitly inflict several Scars.
3. **Compromise credit.** Decide whether a depletion Status can count toward an injury component of a compromise. Under the current text it can't, unless it was set as an injury.
4. **Overrun frequency.** Track how often Resistance at an empty Pool reaches tier 4 or higher, and whether the overrun formula needs a cap below tier 6 for a single payment.
