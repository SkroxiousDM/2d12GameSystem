#import "common.typ": *

== 9. Momentum and Woe
  #columns(2, gutter: 6mm)[
=== 9.1 Momentum (shared by the party, max 6)
#strong[Gain:] unspent Power from rolls. #strong[Decay:] lose 1 Momentum at the end of each scene.

#figure(
  [#table(
    columns: (78%, 22%),
    align: (auto,auto,),
    table.header([Spend], [Cost],),
    table.hline(),
    [Add a bonus die], [1 (first) / 2 (second)],
    [+1 Power on a success], [2],
    [Ask the GM a question (Discover)], [1],
    [Create a Truth], [2],
    [Change one unrevealed scripted action in a conflict (§10.5)], [2],
    [Reduce Woe by 1], [2],
  )]
  , kind: table
  )

#strong[Paying with Woe.] When the party is short, the GM may let you pay any spend except #emph[Reduce Woe], in whole or in part, by giving the GM 1 Woe per Momentum. Bonus dice can always be paid this way (§2.4).

=== 9.2 Woe (the GM\'s pool)
#strong[Starting Woe:] 2 per PC at the start of a session.

#strong[The GM gains Woe from:]
- players paying for dice or other Momentum spends with Woe (1 per point);
- Success at a Cost, if the player chooses Woe (+1);
- failures (+1);
- complications bought off (+2);
- refused compels;
- Escalation (+1, §9.3);
- dangerous scene Truths: those with lethal stakes or a listed Danger (+1 per scene each, §8).

#figure(
  [#table(
    columns: (65%, 35%),
    align: (auto,auto,),
    table.header([GM spend], [Cost],),
    table.hline(),
    [Complication or minor twist], [1],
    [Tick a danger clock], [1 per segment],
    [NPC bonus die], [1 per die],
    [Activate an NPC/monster special ability], [1--3],
    [Create a Truth], [2],
    [Reinforcements], [1 per minion, 3 for a significant NPC],
    [Change one unrevealed action in the NPC side's script (§10.5)], [3],
    [Cancel an NPC's complication from the dice (§2.6)], [2],
    [Make a roll Risky 1, or raise its Risk by 1 (§2.7)], [1],
  )]
  , kind: table
  )

#strong[In conflicts,] failure, Success at a Cost and Woe spends follow §10.7. Explicit Woe spends, Specials, hazards and Risky rolls keep their stated effects.

=== 9.3 Escalation
Some acts and items make a situation more dangerous just by being there. They carry the #strong[Escalation] tag. It gives no bonus and doesn't count toward the tag cap.

- #strong[Escalation items.] Openly carrying an Escalation item into a scene gives the GM #strong[+1 Woe], once per item per scene. An item hidden before the scene starts doesn't count until it's drawn.
#colbreak()
- #strong[Escalation actions.] Declaring an Escalation action (reading a forbidden text, waking a dead machine, breaking a sacred taboo) gives the GM #strong[+1 Woe] before any roll.
- #strong[Keep it rare.] A playbook's starting kit should hold no more than one or two Escalation items. Settings list their own.
]
