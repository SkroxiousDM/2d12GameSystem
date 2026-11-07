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

Otherwise, use an ordinary roll or resolve the situation without rolling. A named opponent, a dangerous situation, or a large group does not automatically require a conflict. Choose the procedure that gives the situation appropriate attention.

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
+ Apply Superiority.
+ Record the adjusted starting Disposition.
+ Establish the acting order and script the first exchange.

==== Intent and Stakes
Each side states what it gains by winning. Establish what losing allows the opposition to do and whether capture, death, permanent injury, exposure, or another lasting consequence is possible. Discuss what withdrawal or concession could look like.

Intent limits victory. Defeating a side whose objective is to hold a doorway does not automatically let the winner kill everyone, seize unrelated possessions, or achieve another objective.

==== Lethal Stakes
Establish lethal stakes before the roll or exchange that could produce a lethal outcome. Stakes may change when circumstances change, but never retroactively. Explain the new danger and allow affected participants to respond before resolving it.

Lethal stakes make death possible. They do not make every successful Attack an injury or every defeat a death.

==== Participants
A participant must be able to contribute to the side's objective. Helping to establish starting Disposition commits a character to that side's stakes. Helping an action during the conflict likewise makes the helper a participant if they were not already involved.

A character who cannot meaningfully contribute may remain outside the conflict. Do not include them merely to increase Disposition.

==== Starting Disposition
The leader normally rolls #strong[2d12 + Disposition skill + highest Edge in that skill's pool]. Divide the result by three, rounding down. Then:
- Add +1 per eligible helper.
- Apply flat starting-Disposition bonuses and penalties from abilities, creature rank, conditions, and similar effects.
- Apply a minimum of 1.
- Apply opposing Superiority.

Flat starting-Disposition modifiers have no stacking cap. The adjusted result is the side's starting Disposition for recovery limits and compromise.

Helping establish starting Disposition costs no pool points. Before the leader rolls, each helper explains a meaningful contribution and commits to the side's stakes. Each eligible helper adds +1 Disposition, without an ordinary Help bonus die. A free-Help ability provides no additional setup bonus unless expressly stated. A character unable to contribute cannot help. Later unavailability or removal does not subtract the helper's contribution or recalculate starting Disposition.

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

Each category applies once. Preparation must materially affect the opposing side and the declared stakes. Rephrasing one advantage does not qualify it for several categories. Additional categories require distinct material advantages.

After all other starting-Disposition modifiers and the minimum of 1, reduce the opposing side's Disposition by your Superiority, to a minimum of 0. Superiority is not tracked or spent after setup.

==== Overwhelming Preparation
If Superiority reduces a side's starting Disposition to 0, resolve the conflict as a victory for its opponent at no cost, within the declared intent and stakes. Do not script exchanges or calculate a further compromise. A low roll or negative flat modifiers alone cannot produce this result.

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
Independent actions both resolve, even if one defeats a side or takes its actor out. A trumped action makes no roll and produces no effect. Describe the failed approach briefly.

// PLAYTEST: Feint versus Maneuver resolves independently in this rewrite.

==== Independent Tests
Roll against Standard 15, adjusted by applicable Truths and other explicit difficulty modifiers, including adversary Guard. Determine Power normally.

==== Versus Tests
Both actors roll. The higher total wins. The winner gains 1 Power, plus 1 for every full 3 points by which their total exceeds the opponent's.

On an exact tie, neither action gains Power or produces its normal effect. Costs already paid remain spent. Resolve applicable doubles complications. Success at a Cost does not turn the losing versus roll into a successful action.

Double 12s do not override a higher opposing total or break an exact tie. Ordinary successful doubles add +1 Power; winning double 12s add +2 instead. Losing or tied doubles grant no Power or normal action effect. Double 1s always cause their normal complication but do not automatically lose; successful double 1s also gain the ordinary +1 critical Power. Apply this equally to rolled doubles and doubles created by an explicit ability, including Perfect Strike.

Losing or tying a versus test generates no ordinary-failure Woe, symmetrically for player and GM actors. A trumped action likewise generates none. Separately applicable complications and explicit Woe rules still resolve normally (§10.7).

==== Free, Immediate and Automatic Effects
Free removes only the stated resource cost. It grants no extra turn, rotation bypass or permission to act while Taken Out. A passive benefit or a benefit explicitly requiring no action can apply without consuming a scripted action.

An immediate effect resolves at its stated trigger. It interrupts another action only if explicitly permitted, and cannot retroactively cancel resolved costs or effects. An additional immediate action must specify its trigger, replacement of scripted actions, rotation treatment, use while Taken Out and interaction with independent actions.

