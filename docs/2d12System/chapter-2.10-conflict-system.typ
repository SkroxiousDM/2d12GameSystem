#import "common.typ": *

== 10. Conflict System <core-conflict-system>
#columns(2, gutter: 6mm)[
Use a scripted conflict for a consequential struggle in which opposing sides can make several meaningful tactical decisions. A conflict might be a fight, chase, argument, negotiation, infiltration, battle, supernatural contest, or struggle against a dangerous environment.

Each side declares an intent, establishes its starting Disposition, and secretly chooses three actions. Reveal and resolve those actions one volley at a time. Continue until one side wins, both sides are defeated, or the participants agree to a concession.

#strong[Disposition] measures a side's ability to keep pursuing its objective. It isn't health, ammunition, morale alone, or a count of individual participants.

=== 10.1 When to Use a Conflict <core-when-use-conflict>
Use a scripted conflict when all three conditions are present:
- The outcome matters enough to deserve sustained attention.
- An opponent or significant force can actively resist the intended outcome.
- Several meaningful tactical choices could change how the struggle ends.

Otherwise, use an ordinary roll or resolve the situation without rolling. A named opponent, a dangerous situation, or a large group doesn't automatically require a conflict.

==== Each Side Needs an Objective
State what each side wants to accomplish, not merely what it wants to prevent. Suitable objectives include:
- Hold the bridge until the refugees cross.
- Capture the courier before she reaches the harbour.
- Convince the council to release the prisoners.
- Escape the hunters without revealing the refuge.
- Reach shelter before the storm cuts off the pass.

An objective may be defensive. Holding the bridge until the refugees cross gives the defenders something concrete to achieve. Merely stopping the enemy usually needs more definition.

Environmental opposition also needs a stated outcome: the storm strands the travellers, the fire consumes the archive, or the river carries away the crossing.

=== 10.2 Setup <core-setup>
Complete these steps before scripting:
+ Declare intent and stakes.
+ Choose the conflict type.
+ Establish participants and sides.
+ Calculate starting Disposition.
+ Apply Superiority to both sides and resolve any setup defeat (@core-superiority).
+ Record the adjusted starting Disposition.
+ Establish the acting order and script the first exchange.

==== Intent and Stakes
Each side states what it gains by winning. Establish what losing allows the opposition to do and whether capture, death, permanent injury, exposure, or another lasting consequence is possible.

Discuss what withdrawal or concession could look like.

Intent limits victory. Defeating a side whose objective is to hold a doorway doesn't automatically let the winner kill everyone, seize unrelated possessions, or achieve another objective.

==== Lethal Stakes
Establish lethal stakes before the roll or exchange that could produce a lethal outcome.

Stakes may change when circumstances change, but never retroactively. Explain the new danger and allow affected participants to respond before resolving it.

Lethal stakes make death possible, not automatic (@core-defeat-mutual-defeat-concession).

==== Participants
A participant must be able to contribute to the side's objective. #strong[Backing] the side at setup commits a character to that side's stakes. Helping an action during the conflict likewise makes the helper a participant if they were not already involved.

A character who can't meaningfully contribute may remain outside the conflict. Don't include them merely to increase Disposition. Companions and groups follow @core-shared-disposition-participation.

==== Starting Disposition
The leader normally rolls #strong[2d12 + Disposition skill + highest Edge in that skill's pool]. Divide the result by three, rounding down. Then:
- Add +1 per eligible backer. Backing isn't Help: it costs no pool points and gives no bonus die. Before the leader rolls, each backer explains a meaningful contribution and commits to the side's stakes. A free-Help ability adds nothing more unless it says so.
- Apply flat starting-Disposition bonuses and penalties from abilities, creature rank, conditions, and similar effects; these have no stacking cap.
- Apply a minimum of 1.
- Apply opposing Superiority (@core-superiority).

Record the adjusted total. It stays fixed for the conflict as the recovery cap and compromise reference, even if participants later leave (@core-shared-disposition-participation).

#strong[Adversary exception.] Sides built with Grit use the Adversaries setup procedure instead of the leader's Disposition roll.

==== Continuing the Same Conflict
Set fresh Disposition only for a genuinely new conflict with a materially different objective or changed circumstances. Passing through a doorway, changing tactics, or turning a Fight into a Chase doesn't by itself begin a new conflict. Carry forward:
- Current and starting Disposition.
- Used injury trades.
- Taken Out participants.
- Existing injuries, Situational Conditions, Truths, and other continuing effects.

If the type changes, establish the new action skills before the next exchange. Don't reapply setup bonuses merely because the type changes.

