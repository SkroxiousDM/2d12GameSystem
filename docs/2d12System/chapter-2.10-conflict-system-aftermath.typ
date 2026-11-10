#import "common.typ": *

#columns(2, gutter: 6mm)[
=== 10.8 Scenery Maneuvers
A Maneuver may exploit an established feature: a Scene Truth or established fact. If it is not established, create or discover it first. Name the feature when scripting. If it is unavailable at resolution, the Maneuver produces no scenery effect; do not substitute another feature for free. Each feature supports one scenery action per conflict unless its nature clearly permits reuse.
]
#figure(table(columns: (17%, 20%, 8%, 30%, 25%),
  table.header([Action], [Requirement], [Power], [Result], [Danger]),
  [Grab a Ride], [A fixture and clear path], [2], [Gain Position and move to another reachable location; ignore Impede this volley.], [Tier-1 winded.],
  [Tip & Drop], [A heavy object and a target below], [3], [Remove 3 opposing Disposition, without the Attack bonus.], [An ally takes tier-1 struck.],
  [Floor Collapse], [A support that can be broken], [4], [Create rank-2 Collapsing Floor in the affected area.], [Tier-1 stunned or a lost tag.],
  [Carpet Pull], [A suitable covering and unwarned foes], [2], [Impede each opposing participant's next action roll this exchange.], [Your next Defend takes −1.],
  [Drape Drop], [Hangings, netting or similar material], [1], [Impede the opposing side's next action.], [Your next action takes −1.],
  [Shove 'Em Off], [An edge and an adjacent target], [3], [One opponent loses their next scripted action while recovering.], [Tier-2 off balance.],
  [Make a Hazard], [Fuel, fluid or a breakable container], [2], [Create a rank-1 hazardous Truth in the area.], [You are also exposed to it.],
))
#columns(2, gutter: 6mm)[
The GM may trigger the listed Danger for 1 Woe. Danger statuses are Resistable normally. A fall is lethal only with established lethal stakes. Describe results consistently: a collapsing floor or spreading fire affects everyone within its established scope. Dangerous Scene Truths generate Woe normally.

In other types, scenery might be a witness, document, crowd, access point, market stall or bridge. Adapt the nearest effect only when its requirements and consequences remain meaningful.

=== 10.9 Shared Disposition and Participation
Each side has one shared total. Do not divide it among participants; there are no individual shares or spill-over. Ordinary Disposition loss removes no particular participant.

A participant stops acting when a status, explicit effect, withdrawal or established circumstance prevents contribution to the objective. Their removal does not directly reduce shared Disposition. A side loses at 0 Disposition or when none of its participants can continue pursuing its objective. Finish independent actions before checking victory.

==== Companions and Groups
Distinguish a participant, which takes assigned actions and is bound by the side's stakes, from an asset, which supplies tags, information or explicitly permitted helping benefits without independent turns. Do not count the same companion twice merely because it can perform both functions.

An independently acting companion occupies a place in continuous rotation, uses its listed skills or ratings and can be prevented from acting or Taken Out. It has no separate Disposition track or injury trade unless explicitly granted one.

A group represented by one rules entry is one participant for rotation and area-effect Disposition bonuses, not one per fictional body. Apply specific Bodies or mass-combat rules only where provided.

Setup Help costs no pool points, requires a meaningful contribution before the leader rolls and grants only +1 starting Disposition per eligible helper unless expressly stated otherwise. Ordinary free Help waives its pool-point cost, not relevance, bonus-dice limits or participation risks. Removing a companion or group subtracts no Disposition, but may defeat the side if nobody remains able to pursue the objective.

==== Starting Disposition and Reinforcements
At the end of setup, record the side's adjusted starting Disposition after all modifiers and Superiority. This value remains fixed for the conflict and determines its normal Disposition-recovery cap and compromise reference (§10.13).

Reinforcements add their listed Grit to the side's current shared Disposition, even above its starting value. They do not increase starting Disposition or its normal recovery cap.

Defend and other Disposition-recovery effects restore only up to that starting value unless an explicit rule states otherwise. If current Disposition is already at or above the cap, those effects restore nothing; they do not reduce the existing total. This limits recovery, not other permitted supplementary purchases on a successful Defend (§10.6).

Removing a participant does not subtract its Grit from current or starting Disposition. Reinforcement arrival grants no additional scripted action, free actor reassignment or recalculation of setup.

Record new starting Disposition only for a genuinely new conflict. Changing location, tactics or conflict type within the same unresolved struggle does not qualify (§10.2).

=== 10.10 Conflict Gear and Assets
Equipment normally provides an action tag, counting toward the normal +2 tag cap. It may also have one explicitly written distinctive quality. Do not invent qualities during resolution.
#figure(table(columns: (70%, 30%),
  table.header([Asset], [Typical tag]),
  [Sword or knife], [+1 Attack],
  [Shield or prepared cover], [+1 Defend],
  [Spear, polearm or scoped rifle], [+1 Maneuver],
  [Smoke grenade or false papers], [+1 Feint],
  [Relevant evidence], [+1 Attack in an Argument],
  [Prepared treaty draft], [+1 Maneuver in a Negotiation],
))
An asset helps only when its use explains how it applies.

