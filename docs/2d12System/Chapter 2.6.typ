

== 6. Resistance, Harm and Recovery
  #columns(2, gutter: 6mm)[
When a consequence lands on you (a status, lost gear, a bad position), you may #strong[Resist];:

+ Choose the pool that fits (see §3.2: Sōma for harm, Akmē to dodge, Psychē against deception and confusion, Pneuma against fear and the supernatural).
+ Roll a number of d12s equal to #strong[2 + that pool\'s Edge] and read only the #strong[highest die];. If penalties take the pool's Edge below 0, see #strong[Negative Edge] below.
+ Pay the listed cost in pool points. #strong[Don\'t subtract Edge] from it; Edge has already helped by adding dice. If #strong[two or more dice show 12];, pay 0 and clear one tier-1 status:

#figure(
  [#table(
    columns: (24%, 28%, 12%, 12%, 12%, 12%),
    align: (auto,auto,center,center,center,center,),
    table.header([Roll], [Cost], [2d], [3d], [4d], [5d],),
    table.hline(),
    [Two 12s], [0 + clear a tier-1], [1%], [2%], [4%], [6%],
    [9--12], [1], [55%], [68%], [77%], [81%],
    [5--8], [2], [33%], [26%], [19%], [13%],
    [1--4], [3], [11%], [4%], [1%], [\<1%],
  )]
  , kind: table
  )

#block[
#set enum(numbering: "1.", start: 4)
+ #strong[Effect:] reduce the incoming status by #strong[2 tiers] (to 0 if that brings it below 1), or turn a severe consequence into a lesser one.
]

The chance columns show Edge 0 to 3 (2d to 5d). A single 12 is simply a highest die in the 9--12 band. When an ability says your Edge #strong[counts as 1 higher] for a Resist, or gives #strong[Edge +1] to it, roll one more die; a penalty to Edge (such as #emph[Exposed] or #emph[Shaken]) rolls one fewer.

#strong[Negative Edge.] Penalties can take Edge below 0 for a Resist:
- #strong[Edge −1:] roll #strong[1d12];.
- #strong[Edge −2 or lower:] roll a number of d12s equal to the Edge without its minus sign (2d12 at −2, 3d12 at −3, and so on), and read only the #strong[lowest die];.

Pay the listed cost for the die you read. A single die can't give the double-12 result. When you keep the lowest, the double-12 result needs #strong[every die] to show 12. The chance columns show Edge −1 (1d), −2 (2d, lowest) and −3 (3d, lowest).

#figure(
  [#table(
    columns: (22%, 33%, 15%, 15%, 15%),
    align: (auto,auto,center,center,center,),
    table.header([Roll], [Cost], [−1], [−2], [−3],),
    table.hline(),
    [All 12s], [0 + clear a tier-1], [---], [1%], [\<1%],
    [9--12], [1], [33%], [10%], [4%],
    [5--8], [2], [33%], [33%], [26%],
    [1--4], [3], [33%], [56%], [70%],
  )]
  , kind: table
  )

#strong[Imposed harm, in order.] When an effect imposes a harmful status:
+ The GM names the status, its source and its incoming tier, and says whether it stacks with a status you already have (§5.1).
+ If you Resist, add any armour that applies (Playbook Rules §2.3) and pay the cost. A cost you can't fully pay makes you run dry (§6.1).
+ Record what is left with normal stacking. A status reduced to tier 0 isn't recorded.

#strong[Once per application.] Resist each application of harm once. You can't make a second attempt against the same harm.

#strong[What Resistance can't touch.] Resistance changes an imposed consequence. It doesn't reverse the action's success, restore lost Disposition or revoke an agreed outcome. Unless an ability says otherwise, you can't Resist:
- ordinary Disposition loss in a conflict (§10.6);
- an injury you accepted to cancel Disposition loss (§10.9);
- a cost you accepted in a concession (§10.11), or any other cost you accepted as payment for a benefit;
- a running-dry status (§6.2).

#strong[Protected payments.] An effect that prevents incoming harm, cancels a consequence or clears a status as a side benefit (such as the double-12 result above) can't remove an injury you accepted as payment, whichever action or Resistance produced it. Treatment, healing time and effects that explicitly heal an existing injury affect it normally (§6.6).

=== 6.1 Running Dry
#strong[Trigger.] You #strong[run dry] when a positive cost brings a pool to 0 or is more than the points left in it. Finish the action or Resistance that caused the cost, then take a harmful #strong[running-dry status] for that pool (§6.2). Running dry does not, on its own, take you out, give you a Scar or refill the pool.

