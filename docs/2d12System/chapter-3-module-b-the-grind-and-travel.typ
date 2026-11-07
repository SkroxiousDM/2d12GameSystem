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
    [#strong[GM\'s Turn];], [The mission. The GM presents obstacles; rolls advance the Grind under B.2, with scripted conflict actions grouped by exchange.],
    [#strong[Players\' Turn];], [Downtime after the mission. Players spend #strong[Checks] to take actions: recover, research, craft, pursue Goals.],
  )]
  , kind: table
  )

=== B.2 The Grind Clock
- During the GM\'s Turn, the GM keeps a #strong[Grind clock] visible to the table.
- #strong[Each roll] outside scripted conflict actions ticks it by 1; conflict action rolls are grouped as #strong[1 tick per exchange], not one per volley, actor or die.
- #strong[Size by hostility:] 4 (harsh: desert, deep winter, the underworld), 6 (normal wilderness or dangerous city), 8 (gentle or well-supplied).
- #strong[When it fills:] every PC gains the next #strong[Grind condition] they don\'t have yet, then the clock resets. The GM may also spend 2 Woe to tick it.

The Grind is an explicit hardship procedure, not an additional GM move awarded by ordinary conflict failure. Preserve its listed cadence and 2-Woe tick cost rather than substituting the generic danger-clock rate. It neither removes shared Disposition nor automatically inflicts a bodily injury.

#strong[Open timing.] B.2 does not fully specify the treatment of incidental Resistance or recovery rolls during an exchange, a conflict ending partway through an exchange, or the exact point a filled Grind clock applies its condition. These remain separate timing rulings; the one-tick grouping for conflict action rolls does not resolve them. Do not use an unstated timing exception to cancel an independently resolving action (Core Rules §10.5, §10.12).

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

Grind conditions are statuses for Restore, but #strong[they don\'t stack] --- each is a separate condition. The Order column gives their acquisition sequence, not a harmful status tier. Apply each condition's listed effect and recovery requirement; Hungry & Thirsty is not automatically tier 1, nor Sick automatically tier 5. Broken explicitly removes the character from the mission and gives a Scar; do not add a second generic tier-6 Scar merely because it is sixth in the list.

#strong[Separate layers.] A condition that prevents contribution to a conflict can remove that participant without subtracting Disposition. A side loses when nobody can pursue its objective, after independent actions finish. Clearing a Grind condition does not refill a pool, heal a separate injury, erase a Scar or grant permission to rejoin an ongoing conflict; apply Core Rules §6.4--6.6 and §10.9. Pool recovery remains subject to Hungry & Thirsty and Sick as listed above.

#strong[Resistance scope remains open.] This table does not specify a general Resistance procedure for acquiring its non-tiered Grind conditions. Do not infer one from the Order numbers. Ordinary imposed tiered harm uses the core Resistance rules; running-dry statuses and accepted payments retain their own exclusions. This compatibility pass does not decide whether or how a Grind condition can be Resisted.

=== B.4 Checks (Players\' Turn)
- #strong[Earn Checks] during the GM\'s Turn by #strong[applying one of your weakness tags or Scars to your own roll] (−1). You earn 1 Check, or 2 if the penalty makes the roll fail.
- #strong[Everyone gets 1 free Check] in the Players\' Turn.
- #strong[Spend 1 Check] for one Players\' Turn action: a recovery roll against a Grind condition or status, a downtime clock roll, a research or crafting roll, restoring a burned tag, attuning an artifact, or a scene that pursues your Goal.
- #strong[Sharing:] you can give a Check to another PC whose scene you take part in.

This makes weaknesses a deliberate resource: hurt yourself now to earn recovery and downtime later. Spending a Check permits the activity, not automatic success or recovery beyond its applicable limits. Treatment of lasting injuries follows §6.6; another Check or a new scene does not clear the treated mark. Checks grant no extra scripted turn or rotation bypass. If Module D is used, it replaces B.4 with its own Players' Turn and stay procedure.

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

#strong[Journey, hardship and conflict.] Advance buys 1 Journey segment per Power (Core Rules §7). That progress is not Disposition loss, and neither track automatically changes the other. A travel encounter uses the ordinary conflict test (§10.1): a single obstacle may need one roll, while a sustained chase or struggle against the wild may merit scripting. Use that conflict's action skills, rotation and permitted effects; the travel role menu does not become a general conflict Maneuver menu.

The Scout's option concerns a prepared encounter, not cancellation of an already resolved action or automatic victory in an ongoing conflict. Changing from travel narration to a Chase or Survive the Wild does not itself reset an existing conflict's Disposition, used injury trades or Taken Out participants (§10.2). A genuinely new conflict needs a materially different objective or changed circumstances.

#strong[Retained travel questions.] The short role entries do not state every Power price for their special options; the hard-stretch rule also leaves whether its two failure ticks replace or add to the ordinary roll tick unspecified. This pass preserves those entries and does not invent prices or extra ticks.
]