=== 10.3 Superiority <core-superiority>
Preparation can weaken an opposing side before the conflict begins. Gain 1 Superiority for each applicable category, to a maximum of 3:
- #strong[Know Thy Foe:] discover an exploitable weakness, motive, fear, or vulnerability.
- #strong[Know Thy Battlefield:] secure an advantageous position or understand circumstances that materially favour your approach.
- #strong[Know Thy Players:] establish a useful plan, alliance, resource, or other preparation.

Each category applies once and requires a distinct material advantage affecting the opposing side and the declared stakes. Rephrasing one advantage doesn't qualify it for several categories.

After all other starting-Disposition modifiers and the minimum of 1, reduce each opposing total by your Superiority, to a minimum of 0. Determine both adjusted totals before resolving the outcome. Superiority isn't tracked or spent afterward.

#colbreak()    
==== Overwhelming Preparation
- Only one side at 0: its opponent wins at no cost, within the declared intent and stakes. Don't script exchanges or calculate compromise.
- Both sides at 0: resolve mutual defeat (@core-defeat-mutual-defeat-concession), without scripting or a winner's compromise. Neither receives an outright or no-cost victory.
- Neither side at 0: record both totals and proceed to scripting.

Resolve setup defeat as recorded: don't restore a total to 1, reroll setup, or compare remainders or Superiority to break a tie. Only opposing Superiority can take a total below the minimum of 1.

Setup defeat inflicts no injury, pool loss or Taken Out by itself, and doesn't satisfy a creature's finishing requirement. Consequences follow the stakes and the victory or mutual-defeat outcome.

// PLAYTEST: retain the existing PC/opposition symmetry and eligibility flag.

==== Preparation and Other Benefits
An asset may retain its normal benefits while also contributing to Superiority. A map might justify preparation and later help an action. These benefits perform different jobs:
- Superiority represents preparation at setup.
- An action tag supplies Power to a particular action.
- A Situational Condition modifies relevant rolls; a Truth establishes what is possible.

Apply each only when its requirements are met. One asset doesn't automatically provide all four.
]

=== 10.4 Conflict Types <core-conflict-types>
The conflict type determines which skills establish Disposition and resolve actions.
#figure(table(columns: (17%, 21%, 19%, 16%, 10%, 17%),
  table.header([Type], [Disposition], [Attack], [Defend], [Feint], [Maneuver]),
  [Fight], [Fight or Brawl], [Fight / Brawl / Shoot], [Athletics / Endure], [Deceive], [Notice / Stealth],
  [Chase], [Athletics or Drive/Pilot], [Athletics / Drive], [Athletics / Drive], [Stealth], [Notice / Survival],
  [Argument], [Persuade], [Persuade], [Will], [Deceive], [Empathy],
  [Negotiation], [Persuade], [Persuade], [Empathy], [Deceive], [Investigate],
  [Infiltration], [Stealth], [Stealth / Tech], [Deceive], [Craft], [Investigate],
  [Battle], [Lore, applied to tactics], [Fight], [Endure], [Deceive], [Lore],
  [Spirit Duel], [Arcana], [Arcana], [Will], [Deceive], [Lore],
  [Hack / Netwar], [Tech], [Tech], [Tech], [Deceive], [Investigate],
  [Survive the Wild], [Survival], [Survival], [Endure], [---], [Notice],
))
#columns(2, gutter: 6mm)[
A dash means the action is unavailable. Settings may add types. Each needs a Disposition skill and a skill for every available action. Use the listed skill that fits the description. An action's name doesn't remove the need for a plausible approach.

=== 10.5 Scripting and Volleys <core-scripting-volleys>
Each exchange contains three volleys.

Each side secretly scripts three actions in order, assigning an eligible participant to each. Both sides commit their scripts before revealing the first volley.

Reveal the corresponding actions together, describe them, and resolve their interaction. Repeat for the second and third volleys unless the conflict ends.

If it continues, script another exchange.
#colbreak()
==== Coordination and Rotation
A side may appoint a coordinator to record its script and acting order. The coordinator doesn't have exclusive authority over the group's decisions.
Rotation runs in rounds and carries across exchanges. Each round, every available participant acts once, in any order, and nobody acts in two volleys in a row unless they are the only one available. Helping doesn't count as a turn.
#colbreak()    
Update rotation when someone joins, withdraws, or becomes unable to act. Assigning an action that later proves unsuitable doesn't permit a free replacement.

==== Changing a Script
Before revealing a volley, spend 2 Weal for the players' side or 3 Woe for the GM's side.

