#import "common.typ": *

== Module B --- The Grind & Travel (Mouse Guard)
#columns(2, gutter: 4mm)[
The Grind turns time, distance, and hardship into slow, steady pressure. It pairs with Mouse Guard\'s GM\'s Turn / Players\' Turn structure.

=== B.1 Session Structure
#figure(
  [#table(
    columns: (15%, 85%),
    align: (auto,auto,),
    table.header([Phase], [What happens],),
    table.hline(),
    [#strong[GM\'s Turn];], [The mission. The GM presents obstacles; every roll counts as a #strong[turn] on the Grind clock.],
    [#strong[Players\' Turn];], [Downtime after the mission. Players spend #strong[Checks] to take actions: recover, research, craft, pursue Goals.],
  )]
  , kind: table
  )

=== B.2 The Grind Clock
- During the GM\'s Turn, the GM keeps a #strong[Grind clock] visible to the table.
- #strong[Each roll] (including conflict actions as a group = 1 tick per exchange) ticks it by 1.
- #strong[Size by hostility:] 4 (harsh: desert, deep winter, the underworld), 6 (normal wilderness or dangerous city), 8 (gentle or well-supplied).
- #strong[When it fills:] every PC gains the next #strong[Grind condition] they don\'t have yet, then the clock resets. The GM may also spend 2 Woe to tick it.

=== B.3 Grind Conditions (taken in order)
#figure(
  [#table(
    columns: (13%, 22%, 30%, 35%),
    align: (auto,auto,auto,auto,),
    table.header([Order], [Condition], [Effect], [Cleared by],),
    table.hline(),
    [1], [#strong[Hungry & Thirsty];], [Short rests restore nothing], [A meal, a Survival roll (Restore)],
    [2], [#strong[Weary];], [Effort costs +1], [A full night\'s rest],
    [3], [#strong[Exposed] (cold, heat, wet)], [−1 Sōma Edge], [Shelter and a recovery roll],
    [4], [#strong[Shaken];], [−1 Pneuma Edge; Fear statuses +1 tier], [A Will or Empathy recovery roll, or a Belief moment],
    [5], [#strong[Sick];], [−1 to all rolls; can\'t recover pools], [Medicine roll (Hard) + rest],
    [6], [#strong[Broken];], [Taken Out of the mission; gain a Scar], [Players\' Turn only],
  )]
  , kind: table
  )

Grind conditions are statuses for Restore, but #strong[they don\'t stack] --- each is a separate condition.

=== B.4 Checks (Players\' Turn)
- #strong[Earn Checks] during the GM\'s Turn by #strong[applying one of your weakness tags or Scars to your own roll] (−1). You earn 1 Check, or 2 if the penalty makes the roll fail.
- #strong[Everyone gets 1 free Check] in the Players\' Turn.
- #strong[Spend 1 Check] for one Players\' Turn action: a recovery roll against a Grind condition or status, a downtime clock roll, a research or crafting roll, restoring a burned tag, attuning an artifact, or a scene that pursues your Goal.
- #strong[Sharing:] you can give a Check to another PC whose scene you take part in.

This makes weaknesses a deliberate resource: hurt yourself now to earn recovery and downtime later.

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

- #strong[Supplies:] the party has #strong[Supplies] as a status (start at 3--6). Lose 1 per leg. At 0, everyone becomes Hungry & Thirsty automatically and the Grind clock size drops by 2.
- #strong[Terrain and weather] are Truths that set Difficulty (#emph[Muskeg];, #emph[Whiteout];, #emph[Rapids];, #emph[Washed-out Road];).
- #strong[Encounters:] the GM spends Woe (1 for a minor encounter, 3 for a major one), or uses the Scout\'s failed roll.
- #strong[Portages and hard stretches:] a special leg (Endure or Athletics roll for every PC); failure ticks the Grind clock twice.
]
