#import "common.typ": *

== 10. Conflict System
#columns(2, gutter: 6mm)[
Use a scripted conflict for a consequential struggle in which opposing sides can make several meaningful tactical decisions. A conflict might be a fight, chase, argument, negotiation, infiltration, battle, supernatural contest, or struggle against a dangerous environment.

Each side declares an intent, establishes its starting Disposition, and secretly chooses three actions. Reveal and resolve those actions one volley at a time. Continue until one side wins, both sides are defeated, or the participants agree to a concession.

#strong[Disposition] measures a side's ability to keep pursuing its objective. It is not health, ammunition, morale alone, or a count of individual participants.

=== 10.1 When to Use a Conflict
Use a scripted conflict when all three conditions are present:
- The outcome matters enough to deserve sustained attention.
- An opponent or significant force can actively resist the intended outcome.
- Several meaningful tactical choices could change how the struggle ends.

Otherwise, use an ordinary roll or resolve the situation without rolling. A named opponent, a dangerous situation, or a large group does not automatically require a conflict.

==== Each Side Needs an Objective
State what each side wants to accomplish, not merely what it wants to prevent. Suitable objectives include:
- Hold the bridge until the refugees cross.
- Capture the courier before she reaches the harbour.
- Convince the council to release the prisoners.
- Escape the hunters without revealing the refuge.
- Reach shelter before the storm cuts off the pass.

An objective may be defensive. Holding the bridge until the refugees cross gives the defenders something concrete to achieve. Merely stopping the enemy usually needs more definition.

Environmental opposition also needs a stated outcome: the storm strands the travellers, the fire consumes the archive, or the river carries away the crossing.

=== 10.2 Setup
Complete these steps before scripting:
+ Declare intent and stakes.
+ Choose the conflict type.
+ Establish participants and sides.
+ Calculate starting Disposition.
+ Apply Superiority to both sides and resolve any setup defeat (§10.3).
+ Record the adjusted starting Disposition.
+ Establish the acting order and script the first exchange.

==== Intent and Stakes
Each side states what it gains by winning. Establish what losing allows the opposition to do and whether capture, death, permanent injury, exposure, or another lasting consequence is possible. Discuss what withdrawal or concession could look like.

Intent limits victory. Defeating a side whose objective is to hold a doorway does not automatically let the winner kill everyone, seize unrelated possessions, or achieve another objective.

==== Lethal Stakes
Establish lethal stakes before the roll or exchange that could produce a lethal outcome. Stakes may change when circumstances change, but never retroactively. Explain the new danger and allow affected participants to respond before resolving it.

Lethal stakes make death possible, not automatic (§10.12).

==== Participants
A participant must be able to contribute to the side's objective. Helping to establish starting Disposition commits a character to that side's stakes. Helping an action during the conflict likewise makes the helper a participant if they were not already involved.

A character who cannot meaningfully contribute may remain outside the conflict. Do not include them merely to increase Disposition. Companions and groups follow §10.9.

==== Starting Disposition
The leader normally rolls #strong[2d12 + Disposition skill + highest Edge in that skill's pool]. Divide the result by three, rounding down. Then:
- Add +1 per eligible helper.
- Apply flat starting-Disposition bonuses and penalties from abilities, creature rank, conditions, and similar effects; these have no stacking cap.
- Apply a minimum of 1.
- Apply opposing Superiority (§10.3).

Record the adjusted total. It remains the recovery cap and compromise reference under §10.9.

Setup Help costs no pool points. Before the leader rolls, each helper explains a meaningful contribution and commits to the side's stakes. Each eligible helper adds +1 Disposition, without an ordinary Help bonus die. A free-Help ability provides no additional setup bonus unless expressly stated. Later removal follows §10.9; do not recalculate setup.

#strong[Adversary exception.] Sides built with Grit use the Adversaries setup procedure instead of the leader's Disposition roll. Preserve explicit exceptions such as Guard when resolving independent tests.