Replace one unrevealed action. Keep its assigned actor unless an explicit ability allows reassignment.
]

==== Action Interactions
#figure(table(columns: (18%, 21%, 23%, 20%, 18%),
  table.header([Your action], [Attack], [Defend], [Feint], [Maneuver]),
  [Attack], [Independent], [Versus], [Attack independent; Feint trumped], [Versus],
  [Defend], [Versus], [Independent], [Defend trumped; Feint independent], [Versus],
  [Feint], [Feint trumped; Attack independent], [Feint independent; Defend trumped], [Versus], [Versus],
  [Maneuver], [Versus], [Versus], [Versus], [Independent],
))
#columns(2, gutter: 6mm)[
#strong[Action completion.] Independent actions both resolve, even if one defeats a side or takes its actor out. Complete each action's costs, choices and effects before removing a participant because of that action; check victory after both independent actions finish.

A trumped action makes no action roll, generates no Power and produces no normal action Effect. It isn't a Failure with a Benefit, Failure with Complication or Critical Failure, and its Complication die and Risk die aren't rolled. Describe the failed approach briefly. Trumping grants no replacement action or actor reassignment. Costs already paid remain spent; don't pay a cost whose payment trigger never occurs. A separate hazard or explicit consequence applies only if its own trigger occurs. Complications use @core-costs-failures-complications.

In short: Feint beats Defend and loses to Attack; two Attacks, two Defends or two Maneuvers are independent; every other pair is versus.

// PLAYTEST: Feint versus Maneuver is now a versus test (was independent). Check that Maneuver doesn't become the safe answer to every Feint.

==== Independent Tests
Roll against Standard 15, adjusted by explicit difficulty modifiers such as adversary Guard; statuses and Situational Conditions modify the roll (@core-roll), and Truths decide what is possible (@core-truths). Tags add nothing to the roll. Classify each action's outcome and Power separately under @core-outcomes, and don't compare the actors' totals. A failed action generates no Power. Complete both independent actions before checking defeat or mutual defeat.

#colbreak()    
==== Versus Tests
Both actors roll, retaining their Complication die and highest other action die (@core-roll). Compare final totals. The higher total wins and generates its Tag Power + 1 Power, plus 1 for every full 3 points of margin. The loser generates no Power, including Tag Power.
Each actor's own retained faces classify their outcome (@core-outcomes). The winner's Critical Success adds +1 Power. Matching dice never override a higher opposing total.
Winning prevents the opposing action's normal effect, even if all Power funds permitted supplementary Effects rather than loss or recovery. Cancelling or reducing the loser's complication doesn't turn their action into a success or prevent the winner's purchased Effects.

On an exact tie, neither action generates Power, produces its normal effect or receives a comparison-based benefit, complication or critical. Costs already paid remain spent. Independent complications, including a triggered Risk die, still resolve under @core-costs-failures-complications.
]

=== 10.6 Actions and Effects <core-actions-effects>
Describe how the action pursues your side's objective.
#figure(table(columns: (12%, 22%, 22%, 22%, 22%),
  table.header([Action], [Purpose], [Fight], [Argument], [Chase]),
  [Attack], [Advance the objective directly], [Press an opening], [Establish a decisive point], [Close distance],
  [Defend], [Restore or protect your position], [Regroup behind cover], [Answer an objection], [Recover a safe route],
  [Feint], [Exploit misdirection], [Draw and bypass a response], [Bait a revealing answer], [Fake a route],
  [Maneuver], [Establish an advantage], [Flank or obstruct], [Shift an audience's attention], [Block a path],
))
#columns(2, gutter: 6mm)[
==== Three Separate Layers
#figure(table(columns: (25%, 75%),
  table.header([Layer], [What it measures]),
  [Disposition], [The side's ability to continue pursuing this objective.],
  [Pools], [A character's capacity for Effort, abilities and Resistance.],
  [Statuses], [Lasting or temporary effects that have actually happened to a character.],
))
Losing one doesn't automatically reduce the others. Ordinary Attack and Feint remove Disposition only, not Pools or statuses.

Armour and Resistance don't reduce ordinary Disposition loss unless an explicit rule says otherwise. Defend restores Disposition, not Pools, statuses, equipment or established losses.

==== Attack
Commit at least 1 Power to remove opposing Disposition equal to the Power committed, plus 1. Apply the +1 base loss once per action, not per purchase. With no Power committed to this effect, remove no Disposition.