Automatic success replaces the roll for an otherwise permitted action. It supplies no extra action, script change, rescue of a trumped action, expanded stakes or unsuitable approach. On an independent test, apply the listed Power without rolling. In a versus test, it wins with its listed Power unless the opposing action also succeeds automatically; then resolve a tie unless a specific rule says otherwise. No roll means no dice-based critical or complication.

=== 10.6 Actions and Effects
Describe how the action pursues your side's objective.
- #strong[Attack:] advance the objective directly: press an opening, establish a decisive point, or close distance in a chase.
- #strong[Defend:] restore or protect your position: regroup behind cover, answer an objection, or recover a safe route.
- #strong[Feint:] exploit misdirection: draw and bypass a response, bait a revealing answer, or fake a route.
- #strong[Maneuver:] establish an advantage: flank or obstruct, shift an audience's attention, or block a path.

==== Attack
Commit at least 1 Power to remove opposing Disposition equal to the Power committed to this effect, plus 1. Apply the +1 base loss once per action, not per purchase. Without a commitment, remove no Disposition. An Attack need not represent bodily harm. It may drive an opponent back, expose a weakness, advance an argument, or bring pursuers closer.

==== Defend
Restore 1 Disposition per Power committed, up to your side's starting value. Without committed Power, restore none unless a specific ability grants recovery independently. Defend restores the ability to pursue the objective. It does not heal statuses, restore Pools, repair equipment or reverse an established consequence. Winning a versus test also prevents the opposing action's normal effect.

==== Feint
Commit at least 1 Power to remove opposing Disposition equal to the Power committed to this effect, plus 1. Apply the +1 base loss once per action, not per purchase. Without a commitment, remove no Disposition. Feint bypasses Defend but is trumped by Attack. Against Maneuver, both resolve independently: Feint may advance its objective while Maneuver establishes an advantage.

==== Maneuver
Spend Power on these effects:
#figure(table(columns: (24%, 12%, 64%),
  table.header([Effect], [Cost], [Result]),
  [Impede], [1], [The opposing side's next acting participant takes −3 on their action roll.],
  [Gain Position], [1], [Your side's next acting participant gains one bonus die on their action roll.],
  [Disarm], [3], [Disable a specific weapon, asset or key tag for the rest of the conflict.],
  [Create a Truth], [2 per rank], [Establish a justified Truth, applying explicit discounts and the normal minimum cost.],
))
Buy Impede, Gain Position and Disarm no more than once each from a single Maneuver. They may be bought again through later successful actions. Create a Truth may be purchased at a higher rank for its normal cost.

==== Supplementary Effects
A successful action may buy its primary effect and the supplementary Effects permitted below, using the general prices in §5. Fictional relevance is necessary but does not unlock a prohibited purchase. No primary purchase is mandatory: all earned Power may fund permitted supplementary Effects. Each purchase draws from the same Power budget; never spend the same Power twice.

Winning a versus test prevents the opposing action's normal effect even if all Power funds supplementary Effects. Prevention comes from winning the interaction, not purchasing loss or recovery. Independent opposing actions still resolve. An exception grants only its stated purchase, trigger, cost, frequency and scope; a special procedure that replaces ordinary Maneuver effects retains that restriction.

- #strong[Weaken:] explicit ability only, on any scripted action. Use Maneuver's priced Disarm to disable a specific weapon, asset or key tag; general Weaken is not a cheaper Disarm. Called Shot retains only its named permission and duration.
- #strong[Create:] Maneuver only unless an explicit exception permits another action. Cheap Shot's named Attack purchase does not unlock Create on every Attack or other supplementary Effects.
- #strong[Enhance:] Defend or Maneuver; other actions require an explicit exception.
- #strong[Restore:] Defend; other actions require an explicit exception, including Maneuver.
- #strong[Discover:] any successful scripted action, only when the answer follows from that action. This does not permit unrelated questioning or remote investigation.
- #strong[Advance:] Attack or Maneuver; other actions require an explicit exception. Progress a separate, established clock that the action genuinely advances. Do not duplicate Disposition, convert segments automatically into Disposition loss or bypass a still-disputed objective. If completion would settle the conflict, establish that relationship before scripting, not during spending.
- #strong[Disrupt:] Maneuver only unless an explicit exception permits another action. For its normal 3 Power, cancel or delay an established prepared action outside the opposing side's committed script, or remove 1 available GM Woe. Do not generically cancel, replace, reveal or delay a committed scripted action; an ability or scenery procedure must expressly permit that interference. Removing Woe cannot reverse an existing spend or cancel an accepted payment.
- #strong[Extra Feat:] any successful scripted action. Add one related secondary accomplishment within the action's scope, not another turn, roll or scripted action. Do not duplicate primary Disposition effects, disguise a prohibited purchase, cancel an independent opposing action or achieve an objective outside the stakes.