==== Continuing the Same Conflict
Set fresh Disposition only for a genuinely new conflict with a materially different objective or changed circumstances. Passing through a doorway, changing tactics, or turning a Fight into a Chase does not by itself begin a new conflict. Carry forward:
- Current and starting Disposition.
- Used injury trades.
- Taken Out participants.
- Existing injuries, Truths, and other continuing effects.

If the type changes, establish the new action skills before the next exchange. Do not reapply setup bonuses merely because the type changes.

=== 10.3 Superiority
Preparation can weaken an opposing side before the conflict begins. Gain 1 Superiority for each applicable category, to a maximum of 3:
- #strong[Know Thy Foe:] discover an exploitable weakness, motive, fear, or vulnerability.
- #strong[Know Thy Battlefield:] secure an advantageous position or understand circumstances that materially favour your approach.
- #strong[Know Thy Players:] establish a useful plan, alliance, resource, or other preparation.

Each category applies once and requires a distinct material advantage affecting the opposing side and the declared stakes. Rephrasing one advantage does not qualify it for several categories.

After all other starting-Disposition modifiers and the minimum of 1, reduce each opposing total by your Superiority, to a minimum of 0. Determine both adjusted totals before resolving the outcome. Superiority is not tracked or spent afterward.

==== Overwhelming Preparation
- Only one side at 0: its opponent wins at no cost, within the declared intent and stakes. Do not script exchanges or calculate compromise.
- Both sides at 0: resolve mutual defeat (§10.12), without scripting or a winner's compromise. Neither receives an outright or no-cost victory.
- Neither side at 0: record both totals and proceed to scripting.

Resolve setup defeat as recorded: do not restore a total to 1, reroll setup, compare negative remainders, or break a simultaneous defeat by comparing Superiority. Only opposing Superiority can reduce the setup minimum of 1 to 0; low rolls or flat penalties alone cannot do so.

Setup defeat does not itself inflict injury, drain Pools, Take Out a participant, or satisfy a creature-specific finishing requirement. Consequences follow the declared stakes and the applicable victory or mutual-defeat outcome.

// PLAYTEST: retain the existing PC/opposition symmetry and eligibility flag.

==== Preparation and Other Benefits
An asset may retain its normal benefits while also contributing to Superiority. A map might justify preparation and later help an action. These benefits perform different jobs:
- Superiority represents preparation at setup.
- An action tag assists a particular roll.
- A Truth changes difficulty or establishes what is possible.

Apply each only when its requirements are met. One asset does not automatically provide all three.
]

=== 10.4 Conflict Types
The conflict type determines which skills establish Disposition and resolve actions.
#figure(table(columns: (17%, 21%, 19%, 16%, 10%, 17%),
  table.header([Type], [Disposition], [Attack], [Defend], [Feint], [Maneuver]),
  [Fight], [Fight or Brawl], [Fight / Brawl / Shoot], [Athletics / Endure], [Deceive], [Notice / Stealth],
  [Chase], [Athletics or Drive/Pilot], [Athletics / Drive], [Athletics / Drive], [Stealth], [Notice / Survival],
  [Argument], [Persuade], [Persuade], [Will], [Deceive], [Empathy],
  [Negotiation], [Persuade], [Persuade], [Empathy], [Deceive], [Investigate],
  [Infiltration], [Stealth], [Stealth / Tech], [Deceive], [Craft], [Investigate],
  [Battle], [Lore (tactics)], [Fight], [Endure], [Deceive], [Lore],
  [Spirit Duel], [Arcana], [Arcana], [Will], [Deceive], [Lore],
  [Hack / Netwar], [Tech], [Tech], [Tech], [Deceive], [Investigate],
  [Survive the Wild], [Survival], [Survival], [Endure], [---], [Notice],
))
#columns(2, gutter: 6mm)[
A dash means the action is unavailable. Settings may add types. Each needs a Disposition skill and a skill for every available action. Use the listed skill that fits the description. An action's name does not remove the need for a plausible approach.

=== 10.5 Scripting and Volleys
Each exchange contains three volleys. Each side secretly scripts three actions in order, assigning an eligible participant to each. Both sides commit their scripts before revealing the first volley.