==== Defend
Restore 1 Disposition per Power committed, up to your side's starting value (@core-shared-disposition-participation). With no Power committed to this effect, restore none unless a specific ability grants recovery independently.

==== Feint
Use Attack's Power commitment and Disposition-loss calculation. Feint resolves independently against Defend, is trumped by Attack, and opposes Feint or Maneuver in a versus test.

==== Maneuver
Spend Power on these effects:
#figure(table(columns: (24%, 12%, 64%),
  table.header([Effect], [Cost], [Result]),
  [Impede], [1], [The opposing side's next acting participant takes −3 on their action roll.],
  [Gain Position], [1], [Your side's next acting participant gains one bonus die on their action roll.],
  [Disarm], [3], [Disable a specific weapon, asset or key tag for the rest of the conflict.],
  [Create a Truth], [2], [Establish a justified scene Truth (@core-establishing-recording), applying explicit discounts and the normal minimum cost.],
  [Create a Situational Condition], [2 per rating], [Establish a rated external advantage or problem (@core-situational-conditions), applying explicit discounts and the normal minimum cost.],
))
Buy Impede, Gain Position and Disarm no more than once each per Maneuver; later successful actions may buy them again. Creating a hazard grants no immediate hazard attack or extra action.

==== Temporary Effects and Ongoing Conditions
Impede and Gain Position apply to the affected side's next scripted action, including across an exchange boundary. If that action is trumped or otherwise makes no roll, the effect expires unused. Record a pending effect like any temporary fact (@core-effects): #emph[Gain Position] --- tactical benefit, +1 bonus die --- your side's next scripted action roll --- expires on that action, unused if it is trumped or makes no roll.

Neither applies to unrelated Resistance, a Risk die or incidental rolls. Gain Position counts toward the normal bonus-dice cap.

// PLAYTEST: One pending Gain Position per side, regardless of source.
Additional grants don't stack, refresh or extend pending Gain Position.

Impede isn't a tiered status. Multiple pending Impedes don't stack, increase its penalty or extend its duration. Restore doesn't remove it merely because Restore removes statuses. Impede doesn't itself restrain, immobilise or render someone helpless.

An ongoing hindrance needs its own name, tier or rating, scope and removal condition (@core-effects), and Impede and other tactical effects don't become statuses or Conditions automatically. For example: #emph[Entangled] --- harmful status 2 --- movement and actions requiring free limbs --- ends when the net is cut or the target escapes. State fictional restrictions directly; a helpless body or inaccessible weapon isn't shorthand for temporary Impede.

==== Disarming and Denying Options
Identify the disabled asset and explain how. Disabling one asset removes an action category only if it was the side's only plausible means of performing that action. A replacement may restore access when the fiction permits. Switching equipment doesn't itself change a script.

==== Supplementary Effects Reference
A successful action may buy its primary effect and the permitted supplementary Effects below, using one Power budget. No primary purchase is mandatory. On a success, choose the permitted Effects and reserve their costs before spending Power on complication mitigation (@core-doubles). Fund at least one permitted Effect; it needn't be the primary purchase. Preserve any minimum Effect agreed before rolling.

Fictional relevance is required, but doesn't unlock prohibited purchases or harmful-status purchases on ordinary Attacks or Feints. General prices and treatment rules remain in @core-effects.
]
#figure(table(columns: (15%, 20%, 23%, 42%),
  table.header([Effect], [Permitted actions], [Price / limit], [Scope]),
  [Weaken], [Explicit ability only; any action], [As permitted by the ability and @core-effects], [Not a cheaper Disarm. Use Maneuver's priced Disarm to disable an asset.],
  [Create], [Maneuver], [2 Power per Truth, 2 per Situational Condition rating; explicit discounts and minimum cost apply], [Establish a justified scene Truth or Situational Condition.],
  [Enhance], [Defend or Maneuver], [Normal tier price (@core-effects)], [A helpful personal status; normal scope and stacking. Harmful statuses need an explicit harm permission.],
  [Restore], [Defend], [Normal tier price (@core-effects)], [Normal scope, stacking and treatment limits. Maneuver has no default permission.],
  [Discover], [Any successful action], [1 Power per question; repeatable], [Only answers that follow from this action, not unrelated or remote investigation.],
  [Advance], [Attack or Maneuver], [1 Power per segment; repeatable], [A separate established clock genuinely advanced by the action, not a duplicate Disposition track.],
  [Disrupt], [Maneuver], [3 Power; once per Maneuver], [Cancel or delay an established prepared action outside the committed script, or remove 1 available GM Woe.],
  [Extra Feat], [Any successful action], [Normal price (@core-effects); once per action unless expressly overridden], [One related secondary accomplishment within the action's scope, not another turn, roll or scripted action.],
))
#columns(2, gutter: 6mm)[
#strong[Exceptions.] Other actions require explicit permission. An exception grants only its named purchase, trigger, cost, frequency and scope; a procedure replacing ordinary Maneuver effects retains that restriction. Each ability that grants an exception states its own limits.

