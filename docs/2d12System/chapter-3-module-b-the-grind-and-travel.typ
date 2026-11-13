#import "common.typ": *

== Module B --- The Grind & Travel (Mouse Guard)
#columns(2, gutter: 4mm)[
The Grind turns time, distance and hardship into slow, steady pressure. Play alternates between a GM's Turn (the mission) and a Players' Turn (downtime).

=== B.1 Session Structure
#figure(
  [#table(
    columns: (15%, 85%),
    align: (auto,auto,),
    table.header([Phase], [What happens],),
    table.hline(),
    [#strong[GM\'s Turn];], [The mission. The GM presents obstacles, and rolls advance the Grind (B.2).],
    [#strong[Players\' Turn];], [Downtime after the mission. Players spend #strong[Checks] to take actions: recover, research, craft, pursue Goals.],
  )]
  , kind: table
  )

=== B.2 The Grind Clock
- During the GM\'s Turn, the GM keeps a #strong[Grind clock] visible to the table.
- #strong[Each action roll] ticks it by 1; Resistance and recovery rolls don't. In a scripted conflict, count #strong[1 tick per exchange];, not per volley, actor or die.
- #strong[Size by hostility:] 4 (harsh: desert, deep winter, the underworld), 6 (normal wilderness or dangerous city), 8 (gentle or well-supplied).
- #strong[When it fills:] every PC gains the next #strong[Grind condition] they don\'t have yet, then the clock resets. The GM may also spend 2 Woe to tick it.

The Grind uses its own rates, not the generic danger-clock rate, and failed conflict actions don't add ticks. It doesn't remove Disposition or cause injuries.

#strong[When it fills in a conflict,] apply the condition at the end of the current exchange, or when the conflict ends if that comes first. Outside a conflict, apply it at once. The timing never cancels an action that resolves on its own (Core Rules §10.5).
// PLAYTEST: Grind fill timing and action-roll-only ticks (optional modules pass 1, flag B1).

=== B.3 Grind Conditions (taken in order)
#figure(
  [#table(
    columns: (13%, 22%, 30%, 35%),
    align: (auto,auto,auto,auto,),
    table.header([Order], [Condition], [Effect], [Cleared by],),
    table.hline(),
    // PLAYTEST: R2 (Generic Focuses review), short rests named as First to Third rests.
    [1], [#strong[Hungry & Thirsty];], [First to Third rests restore nothing], [A meal, a Survival roll (Restore)],
    [2], [#strong[Weary];], [Effort costs +1], [A full night\'s rest],
    [3], [#strong[Exposed] (cold, heat, wet)], [−1 Sōma Edge], [Shelter and a recovery roll],
    [4], [#strong[Shaken];], [−1 Pneuma Edge; Fear statuses +1 tier], [A Will or Empathy recovery roll, or a Belief moment],
    [5], [#strong[Sick];], [−1 to all rolls; can\'t recover pools], [Medicine roll (Hard) + rest],
    [6], [#strong[Broken];], [Taken Out of the mission; gain a Scar], [Players\' Turn only],
  )]
  , kind: table
  )

Grind conditions count as statuses for Restore, but #strong[they don\'t stack] and have no tier: the Order column is the sequence you gain them in. Broken already includes its Scar; don't add a tier-6 Scar too.

#strong[Separate layers.] A condition that stops a PC contributing removes them from the conflict without costing Disposition; the side loses when nobody can pursue its objective (Core Rules §10.9). Clearing a condition doesn't refill pools, heal injuries, erase Scars or let a PC rejoin a conflict (Core Rules §6.4--6.6).

#strong[No Resistance.] Grind conditions are hardship, not harm: they can't be Resisted, only cleared. Ordinary tiered harm still uses core Resistance.

=== B.4 Checks (Players\' Turn)
- #strong[Earn Checks] during the GM\'s Turn by #strong[applying one of your weakness tags or Scars to your own roll] (−1). You earn 1 Check, or 2 if the penalty makes the roll fail.
- #strong[Everyone gets 1 free Check] in the Players\' Turn.
- #strong[Spend 1 Check] for one Players\' Turn action: a recovery roll against a Grind condition or status, a downtime clock roll, a research or crafting roll, restoring a burned tag, attuning an artifact, or a scene that pursues your Goal.
- #strong[Sharing:] you can give a Check to another PC whose scene you take part in.

Weaknesses become a resource: hurt yourself now to recover later. A Check permits an activity; it doesn't guarantee success. Lasting injuries still follow Core Rules §6.6, and another Check doesn't clear the treated mark. Module D, if used, replaces B.4.

=== B.5 Travel
A journey is a #strong[Journey clock] (6 for a short trip, 8 for a hard trip, 12 for an expedition). Each #strong[leg] (a day or a stage), the party assigns #strong[roles];; each role makes one roll:

#figure(
  [#table(
    columns: (16.83%, 20.79%, 62.38%),
    align: (auto,auto,auto,),
    table.header([Role], [Skill], [On success, spend Power on],),
    table.hline(),
    [#strong[Guide];], [Survival or Drive/Pilot], [#strong[Make Time] --- Advance the Journey clock],
    [#strong[Scout];], [Notice or Stealth], [#strong[Spot Trouble] --- Discover, or cancel one encounter the GM has prepared],
    [#strong[Quarter-master];], [Survival or Craft], [#strong[Forage / Ration] --- clear Hungry for the party, or +1 Supplies],
    [#strong[Lookout];], [Notice or Will], [#strong[Keep Watch] --- the party isn\'t surprised; Restore Shaken],
  )]
  , kind: table
  )

- #strong[Supplies:] the party tracks #strong[Supplies] as a counter, not a status (start at 3--6). Lose 1 per leg. At 0, everyone becomes Hungry & Thirsty automatically and the Grind clock shrinks by 2, to a minimum of 3.
- #strong[Terrain and weather] are Truths that set Difficulty (#emph[Muskeg];, #emph[Whiteout];, #emph[Rapids];, #emph[Washed-out Road];).
- #strong[Encounters:] the GM spends Woe (1 for a minor encounter, 3 for a major one), or uses the Scout\'s failed roll.
- #strong[Portages and hard stretches:] a special leg (Endure or Athletics roll for every PC); failure ticks the Grind clock twice.

#strong[Journeys and conflicts.] Advance buys 1 Journey segment per Power (Core Rules §7). Journey progress and Disposition don't affect each other. A travel encounter uses the conflict test (Core Rules §10.1): one obstacle may need a single roll, while a sustained chase may be a conflict. Travel roles don't become conflict actions.

Spot Trouble cancels a prepared encounter, not a resolved action or an ongoing conflict. Moving from travel into a chase doesn't reset a conflict already under way (Core Rules §10.2).

#strong[Prices.] Each role option costs 1 Power; Make Time advances the Journey clock 1 segment per Power. A failed hard stretch ticks the Grind clock twice in total, replacing the normal roll tick.
// PLAYTEST: 1-Power travel role options and hard-stretch tick total (optional modules pass 1, flag B3).
]