Reveal the corresponding actions together, describe them, and resolve their interaction. Repeat for the second and third volleys unless the conflict ends. If it continues, script another exchange.

==== Coordination and Rotation
A side may appoint a coordinator to record its script and acting order. The coordinator does not have exclusive authority over the group's decisions. Track rotation continuously across exchanges:
- Every available participant must act before anyone takes another turn.
- A participant cannot act in consecutive volleys unless they are the only available participant.
- With more than three participants, continue the rotation into the next exchange.
- Helping does not count as taking a turn.

Update rotation when someone joins, withdraws, or becomes unable to act. Assigning an action that later proves unsuitable does not permit a free replacement.

==== Changing a Script
Before revealing a volley, spend 2 Momentum for the players' side or 3 Woe for the GM's side. Replace one unrevealed action. Keep its assigned actor unless an explicit ability allows reassignment.
]

==== Action Interactions
#figure(table(columns: (18%, 21%, 23%, 20%, 18%),
  table.header([Your action], [Attack], [Defend], [Feint], [Maneuver]),
  [Attack], [Independent], [Versus], [Attack independent; Feint trumped], [Versus],
  [Defend], [Versus], [Independent], [Defend trumped; Feint independent], [Versus],
  [Feint], [Feint trumped; Attack independent], [Feint independent; Defend trumped], [Versus], [Independent],
  [Maneuver], [Versus], [Versus], [Independent], [Independent],
))
#columns(2, gutter: 6mm)[
Independent actions both resolve, even if one defeats a side or takes its actor out. Complete each action's costs, choices and effects before removing a participant because of that action; check victory after both independent actions finish.

A trumped action makes no roll and produces no effect. Describe the failed approach briefly. Failure, Woe and doubles use §10.7.

// PLAYTEST: Feint versus Maneuver resolves independently in this rewrite.

==== Independent Tests
Roll against Standard 15, adjusted by applicable Truths and other explicit difficulty modifiers, including adversary Guard. Determine Power normally.

==== Versus Tests
Both actors roll. The higher total wins and gains 1 Power, plus 1 for every full 3 points of margin. Winning prevents the opposing action's normal effect, even if all Power funds permitted supplementary Effects rather than loss or recovery.

On an exact tie, neither action gains Power or produces its normal effect. Costs already paid remain spent. Success at a Cost does not turn a losing versus roll into success. Resolve doubles and complications under §10.7.

=== 10.6 Actions and Effects
Describe how the action pursues your side's objective.
- #strong[Attack:] advance the objective directly: press an opening, establish a decisive point, or close distance in a chase.
- #strong[Defend:] restore or protect your position: regroup behind cover, answer an objection, or recover a safe route.
- #strong[Feint:] exploit misdirection: draw and bypass a response, bait a revealing answer, or fake a route.
- #strong[Maneuver:] establish an advantage: flank or obstruct, shift an audience's attention, or block a path.

==== Three Separate Layers
- #strong[Disposition:] the side's ability to continue pursuing this objective.
- #strong[Pools:] a character's capacity for Effort, abilities and Resistance.
- #strong[Statuses:] lasting or temporary effects that have actually happened to a character.

Losing one does not automatically reduce the others. Ordinary Attack and Feint remove Disposition only, not Pools or statuses. Armour and Resistance do not reduce ordinary Disposition loss unless an explicit rule says otherwise. Defend restores Disposition, not Pools, statuses, equipment or established losses.

==== Attack
Commit at least 1 Power to remove opposing Disposition equal to the Power committed, plus 1. Apply the +1 base loss once per action, not per purchase. With no Power committed to this effect, remove no Disposition.

==== Defend
Restore 1 Disposition per Power committed, up to your side's starting value (§10.9). With no Power committed to this effect, restore none unless a specific ability grants recovery independently.

==== Feint
Use Attack's Power commitment and Disposition-loss calculation. Feint bypasses Defend but is trumped by Attack; against Maneuver, both resolve independently.

