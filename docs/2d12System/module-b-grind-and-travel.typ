// Module B — The Grind & Travel (Mouse Guard)
// Include in Chapter III after Module A, outside any columns block.
// If Module D is used, D.1 replaces B.4 and the Players' Turn below.
== Module B --- The Grind & Travel (Mouse Guard)
#columns(2, gutter: 6mm)[
The Grind turns time, distance, and hardship into slow, steady pressure. It pairs with a GM's Turn / Players' Turn structure.

=== B.1 Session Structure
#table(columns: (22%, 78%),
  table.header([Phase], [What happens]),
  [*GM's Turn*], [The mission. The GM presents obstacles; each roll is a turn on the Grind clock.],
  [*Players' Turn*], [Downtime after the mission. Players spend Checks to recover, research, craft, or pursue Goals.],
)

=== B.2 The Grind Clock
- The GM keeps a visible *Grind clock* during the GM's Turn.
- Each roll ticks it by 1. A conflict ticks it once per exchange, for the whole group.
- *Size by hostility:* 4 (harsh: desert, deep winter, the underworld), 6 (wilderness or dangerous city), 8 (gentle or well supplied).
- *When it fills:* every PC gains the next Grind condition they lack, then the clock resets. The GM may spend 2 Woe to tick it.

=== B.3 Grind Conditions
Taken in order. Each is a status for Restore, and they do not stack.

#table(columns: (9%, 21%, 36%, 34%),
  table.header([No.], [Condition], [Effect], [Cleared by]),
  [1], [*Hungry & Thirsty*], [Short rests restore nothing], [A meal, or a Survival roll (Restore)],
  [2], [*Weary*], [Effort costs +1], [A full night's rest],
  [3], [*Exposed* (cold, heat, wet)], [−1 Sōma Edge], [Shelter and a recovery roll],
  [4], [*Shaken*], [−1 Pneuma Edge; Fear statuses +1 tier], [A Will or Empathy recovery roll, or a Belief moment],
  [5], [*Sick*], [−1 to all rolls; cannot recover pools], [Medicine roll (Hard) and rest],
  [6], [*Broken*], [Taken Out of the mission; gain a Scar], [Players' Turn only],
)

=== B.4 Checks
- *Earn:* during the GM's Turn, apply one of your weakness tags or Scars to your own roll (−1). You earn 1 Check, or 2 if the penalty makes the roll fail.
- *Free:* everyone gets 1 Check in the Players' Turn.
- *Spend 1 Check* on one action: a recovery roll against a Grind condition or status, a downtime clock roll, research or crafting, restoring a burned tag, attuning an artifact, or a scene pursuing your Goal.
- *Share:* give a Check to another PC whose scene you join.

Weaknesses become a resource: hurt yourself now to earn recovery later.

=== B.5 Travel
A journey is a *Journey clock*: 6 (short trip), 8 (hard trip), 12 (expedition). Each leg (a day or a stage), the party assigns roles. Each role makes one roll.

#table(columns: (19%, 25%, 56%),
  table.header([Role], [Skill], [On success, spend Power on]),
  [*Guide*], [Survival or Drive/Pilot], [*Make Time:* Advance the Journey clock],
  [*Scout*], [Notice or Stealth], [*Spot Trouble:* Discover, or cancel one prepared encounter],
  [*Quartermaster*], [Survival or Craft], [*Forage/Ration:* clear Hungry for the party, or +1 Supplies],
  [*Lookout*], [Notice or Will], [*Keep Watch:* the party is not surprised; Restore Shaken],
)

- *Supplies:* a party status starting at 3--6. Lose 1 per leg. At 0, everyone becomes Hungry & Thirsty and the Grind clock size drops by 2.
- *Terrain and weather* are Truths that set Difficulty (_Muskeg_, _Whiteout_, _Rapids_, _Washed-out Road_).
- *Encounters:* the GM spends Woe (1 minor, 3 major), or uses the Scout's failed roll.
- *Portages and hard stretches:* a special leg with an Endure or Athletics roll for every PC. Failure ticks the Grind clock twice.
]