Discover costs 1 Power per question and Advance 1 per segment; repeat purchases are allowed. Enhance and Restore retain their normal tier prices, scope, stacking and treatment rules. Create retains normal rank pricing, explicit discounts and minimum cost. Disrupt is limited to once per Maneuver. Extra Feat is limited to once per action unless expressly overridden; a free Extra Feat waives cost, not that limit. Impede, Gain Position and Disarm retain their once-each-per-Maneuver limits. These permissions do not authorize harmful-status purchases on ordinary Attacks or Feints.

==== Temporary Effects and Ongoing Conditions
Impede and Gain Position apply to the affected side's next scripted action, including across an exchange boundary. If that action is trumped or otherwise makes no roll, the effect expires unused. Neither applies to unrelated Resistance or incidental rolls. Gain Position counts toward the normal bonus-dice cap.

Impede is not a tiered status. Multiple pending Impedes do not stack, increase its penalty or extend its duration. Restore does not remove it merely because Restore removes statuses. Impede does not itself restrain, immobilise or render someone helpless.

An ongoing condition needs its own name, tier, scope and removal condition. For example, #emph[entangled-2] hinders movement and actions requiring free limbs, and ends when the net is cut or the target escapes. State fictional restrictions directly; a helpless body or inaccessible weapon is not shorthand for temporary Impede.

==== Disarming and Denying Options
Identify the disabled asset and explain how. Disabling one asset does not automatically remove an action category. Remove a category only if that asset was the side's only plausible means of performing it. A replacement may restore access when the fiction permits. Switching equipment does not itself change a script.

==== Three Separate Layers
- #strong[Disposition:] the side's ability to continue pursuing this objective.
- #strong[Pools:] a character's capacity for Effort, abilities and Resistance.
- #strong[Statuses:] lasting or temporary effects that have actually happened to a character.

Losing one does not automatically reduce the others. An ordinary Attack or Feint removes Disposition only, not Pools or statuses. Armour and Resistance do not reduce ordinary Disposition loss unless an explicit rule says otherwise.

==== Offensive Bonuses
Additional Disposition loss is not additional Power or an additional status tier. Additional status tiers do not increase Disposition loss. A bonus intended for both forms must say so: remove the listed additional Disposition when applying ordinary conflict loss, or increase the harmful status when the Attack instead inflicts one.

Apply each bonus to one component only. If an explicit effect inflicts both Disposition loss and a status, the ability must identify the component or permit a choice; do not apply the same bonus to both. Attack bonuses do not apply to Feint unless stated. Such bonuses do not improve staking, killing strikes or other finishing procedures unless expressly stated.

=== 10.7 Costs, Failures and Complications
Use normal Effort, Momentum, Woe, Tychē Points, tags and Truths subject to these restrictions.

==== Ordinary Failure
An ordinary failed independent test produces no action effect and generates the usual 1 Woe. It does not also authorise an unrelated GM move, automatic injury or additional Disposition loss. Losing or tying a versus test, or being trumped, generates no ordinary-failure Woe. Apply this symmetrically to player and GM actors; costs already paid remain spent. Doubles complications, explicit ability costs, scenery Dangers and other separately triggered Woe rules still apply normally. The failed action and opposing action establish what happened in the volley.

==== Success at a Cost
On an independent test missing by 1--3, gain 1 Power as usual. The player chooses either 1 Woe for the GM or an immediate, proportionate complication arising from the action. An ordinary cost cannot impose an additional status or extra Disposition loss unless an explicit rule permits it. Suitable costs include exposing an approach, losing access to a minor asset or establishing a limited adverse fact. Scenery actions use their listed Danger when the consequence option is chosen.

==== Doubles
Apply critical Power under §2.6 and §10.5, including the opposing-total rule for exceptional doubles. Doubles complications also apply, within the established stakes and action's scale. They do not cancel an independent action or retroactively change the script. Use the normal rules for buying off a complication with Woe.

==== Explicit Risks and Harm
Abilities, hazards, Risky rolls, scenery Dangers and other explicit rules may impose their stated consequences. Resolve these separately from ordinary Disposition loss.

==== Protected Payments
Generic wording such as ignore harm, cancel a consequence, take the hit or protect an ally does not affect shared Disposition. A rule must explicitly mention Disposition to reduce, redirect, restore or prevent its loss.

Generic prevention, redirection, immunity, Resistance and incidental clearing benefits cannot prevent or remove an accepted injury trade, a running-dry status generated by paying a cost, an agreed concession cost or another consequence accepted as payment for a benefit. An exception must expressly identify the protected payment it affects.

Once recorded, a status can be treated or healed through the applicable procedure. Later healing does not refund the benefit, restore Disposition, refresh an injury trade or erase a Scar.
]

#include "chapter-2.10-conflict-system-aftermath.typ"