==== Optional Distinctive Qualities
- #strong[Sword:] before the first exchange is scripted, assign its +1 tag to one action category for the conflict instead of always using Attack.
- #strong[Axe:] when at least 1 Power is committed to a successful Attack's Disposition effect, remove 1 additional Disposition. Take −1 on Defend while using it.
- #strong[Shield:] once per conflict, after a successful Defend, restore 1 additional Disposition.
- #strong[Knife:] against a cumbersome weapon at established close range, Disarm costs 2 Power instead of 3.
- #strong[Bow:] while the opponent cannot reach you and lacks an effective ranged response, Attack versus Attack is a versus test instead of independent.

Additional Disposition loss is not Power. A distinctive quality does not automatically grant a second tag.

==== Non-Combat Assets
Evidence, promises, maps, supplies, local contacts, fortifications and plans may be assets. Evidence supports what it establishes; a promise helps only if the recipient values it; a map helps while relevant; supplies and fortifications must first be secured.

Explain arguments through direct dialogue or third-person description. Award no bonus merely for theatrical delivery.

==== Changing Equipment
Declare active equipment before scripting each exchange. Switching does not refresh a once-per-conflict quality, erase a continuing drawback or restore a lost asset.

=== 10.11 Accepting Injury
Once per character per conflict, accept a lasting injury to cancel some loss from a successful Attack or Feint. Declare before applying loss. Only one participant may trade against each Attack or Feint.
#figure(table(columns: (60%, 40%),
  table.header([Accepted injury], [Loss cancelled]),
  [Tier 2], [1], [Tier 3], [2], [Tier 4], [3],
))
Name the injury and explain how it preserves the side's position. It must follow from the action, have a relevant effect, be new or worsen a status, and remain below tier 6 after stacking.

You cannot:
- Pay with an injury already present or an irrelevant or wholly redundant status.
- Trade after being Taken Out.
- Cancel more loss than inflicted.
- Cancel loss from Maneuvers, hazards, voluntary costs or special effects unless permitted.
- Cancel an execution, imposed status or anything other than ordinary Attack or Feint Disposition loss.
- Invent bodily injury to pay for a purely logistical setback.

An accepted injury is a payment: Armour, Resistance, cancellation and side benefits cannot prevent or reduce it. It recovers through treatment and time. The trade cancels incoming loss, not loss already suffered, and does not raise starting Disposition. Refresh only for a genuinely new conflict.

=== 10.12 Defeat, Mutual Defeat and Concession
==== Finish the Action
Complete costs, choices and effects before removing a participant because of that action. Independent actions both resolve even if one takes its opponent out. Check victory afterward.

==== Defeat and Finishing Procedures
The winner achieves its intent within the established stakes, subject to compromise. Do not repeat the same unresolved contest; a new conflict requires a materially different objective or changed circumstances. Defeat does not automatically inflict injury or satisfy a creature-specific finishing requirement.

Where an explicit finishing procedure is required, victory secures the opportunity to attempt it. Complete the deciding volley and determine victory or mutual defeat, resolve any permitted finishing procedure, then settle compromise. Follow the relevant creature or setting entry for requirements and resolution.

==== Mutual Defeat
If both sides are defeated in the same volley, or both start at 0 Disposition after Superiority (§10.3), neither wins outright. Resolve compatible parts of both intents and a shared setback within the stakes. Neither receives an incompatible outcome automatically. Calculate no winner's compromise. For simultaneous setup defeat, do not script exchanges; apply the setup boundaries in §10.3.

==== Concession
Before the next roll, propose an end to the conflict. State what the opponent gains, what your side retains, all injuries, losses, promises or obligations, and how the immediate struggle ends.

Offer meaningful success that fits the situation. A mindless predator may require an escape opportunity or sacrifice rather than surrender. If accepted, apply the terms without another roll. Do not also apply compromise unless included. Agreed costs cannot be Resisted or cancelled; injuries recover normally. If rejected, continue. Conceding grants no automatic Tychē Point.

=== 10.13 Compromise
Compare the winner's remaining Disposition with its adjusted starting value:
#figure(table(columns: (65%, 35%),
  table.header([Starting Disposition lost], [Compromise]),
  [None], [None],
  [More than 0, less than half], [Minor],
  [At least half, less than three-quarters], [Significant],
  [Three-quarters or more], [Major],
))
Use proportions without rounding.

