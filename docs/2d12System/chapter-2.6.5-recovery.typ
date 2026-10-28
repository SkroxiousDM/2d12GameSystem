#import "common.typ": *

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