==== Maneuver
Spend Power on these effects:
#figure(table(columns: (24%, 12%, 64%),
  table.header([Effect], [Cost], [Result]),
  [Impede], [1], [The opposing side's next acting participant takes −3 on their action roll.],
  [Gain Position], [1], [Your side's next acting participant gains one bonus die on their action roll.],
  [Disarm], [3], [Disable a specific weapon, asset or key tag for the rest of the conflict.],
  [Create a Truth], [2 per rank], [Establish a justified Truth, applying explicit discounts and the normal minimum cost.],
))
Buy Impede, Gain Position and Disarm no more than once each per Maneuver; later successful actions may buy them again. Create may be purchased at a higher rank for its normal cost.

==== Temporary Effects and Ongoing Conditions
Impede and Gain Position apply to the affected side's next scripted action, including across an exchange boundary. If that action is trumped or otherwise makes no roll, the effect expires unused. Neither applies to unrelated Resistance or incidental rolls. Gain Position counts toward the normal bonus-dice cap.

Impede is not a tiered status. Multiple pending Impedes do not stack, increase its penalty or extend its duration. Restore does not remove it merely because Restore removes statuses. Impede does not itself restrain, immobilise or render someone helpless.

An ongoing condition needs its own name, tier, scope and removal condition. For example, #emph[entangled-2] hinders movement and actions requiring free limbs, and ends when the net is cut or the target escapes. State fictional restrictions directly; a helpless body or inaccessible weapon is not shorthand for temporary Impede.

==== Disarming and Denying Options
Identify the disabled asset and explain how. Disabling one asset removes an action category only if it was the side's only plausible means of performing that action. A replacement may restore access when the fiction permits. Switching equipment does not itself change a script.

==== Supplementary Effects Reference
A successful action may buy its primary effect and the permitted supplementary Effects below, using one Power budget. No primary purchase is mandatory. Fictional relevance is required, but does not unlock prohibited purchases or harmful-status purchases on ordinary Attacks or Feints. General prices and treatment rules remain in §5.
]
#figure(table(columns: (15%, 20%, 23%, 42%),
  table.header([Effect], [Permitted actions], [Price / limit], [Scope]),
  [Weaken], [Explicit ability only; any action], [As permitted by the ability and §5], [Not a cheaper Disarm. Use Maneuver's priced Disarm to disable an asset.],
  [Create], [Maneuver], [2 Power per rank; explicit discounts and minimum cost apply], [Establish a justified Truth.],
  [Enhance], [Defend or Maneuver], [Normal tier price (§5)], [Normal scope and stacking.],
  [Restore], [Defend], [Normal tier price (§5)], [Normal scope, stacking and treatment limits. Maneuver has no default permission.],
  [Discover], [Any successful action], [1 Power per question; repeatable], [Only answers that follow from this action, not unrelated or remote investigation.],
  [Advance], [Attack or Maneuver], [1 Power per segment; repeatable], [A separate established clock genuinely advanced by the action, not a duplicate Disposition track.],
  [Disrupt], [Maneuver], [3 Power; once per Maneuver], [Cancel or delay an established prepared action outside the committed script, or remove 1 available GM Woe.],
  [Extra Feat], [Any successful action], [Normal price (§5); once per action unless expressly overridden], [One related secondary accomplishment within the action's scope, not another turn, roll or scripted action.],
))
#columns(2, gutter: 6mm)[
#strong[Exceptions.] Other actions require explicit permission. An exception grants only its named purchase, trigger, cost, frequency and scope; a procedure replacing ordinary Maneuver effects retains that restriction. Called Shot retains only its named permission and duration. Cheap Shot's named Attack purchase does not unlock Create on every Attack or other supplementary Effects. A free Extra Feat waives cost, not its frequency limit.

#strong[Objective and script limits.] Advance cannot automatically convert segments into Disposition loss or bypass a still-disputed objective. If clock completion would settle the conflict, establish that relationship before scripting. Disrupt cannot generically cancel, replace, reveal or delay a committed scripted action; an ability or scenery procedure must expressly permit interference. Removing Woe cannot reverse an existing spend or cancel an accepted payment. Extra Feat cannot duplicate primary Disposition effects, disguise a prohibited purchase, cancel an independent opposing action or achieve an objective outside the stakes.