Use the winner's original adjusted starting value recorded at setup. If remaining Disposition equals or exceeds it, the winner has lost no starting Disposition for compromise purposes. Reinforcement Disposition does not create a larger compromise denominator, a separate loss ledger or a requirement to reconstruct losses before help arrived. Setup outcomes at 0 use §10.3 instead; overwhelming preparation and simultaneous setup defeat require no winner's compromise calculation.

==== What Compromise Means
The winner achieves its intent, but the loser earns a proportionate concession:
- #strong[Minor:] limited concession, delay, obligation, expenditure or complication.
- #strong[Significant:] substantial concession, restricted terms, important loss, serious injury or meaningful part of the loser's objective.
- #strong[Major:] narrow victory at a major price: lasting obligation, severe injury, important loss or powerful new danger.

These are consequence packages, not mandatory lists. Do not automatically add injury to an adequate non-injury concession. Compromise cannot simply reverse the result or grant the loser's complete incompatible objective.

==== Negotiating Terms
+ Establish the grade.
+ The loser proposes terms.
+ Confirm what the winner achieves.
+ Confirm what the loser retains or gains.
+ State all costs and who pays.
+ Credit eligible existing injuries.
+ Resolve eligible Resistance.
+ Record the binding result.

Keep terms proportionate, relevant and within the stakes. If agreement proves difficult, the GM adjudicates using these limits. Disagreement does not cancel earned compromise.

==== Injury Guidance
When appropriate to the package, use tier 2 for Minor, tier 3 for Significant and tier 4 for Major as starting guidance, not automatic injuries, minimum costs or penalties for everyone.

==== Existing Injuries
An injury suffered during this conflict satisfies one injury cost assigned to that character if its current tier meets or exceeds the required tier. Each injury counts once. Do not pool, split, transfer or credit injuries against non-injury consequences. An injury treated below the required tier no longer satisfies the cost. Add no replacement injury because an existing one satisfies the first.

==== Resistance
Imposed compromise statuses may be Resisted normally; agreed payments cannot. Resistance may remove an injury but does not revoke the loser's concession or another stated consequence. Add no replacement cost because Resistance removed the injury.

==== Binding Results
Victory, concessions, promises and consequences stand. Genuinely new events may change them; do not ignore or immediately reroll them because someone dislikes the result.

=== 10.14 NPCs and Harm
Ordinary NPCs and minion groups cannot trade injury. A named rival built as a full PC may; others require an explicit trait.

Ordinary NPCs have no Pools and reduce imposed harm only through listed Armour, traits or abilities. Apply at most one reduction per imposed status application, never to ordinary Disposition loss or an accepted payment.

NPC defeat establishes defeat in this contest, not automatic injury or death. Capture, escape, injury and death follow the stakes and outcome. Use a Dying clock when rescue matters, not to make an accepted rescue objective impossible.

Creature-specific rules remain in force. Immunity may stop an unsuitable status without stopping Disposition loss in a contest the creature can lose.

#strong[Specific breaking points.] Apply the normal tier-6 procedure unless the relevant creature or condition explicitly replaces it. Use that entry's stated outcome and the applicable limits against duplicate Scars.

=== 10.15 Order of Resolution
+ Establish objectives, stakes, participants and exits.
+ Calculate starting Disposition and Superiority.
+ After determining both adjusted totals, resolve overwhelming preparation or simultaneous setup defeat, if applicable.
+ Script the exchange and assign actors.
+ Reveal the next volley.
+ Determine the interaction.
+ Pay pre-roll costs; resolve running dry.
+ Roll and determine Power.
+ Make permitted post-roll choices and pay their costs.
+ Allocate Power.
+ Calculate Disposition loss separately from statuses.
+ Offer eligible injury trades.
+ Apply remaining Disposition loss.
+ Resist eligible statuses, stack what remains and resolve tier 6, including explicit creature exceptions.
+ Complete any independent opposing action.
+ Check removal, victory and mutual defeat.
+ Before the next roll, allow concession proposals.
+ Resolve permitted creature finishing procedures before compromise.
+ Settle compromise or concession.
+ Recover each layer only through its own procedure.

Specific rules override general rules only on the subject addressed. Healing a status does not restore Disposition, refresh an injury trade or remove a Scar.

=== 10.16 Keeping It Fast
- Use full conflicts only when several tactical decisions matter.
- Record objectives and starting Disposition visibly.
- Use three cards or entries for each script.
- Keep one continuous acting order per side.
- Treat minion groups as one coordinated participant unless separation matters.
- Describe volleys briefly; reserve extended narration for decisive moments.
- Negotiate one coherent compromise package, not accumulating penalties.

Disposition around 8--11 is the initial pacing target. Aim for two or three exchanges and roughly 15--20 minutes, then adjust through playtesting rather than adding steps.
]