#strong[Objective and script limits.] Advance can't automatically convert segments into Disposition loss or bypass a still-disputed objective. If clock completion would settle the conflict, establish that relationship before scripting.

Disrupt can't generically cancel, replace, reveal or delay a committed scripted action; an ability or scenery procedure must expressly permit interference. Removing Woe can't reverse an existing spend or cancel an accepted payment.

Extra Feat can't duplicate primary Disposition effects, disguise a prohibited purchase, cancel an independent opposing action or achieve an objective outside the stakes.

#strong[Adversary Specials.] Specials that trigger on a successful action follow Adversaries @adv-shared-special-timing.

==== Offensive Bonuses
Additional Power, additional Disposition loss and additional status tiers are separate bonuses. Each applies only to the component it names; a bonus meant for more than one must say so. If an effect inflicts both Disposition loss and a status, the ability must name the component a bonus improves, or let you choose.

Attack bonuses don't apply to Feint or finishing procedures unless stated.

=== 10.7 Costs, Failures and Complications <core-costs-failures-complications>
Use normal Effort, Weal, Woe, Tychē Points, tags, Situational Conditions and Truths subject to these restrictions and the limits in @core-conflict-limits-reference.

==== Ordinary Failure
A failed independent test produces no action effect and no Power, including Tag Power. Resolve its outcome under @core-outcomes. Failure alone generates no Woe. It doesn't also authorise an unrelated GM move, automatic injury or additional Disposition loss: the failed and opposing actions establish the volley.

Losing or tying a versus test, or being trumped, likewise generates no automatic failure Woe. Apply this symmetrically to player and GM actors; costs already paid remain spent. Accepting, mitigating or Resisting a complication awards no replacement Woe. Woe buyoffs, ability costs, scenery Dangers and other explicit Woe rules still apply.

==== Complications in Conflicts
Complications from outcomes, Risk dice or Woe stay within the stakes and the action's scale (@core-doubles). They can't duplicate an opposing purchased Effect, freely change the script or cancel an independent action.

A comparison-based complication, including the major complication from a Critical Failure, can't impose additional Disposition loss or a harmful status unless an explicit rule permits it. Severity alone grants no such permission: a major complication doesn't automatically mean injury, immediate defeat or loss of the objective. Independent hazards, Risky triggers, abilities and other explicit rules keep only the consequence permissions they state.

Failure with a Benefit is a fictional opening only: no free purchase, Disposition change, script change or extra action. Cancelling or reducing a complication doesn't reverse failure or revoke a purchased Effect.

Power mitigation addresses the actor's eligible triggered complication, not an opponent's ordinary purchased Disposition effect. Reserve Power for permitted Effects first (@core-doubles). Woe buyoff and eligible Resistance don't require that reservation.

==== Explicit Risks and Harm
Abilities, hazards, Risky rolls, scenery Dangers and other explicit rules may impose their stated consequences. Resolve these separately from ordinary Disposition loss.

#colbreak()    
==== Protected Payments
#strong[What counts.] A protected payment is a consequence accepted in exchange for a benefit: an accepted injury trade (@core-accepting-injury), a running-dry status from paying a cost (@core-running-dry-statuses), an agreed concession cost (@core-defeat-mutual-defeat-concession), or any other cost accepted as payment. Choosing an imposed complication instead of its Woe buyoff doesn't make it a protected payment; mitigation and Resistance still address it where permitted (@core-doubles).

#strong[What can't touch it.] Resistance, armour, prevention, redirection, immunity and incidental clearing, including a double-12 result, can't prevent, reduce or remove a protected payment. Only an exception that names the protected payment can change it. Generic wording such as "cancel harm" isn't enough.

#strong[Disposition.] Generic wording such as ignore harm, cancel a consequence, take the hit or protect an ally doesn't affect shared Disposition. A rule must explicitly mention Disposition to reduce, redirect, restore or prevent its loss.

#strong[Afterwards.] Once recorded, a status can be treated or healed through the applicable procedure. Later healing doesn't refund the benefit, restore Disposition, refresh an injury trade or erase a Scar.

]

#include "chapter-2.10-conflict-system-aftermath.typ"