==== Offensive Bonuses
Additional Disposition loss is not additional Power or an additional status tier. Additional status tiers do not increase Disposition loss. A bonus intended for both forms must say so: remove the listed additional Disposition when applying ordinary conflict loss, or increase the harmful status when the Attack instead inflicts one.

Apply each bonus to one component only. If an explicit effect inflicts both Disposition loss and a status, the ability must identify the component or permit a choice; do not apply the same bonus to both. Attack bonuses do not apply to Feint unless stated. Such bonuses do not improve staking, killing strikes or other finishing procedures unless expressly stated.

=== 10.7 Costs, Failures and Complications
Use normal Effort, Momentum, Woe, Tychē Points, tags and Truths subject to these restrictions.

==== Ordinary Failure
An ordinary failed independent test produces no action effect and generates the usual 1 Woe. It does not also authorise an unrelated GM move, automatic injury or additional Disposition loss: the failed and opposing actions establish the volley.

Losing or tying a versus test, or being trumped, generates no ordinary-failure Woe. Apply this symmetrically to player and GM actors; costs already paid remain spent. Separately triggered complications, ability costs, scenery Dangers and explicit Woe rules still apply.

==== Success at a Cost
On an independent test missing by 1--3, gain 1 Power as usual. The player chooses either 1 Woe for the GM or an immediate, proportionate complication arising from the action. An ordinary cost cannot impose an additional status or extra Disposition loss unless an explicit rule permits it. Suitable costs include exposing an approach, losing access to a minor asset or establishing a limited adverse fact. Scenery actions use their listed Danger when the consequence option is chosen.

==== Doubles
Apply critical Power under §2.6. In versus tests, double 12s do not override a higher opposing total or break a tie. Ordinary successful doubles add +1 Power; winning double 12s add +2 instead. Losing or tied doubles grant no Power or normal action effect. Double 1s always cause their normal complication but do not automatically lose; successful double 1s also gain the ordinary +1 critical Power. Apply this equally to rolled doubles and doubles created by an explicit ability, including Perfect Strike.

Doubles complications remain within the established stakes and action's scale. They do not cancel an independent action or retroactively change the script. Use the normal rules for buying off a complication with Woe.

==== Explicit Risks and Harm
Abilities, hazards, Risky rolls, scenery Dangers and other explicit rules may impose their stated consequences. Resolve these separately from ordinary Disposition loss.

==== Protected Payments
Generic wording such as ignore harm, cancel a consequence, take the hit or protect an ally does not affect shared Disposition. A rule must explicitly mention Disposition to reduce, redirect, restore or prevent its loss.

Generic prevention, redirection, immunity, Resistance and incidental clearing benefits cannot prevent or remove an accepted injury trade, a running-dry status generated by paying a cost, an agreed concession cost or another consequence accepted as payment for a benefit. An exception must expressly identify the protected payment it affects.

Once recorded, a status can be treated or healed through the applicable procedure. Later healing does not refund the benefit, restore Disposition, refresh an injury trade or erase a Scar.

==== Free, Immediate and Automatic Effects Reference
Free removes only the stated resource cost. It grants no extra turn, rotation bypass or permission to act while Taken Out. A passive benefit or a benefit explicitly requiring no action can apply without consuming a scripted action.

An immediate effect resolves at its stated trigger. It interrupts another action only if explicitly permitted, and cannot retroactively cancel resolved costs or effects. An additional immediate action must specify its trigger, replacement of scripted actions, rotation treatment, use while Taken Out and interaction with independent actions.

Automatic success replaces the roll for an otherwise permitted action. It supplies no extra action, script change, rescue of a trumped action, expanded stakes or unsuitable approach. On an independent test, apply the listed Power without rolling. In a versus test, it wins with its listed Power unless the opposing action also succeeds automatically; then resolve a tie unless a specific rule says otherwise. No roll means no dice-based critical or complication.
]

#include "chapter-2.10-conflict-system-aftermath.typ"
