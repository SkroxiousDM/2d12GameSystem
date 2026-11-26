#import "common.typ": *

== 9. Weal and Woe <core-weal-woe>
  #columns(2, gutter: 6mm)[
=== 9.1 Weal (shared by the party, max 6) <core-weal>
#strong[Gain:] unspent Power from rolls. #strong[Decay:] lose 1 Weal at the end of each scene.

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
    [Change one unrevealed scripted action in a conflict (@core-scripting-volleys)], [2],
    [Reduce Woe by 1], [2],
  )]
  , kind: table
  )

// PLAYTEST: where a 2-Weal or 2-Woe Truth may create a concrete obstacle rather than a resource or alternative approach. Neither can settle a disputed objective by declaration.
#strong[Truths, not ratings.] Create a Truth buys one justified scene-scale fact at an appropriate moment (@core-establishing-recording). It grants no extra action, automatic success, Situational Condition rating or result beyond the stakes, and in a conflict it follows normal timing and permissions (@core-conflict-limits-reference). There is no Weal or Woe purchase of status tiers or Condition ratings: when the point is numerical help or interference, use an action that buys a Condition, an Effect or an explicit ability. Buying the existence of a maintenance passage establishes an approach, not #emph[prepared escape routes 2]; buying a smoke pot supplies the pot, and using it follows its own rules.

#strong[Reduce Woe.] Removing 1 Woe costs 2 Weal here but 3 Power through Disrupt (@core-actions-effects). Weal decays at the end of each scene, so it is the cheaper but less durable price.

#strong[Paying with Woe.] When the party is short, the GM may let you pay any spend except #emph[Reduce Woe], in whole or in part, by giving the GM 1 Woe per Weal. Bonus dice can always be paid this way (@core-bonus-dice-effort).

=== 9.2 Woe (the GM\'s pool) <core-woe>
#strong[Starting Woe:] 2 per PC at the start of a session.

#strong[The GM gains Woe from:]
- players paying for dice or other Weal spends with Woe (1 per point);
- complications bought off: 1, 2 or 3 by original severity (@core-doubles);
- Escalation (+1, @core-escalation);
- a dangerous circumstance (lethal stakes or a listed Danger, @core-dangers-conflicts) first becoming relevant in a scene: +1, and no more than +1 per scene from dangerous circumstances in total.
    
#figure(
  [#table(
    columns: (65%, 35%),
    align: (auto,auto,),
    table.header([GM spend], [Cost],),
    table.hline(),
    [Complication on a player's roll (@core-doubles)], [1 minor / 2 moderate / 3 major],
    [Tick a danger clock], [1 per segment],
    [NPC bonus die], [1 per die],
    [Activate an NPC/monster special ability], [1--3],
    [Create a Truth], [2],
    [Reinforcements], [1 per minion, 3 for a significant NPC],
    [Change one unrevealed action in the NPC side's script (@core-scripting-volleys)], [3],
    [Cancel an NPC's complication (@core-doubles)], [1 / 2 / 3 by original severity],
    [Make a roll Risky 1, or raise its Risk by 1 (@core-risky-rolls)], [1],
  )]
  , kind: table
  )

// PLAYTEST: scene-wide cap on dangerous-circumstance Woe, replacing +1 per dangerous Truth; check hazard-heavy scenes.
#strong[Danger Woe.] There is no extra Woe for each target, duplicate description or higher rating, and none from a hazard the GM created by spending Woe in that scene. Gaining this Woe doesn't activate the hazard: a listed scenery Danger still costs 1 Woe to trigger, and a danger clock 1 Woe per segment.

#strong[Buying a complication.] After a player's roll is resolved and before the player chooses a response, the GM may spend Woe to add a complication to it, whatever the outcome. The GM states the concrete consequence and its severity first, then pays 1 Woe for minor, 2 for moderate or 3 for major. Add no more than one Woe-bought complication to a roll. It must arise from the established danger or situation. The player responds as with any other complication: Woe buyoff, then Power mitigation, then Resistance (@core-doubles). The GM's Woe isn't refunded if the player buys it off.

#strong[Complications carry no free rating.] A complication bought with Woe doesn't include an unnamed status or Situational Condition. Use a listed effect or an NPC action when numerical interference is intended; Conditions can still arise from properly resolved failures, hazards or explicit abilities.

#strong[In conflicts,] complications and Woe spends follow @core-costs-failures-complications. Explicit Woe spends, Specials, hazards and Risky rolls keep their stated effects.

=== 9.3 Escalation <core-escalation>
Some acts and items make a situation more dangerous just by being there. They carry the #strong[Escalation] tag. It supplies no Power and doesn't count toward the tag cap.

- #strong[Escalation items.] Openly carrying an Escalation item into a scene gives the GM #strong[+1 Woe], once per item per scene. An item hidden before the scene starts doesn't count until it's drawn.
- #strong[Escalation actions.] Declaring an Escalation action (reading a forbidden text, waking a dead
machine, breaking a sacred taboo) gives the GM #strong[+1 Woe] before any roll.
- #strong[Keep it rare.] A playbook's starting kit should hold no more than one or two Escalation items. Settings list their own.
]
