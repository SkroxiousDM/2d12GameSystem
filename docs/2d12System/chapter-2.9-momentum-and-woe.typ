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

#strong[Script timing.] Change an action before its volley is revealed. Keep its assigned actor unless an explicit ability permits reassignment. This spend does not grant initiative cancellation, an extra turn, a rotation bypass or permission to cancel an independently resolving action.

#strong[Paying with Woe.] When the party is short, any spend in this table except #emph[Reduce Woe] can be paid in whole or in part by giving the GM 1 Woe per Momentum, with the GM's approval. Bonus dice can always be paid this way (§2.4). This existing permission also applies to script changes, subject to their normal timing and restrictions.

=== 9.2 Woe (the GM\'s pool)
#strong[Starting Woe:] 2 per PC at the start of a session. #strong[GM gains Woe from:] players buying dice or other Momentum spends with Woe, Success at a Cost (if chosen), failures (+1), complications bought off (+2), refused compels, Escalation (+1, §9.3), and dangerous scene Truths (+1 per scene).

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

#strong[Conflict consequences.] Use §10.7 for ordinary failure and Success at a Cost inside conflicts. Do not add an unrelated GM move, automatic injury or extra Disposition loss merely because an action failed. Explicit Woe spends, Specials, hazards and Risky rolls retain their stated effects.

#strong[Woe timing and scope.] Purchased complications must fit the stakes and timing. They do not retroactively alter committed scripts or cancel independently resolving actions unless an explicit rule permits it. Script changes must occur before the affected volley is revealed; use explicit ability exceptions at their stated timing. Woe cannot cancel an accepted payment through generic consequence-prevention wording (§10.7).
// OPEN: Woe generation for losing versus tests remains unresolved (§10.5).

=== 9.3 Escalation
Some acts and items make a situation more dangerous just by being there. They carry the #strong[Escalation] tag. It gives no bonus and doesn't count toward the tag cap.

- #strong[Escalation items.] Openly carrying an Escalation item into a scene gives the GM #strong[+1 Woe], once per item per scene. An item hidden before the scene starts doesn't count until it's drawn.
#colbreak()
- #strong[Escalation actions.] Declaring an Escalation action (reading a forbidden text, waking a dead machine, breaking a sacred taboo) gives the GM #strong[+1 Woe] before any roll.
- #strong[Keep it rare.] A playbook's starting kit should hold no more than one or two Escalation items. Settings list their own.
]