#strong[Overrun.] Work out the final cost after Edge (for Effort), Tychē and every other permitted reduction, then compare it with the points left in the pool:

- #strong[Overrun] = final cost − points left (minimum 0).
- #strong[Incoming status tier] = 1 + overrun (recorded at tier 6 at most).

Spend the points you have. A pool can't go below 0, and the unpaid excess does not move to another pool.

#figure(
  [#table(
    columns: (22%, 20%, 20%, 38%),
    align: (auto,auto,auto,auto,),
    table.header([Points left], [Final cost], [Overrun], [Incoming status],),
    table.hline(),
    [3], [2], [0], [None (1 point left)],
    [3], [3], [0], [Tier 1],
    [1], [2], [1], [Tier 2],
    [1], [3], [2], [Tier 3],
    [0], [3], [3], [Tier 4],
    [0], [5], [5], [Tier 6],
  )]
  , kind: table
  )

Overrun beyond tier 6 has no extra effect unless a rule or an established stake says so.

#strong[Which costs can overrun.] Only #strong[Resistance] and costs #strong[imposed] on you. Effort, Help and ability activation costs must be paid in full unless the ability says it can overrun. You may spend your exact last points on purpose: the pool runs dry and you take a tier-1 status. A cost you accept as payment for a benefit is not an imposed cost.

#strong[Pay as you go.] Pay each cost at the point its rule says, and resolve any running dry straight away. If that status takes you out, finish only the action or Resistance whose cost caused it: you can't add more Effort, buy more Power or activate more abilities for that action. The action still resolves. If it is one of two independent actions in a volley, both resolve before victory is checked.

#strong[Separate costs stay separate.] Each cost listed separately is its own payment. You can't split one cost into smaller payments, or combine separate costs, to change overrun or stacking. When one effect takes several points from the same pool at once, total them as one imposed cost unless the effect says otherwise. Costs from different pools are resolved separately.

#strong[Resisting on empty.] You can Resist with a low or empty pool unless your condition prevents it (§6.4), and the Resistance still takes effect. Resolve protection, the Resistance and the original consequence first, then apply the running-dry status. The new status doesn't penalise that Resistance roll or undo its result.

#strong[Zero costs.] A final cost of 0 never makes you run dry, even if the pool is already empty. Being at 0 isn't an event in itself: you don't take a new status because time passes, a new turn begins, or you take an action that costs nothing. A later positive Resistance cost or imposed cost can make you run dry again.

#strong[Empty pools.] An empty pool has no penalty of its own. It doesn't remove Disposition or take you out; its running-dry status does that work. You can keep acting with other resources or with actions that cost nothing. The pool stays at 0 until rest restores it (§6.5). There is no automatic refill.

#strong[NPCs.] Ordinary NPCs don't have pools and never run dry. Spending Woe on an NPC creates no status, and Woe can't be overrun: if the GM can't pay an ability's Woe cost, the NPC can't use that ability. An NPC built with full PC pools runs dry normally.

#sidebar("Running Dry in Order")[
  #set enum(numbering: n => text(font: display-font, fill: brass, weight: 700, size: 0.85em)[#n.])
+ Pay each cost when its rule says.
+ If the cost empties or overruns the pool, work out the overrun.
+ Impose that pool's running-dry status at tier 1 + overrun.
+ Stack it with the same status if you already have it (§5.1).
+ At tier 6, apply the status's scope, then record one Scar (§6.3).
+ Recover the pool and the status separately (§6.5).
]
#colbreak()
=== 6.2 Running-Dry Statuses
The status must fit both the pool and the action that drained it:

#figure(
  [#table(
    columns: (18%, 82%),
    align: (auto,auto,),
    table.header([Pool], [Example running-dry statuses],),
    table.hline(),
    [Sōma], [#emph[physically exhausted];, #emph[muscular strain];],
    [Akmē], [#emph[unsteady];, #emph[reflexes overloaded];],
    [Psychē], [#emph[mentally exhausted];, #emph[cognitive overload];],
    [Pneuma], [#emph[resolve fractured];, #emph[spiritually drained];],
  )]
  , kind: table
  )

#strong[Set it up once.] When you first record the status, set its name, its scope and its recovery category (§6.5). The name decides which rolls it hinders.

#strong[One status per pool.] The first time a pool runs dry, that status becomes the pool's depletion status for the rest of the continuous ordeal. Write the pool beside it. Running dry in that pool again worsens the same status, unless a genuinely different cause calls for a different consequence. A new name or description is not a different cause. Each running-dry event worsens only one status.

#strong[Example.] You have #emph[mentally exhausted-2] and overrun Psychē by 2. The incoming status is tier 3, which stacks for +2, so you now have #emph[mentally exhausted-4].

#strong[It is a cost.] Armour, Resistance and effects that cancel incoming consequences can't prevent or reduce a running-dry status. Once recorded, it can be treated, Restored or healed like any existing status, within the limits of the effect used. A clearing benefit from the same Resistance or action can't clear the status that paid for it.

=== 6.3 Tier 6 and Scars
When a harmful status reaches #strong[tier 6], whether in one hit or through stacking:

+ Resolve its tier-6 outcome (§5.1).
+ Apply removal within the status's scope (below).
+ Record #strong[one Scar], subject to the limits below.

#strong[Scope.] If the status leaves you unable to pursue your side's intent in the current conflict, you are #strong[Taken Out]. Your side's shared Disposition doesn't change (§10.7). If none of a side's participants can continue pursuing its objective, that side loses at once. If the status only stops one activity (#emph[bound] stops you moving, not talking), apply that restriction and stay in the conflict. Set the scope of a non-damage status when it is inflicted, and don't widen it at tier 6. Either way, the status still gives its Scar.

#strong[Not lethal by default.] A running-dry status at tier 6 is not deadly on its own. Death needs a lethal cause and established stakes. Tier 6 doesn't, by itself, cost you a limb, lower a maximum pool or impose any other permanent loss; those need an established consequence, a specific effect or an agreement.

#strong[The Scar.] The status records your current condition; the Scar records the lasting mark of reaching the breaking point. The player and GM agree on a Scar that fits what happened. A Scar can't introduce an unrelated injury, dictate an unrelated belief, or extend the opposition's victory beyond the stakes. Label it with the pool most tied to the condition (a #emph[Pneuma Scar]):

#figure(
  [#table(
    columns: (38%, 62%),
    align: (auto,auto,),
    table.header([Tier-6 status], [Possible Scar],),
    table.hline(),
    [#emph[physically exhausted]], [#emph[my old injury gives out under strain]],
    [#emph[reflexes overloaded]], [#emph[hesitates when everything moves at once]],
    [#emph[cognitive overload]], [#emph[gaps in the memory of that night]],
    [#emph[terrified]], [#emph[can't forget what was behind the door]],
    [#emph[resolve fractured]], [#emph[doubts the oath that once sustained me]],
    [#emph[bound] or #emph[captured]], [#emph[can't bear being restrained]],
  )]
  , kind: table
  )

#strong[Scar limits.]
- #strong[One per episode.] A status gives a Scar the first time it reaches tier 6. More harm while it stays at tier 6, or lowering it and raising it again in the same episode, gives no further Scar.
- #strong[One per event.] A single action or hazard can give a character at most one Scar, even if it takes several statuses to tier 6. Only an ability that says so can give more than one.
- #strong[Scar Recorded.] Mark every status that reached tier 6 in a Scar-giving event as #emph[Scar Recorded] for the rest of the continuous ordeal, even if the status is later cleared. Remove the mark only when the status is fully cleared #strong[and] the scene or ordeal is over. The mark is bookkeeping only, not a status or a penalty.
- Don't split one condition into several differently named statuses to gain or avoid Scars.

#strong[Scar effects.] A Scar is a lasting weakness tag, not a status. Apply it when it's relevant, and it can be compelled for Tychē Points. Rest, treatment, Restore and pool recovery don't remove a Scar; changing one takes an Advance, a milestone or an explicit ability. If a Scar and a harmful status describe the same impairment on the same roll, apply only the larger penalty. Your #strong[fourth Scar] retires the character from ordinary adventuring. Finish the immediate scene, then decide with the player how the character leaves. Retirement doesn't mean death.

=== 6.4 Being Taken Out
#strong[Three ways out.] You are #strong[Taken Out] of a conflict when a harmful status reaches tier 6 within its scope (§6.3), when an effect says so, when you voluntarily withdraw, or when an established circumstance prevents you from pursuing your side's objective (§10.7). Ordinary Disposition loss never takes an individual out. Once you are out, you can't start another action, spend Effort or activate an ability unless its rules let you act while Taken Out.

#strong[Disposition stays with the side.] Being Taken Out doesn't directly change your side's shared Disposition. Your side loses your skills, abilities and help, and if none of its participants can continue pursuing its objective, it loses at once (§10.7, §10.10).

#strong[Out isn't down.] Being Taken Out doesn't, on its own, make you unconscious, injured or dying. Describe it to fit the fiction: pinned down, disarmed, driven back, cut off, or too frightened to go on. Injury needs a status, death needs established lethal stakes (§6.7), and permanent harm needs an established consequence (§6.8).

#strong[Resisting while out.] Being Taken Out doesn't automatically stop you Resisting, but the Resistance must be something you can still do. You can brace against pain while pinned down, but you can't dodge while fully #emph[bound], or use an act of will while unconscious. When a status first takes you out, finish any Resistance already under way. Resistance can't reverse a defeat, undo an accepted concession, or prevent a cost you accepted as payment. Once a conflict is settled, you can only Resist the consequences that were left open to it; you can't use Resistance to reopen the intent or delay settlement.

#strong[Getting back in.] To rejoin a conflict that is still going, and that your side hasn't lost, you need both of these:
+ the condition that stopped you must be removed; and
+ an ability or rule must explicitly let a Taken Out character return.

Returning doesn't restore any of your side's Disposition unless the ability says so.

An ordinary Defend can't bring back a Taken Out ally unless its rules say it can. If you recover after the conflict is over, you act normally in the scenes that follow, subject to your remaining statuses.

=== 6.5 Rest and Recovery

Recovery follows four successive rest stages:

#figure(
  [#table(
    columns: (16%, 38%, 46%),
    align: (auto,auto,auto,),
    table.header([Rest], [Time required], [Recovery],),
    table.hline(),
    [First], [A few seconds; one action during an encounter], [Roll 1d12, halve the result and round up],
    [Second], [10 minutes], [Roll 1d12, halve the result and round up, then add 1],
    [Third], [1 hour], [Roll 1d12, halve the result and round up, then add 2],
    [Fourth], [10 hours, usually overnight], [Restore all four pools to full],
  )]
  , kind: table
  )

- #strong[Divide the recovered points among Sōma, Akmē, Psychē and Pneuma however you wish], without exceeding a pool\'s maximum. They don\'t have to go to whichever pool was drained most recently.

- #strong[Edge does not apply to recovery.] Edge only reduces Effort cost and adds Resistance dice (§2.4, §6); recovery stays flat so it can\'t stack with Edge\'s other benefits.
- After the 4th rest, the cycle resets --- your next rest that day (or the start of a new day) is a First rest again.
- Each PC rests and rolls independently. If two of five party members stop for 10 minutes to recover, the other three don\'t have to stop or roll.
- #strong[Running dry has no automatic refill.] A pool at 0 comes back through these rests in the normal way. Its running-dry status recovers separately, as described below.

#strong[Recovering running-dry statuses.] Restoring a pool doesn't clear its running-dry status, and clearing the status doesn't refill the pool. When you first record the status, choose its category:
- #strong[Depletion] (exhaustion, strain, temporary overload): the default, unless the source makes it an injury or affliction. It recovers through rest, as described below.
- #strong[Injury] (real physical damage): recovers through treatment, Restore and healing time, like any wound.
- #strong[Affliction] (supernatural or ongoing cause): recovers only as its source allows.

#strong[Resting off depletion] #emph[(playtest value)]#strong[.] When you take one of the 1st--3rd rests, you can put the recovery roll toward the pool, toward its depletion status, or split it between them. Every #strong[2 points] removes #strong[1 tier] of the depletion status. Each point counts once. The 4th rest (full restore) also clears any depletion status whose cause has ended. It doesn't clear Scars, injuries or afflictions. Reassurance or first aid can make recovery possible, but can't keep stripping depletion tiers with Restore. Abilities that explicitly restore exhaustion or harmful statuses work as written.

#strong[No shortcut.] Running dry never gives a special recovery roll, an automatic refill, or a way around the rest cycle. You can't overrun a pool on purpose to replace a bad recovery roll or to jump to a fresh rest stage.

#strong[Each layer recovers on its own.] Disposition, pools and statuses each recover only through their own procedure:
- #strong[Disposition] is set fresh when a genuinely new conflict begins (§10.2). Fresh Disposition doesn't refill pools or clear statuses, and a brief pause in the same struggle isn't a new conflict.
- #strong[Pools] recover through the rests above. A full pool doesn't heal an injury, and an injury doesn't stop pool recovery unless its rule says so.
- #strong[Statuses] recover by their kind: a temporary state ends when its cause or duration ends; injuries need treatment and time (§6.6); afflictions follow their source.

Winning a conflict, ending a scene or setting fresh Disposition is #strong[not a general reset].


#strong[Advance option --- Hardened] #emph[(6 XP, one-time)]

Recover #strong[1 additional point] whenever you make a recovery roll. This Advance may be taken only once. It does not change the fourth rest\'s full recovery.

=== 6.6 Treatment and Healing

#strong[Appropriate care.] Treatment must address the cause of the harm:

#figure(
  [#table(
    columns: (44%, 56%),
    align: (auto,auto,),
    table.header([Harm], [Typical care],),
    table.hline(),
    [Wounds, blood loss, poison], [Medicine and suitable supplies],
    [Fear, grief, shock], [Empathy, reassurance and safety],
    [Confusion, cognitive disruption], [Diagnosis, rest or specialist care],
    [Damaged machines or implants], [Science or Craft, tools and access],
    [Curses, possession, corruption], [A fitting supernatural method or the source's stated cure],
  )]
  , kind: table
  )

A skill doesn't supply the tools, knowledge or fictional permission on its own.

#strong[Routine care.] In safe conditions, when failure would add nothing, care needs no roll. It gives permission to treat, stabilises where nothing is uncertain, and meets the conditions for natural recovery. It #strong[generates no Power]. If ordinary treatment could remove one tier of a lasting injury and success is routine, remove that tier and mark the injury #emph[treated]; there's no surplus Power or Momentum. Roll only when an uncertain result matters, never just to farm Momentum.

#strong[Emergency care] stops an injury getting worse: stopping bleeding, splinting a limb, pulling someone away from a harmful influence, isolating a damaged power cell. It doesn't normally reduce the tier. When the outcome is uncertain, roll the treatment skill vs. #strong[Standard 15], adjusted by Truths. On a success, the deterioration stops or treatment can begin. On a Success at a Cost, the same, with the normal cost. On a failure, the condition is still untreated; the GM announces any further consequence before another attempt.

#strong[Restore on lasting injuries.] Restore costs 1 Power per tier (§5). It can clear a #strong[temporary] condition outright when the action removes its cause: putting out burning clothes reduces #emph[on fire], calming an ally reduces fear. #strong[Lasting injuries] are slower:
- Ordinary treatment reduces a given lasting injury by #strong[at most 1 tier]. Mark it #emph[treated].
- Further ordinary treatment can't reduce it again until a healing interval (below) actually removes a tier from it. Interrupting rest, changing healers, renaming the injury or starting a new scene doesn't clear the mark, and new harm to the same injury doesn't refresh it. A separate injury has its own mark.
- Spare Power buys other fitting Effects or becomes Momentum as normal.
- Abilities, cyphers and items that explicitly heal a stated number of tiers (such as #emph[healing gel]) follow their own text. Abilities that only change the cost of Restore don't lift the 1-tier limit.

#strong[Care in a conflict.] Treating someone under opposition uses your action. Emergency care can be a Defend only where the conflict type or an ability allows its skill (such as #emph[Battlefield Surgeon]). Restoring Disposition keeps your side in the contest; it doesn't heal an injury unless the action also buys a healing effect.

#strong[Healing intervals] #emph[(playtest values)]#strong[.] Once a lasting injury has had appropriate care and its cause has stopped, safe rest removes one tier per interval. Use the injury's current tier:

#figure(
  [#table(
    columns: (26%, 74%),
    align: (auto,auto,),
    table.header([Current tier], [Safe recovery to remove 1 tier],),
    table.hline(),
    [1], [One full night],
    [2], [One full day],
    [3], [Three full days],
    [4], [One full week],
    [5], [Appropriate treatment, then one full week],
    [6, not lethal], [Remove the incapacitating cause and set a recovery method],
    [6, life-threatening], [Stabilise, then definitive care before natural recovery begins (§6.7)],
  )]
  , kind: table
  )

These are game-time intervals, not medical estimates. A full night is the normal overnight rest; a full day is 24 hours in recovery conditions; a full week is seven such days. Intervals can overlap pool rests. Recovery needs shelter, food and care that suit the injury. Light activity is fine; strenuous activity that aggravates the injury stops recovery.

#strong[Timing.]
- When an injury's tier changes, its next interval uses the new tier.
- If treatment or healing lowers the tier, keep the qualifying time already spent. If that time already meets the new interval, remove one tier and start the next interval at zero. One change can complete only one interval.
- If fresh harm raises the tier, discard progress and start a new interval at the higher tier. Separate injuries don't reset each other.
- A brief interruption pauses recovery; it doesn't erase it. A bad roll on an unrelated action doesn't worsen an injury; that needs a relevant danger or a stated consequence.

#strong[Afflictions] (poison, disease, possession, curses, ongoing exposure) don't follow the interval table. When the affliction is identified, its source sets what worsens it, what suppresses it, what allows recovery, and whether treatment cures it or only eases the symptoms. A setting book can give specific afflictions, and creatures that recover in unusual ways, their own rules; where it does, those rules win.

=== 6.7 Dying and Stabilisation

#strong[Becoming Dying.] After Resistance and stacking, life-threatening physical harm that reaches tier 6 makes a living character #strong[Dying], if lethal stakes allow that outcome (§10.2). It also gives a Scar as normal (§6.3). The character is incapacitated and can't take ordinary actions. Start a #strong[3-segment Dying clock]. There is no extra #emph[dying] penalty; the injury already records the harm. Mental defeat, capture, exhaustion and ordinary fear never start a Dying clock, and a running-dry status is never lethal on its own.

#strong[Cadence.] When Dying begins, set how the clock advances: at the end of each exchange after the one in which Dying began, during a scripted conflict; or after a stated fictional interval, outside one. The clock advances #strong[because the interval passes], not because someone attempts treatment. Several characters can act in the same interval without advancing it further. Moving into or out of a scripted conflict carries the existing deadline over; it doesn't advance the clock or grant extra time.

#strong[Further harm.] Each further unmitigated physical harm that could worsen the mortal injury marks one extra segment, even though the injury stays at tier 6. One action or hazard can mark at most one extra segment. When the third segment is marked, the character dies.

#strong[Stabilising.] An adjacent character with suitable means rolls Medicine vs. #strong[Hard 18], adjusted by Truths. An ability or a fitting supernatural method can offer another way.
- #strong[Success:] the patient is stable and the clock stops.
- #strong[Success at a Cost:] stable, with the normal cost.
- #strong[Failure:] still Dying. The attempt uses the action, but doesn't advance the clock.

Stabilising doesn't erase marked segments, reduce the injury, refill pools or return the patient to the conflict. A stable patient can be moved with care. If a new event makes them Dying again, the clock resumes from its recorded segments.

#strong[Definitive care.] Emergency care can stabilise a tier-6 life-threatening injury but can't lower its tier. Lowering it below tier 6 takes #strong[definitive care]: a suitable procedure, facility or specialist, or an ability or item that explicitly heals the injury (such as #emph[Miracle Worker], #emph[Not on My Table] or #emph[healing gel]). The GM states what that requires when the injury is assessed and doesn't add requirements once they are met. When definitive care brings the injury below tier 6 and removes its immediate lethal cause, clear the Dying clock.

#strong[Immediate death.] Use it only when the established outcome leaves no plausible time for rescue, or a specific killing method calls for it (such as a creature's killing strike in a setting book). Announce that danger before the roll, and allow Resistance, escape or interruption. Once such an outcome is fully resolved, don't add a Dying clock to undo it; equally, don't skip the clock for an ordinary mortal wound just because the description is graphic.

#strong[Setting-specific harm.] If a setting gives a condition (such as blood loss) its own tiers and stabilising rules, use those instead of a Dying clock, not as well.

    
=== 6.8 Permanent Harm
#strong[Where it comes from.] An injury doesn't become permanent just because its tier is high. Permanent harm needs an established permanent-injury stake, a specific effect or creature rule, a voluntary bargain, or a Scar-giving event. Tier 6 always gives a Scar (§6.3), but never by itself severs a limb, destroys an organ, lowers a maximum pool or causes any other permanent mechanical loss.

#strong[The wound heals; the loss stays.] A permanent change can outlast the injury that caused it. When #emph[severed hand-4] has

healed, the hand is still gone: the status measured the acute
wound. Record the lasting change as a tag or a character fact, not as a status that never heals.

#strong[Adapting.] Training, help, prostheses, old-world works or supernatural intervention can change how permanent harm affects play. A replacement doesn't automatically remove a related Scar, and a Scar doesn't make a replacement useless. Don't reduce maximum pools, Edge, skills or Refresh unless the effect or an agreed Advance says so.
]
