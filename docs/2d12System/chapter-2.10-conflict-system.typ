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

Helping this setup roll grants the listed +1 Disposition per helper; it does not also grant the ordinary Help bonus die unless a specific rule says otherwise.

#strong[Adversary exception.] Sides built with Grit use the Adversaries setup procedure instead of the leader's Disposition roll. Preserve explicit exceptions such as Guard when resolving independent tests.

// OPEN: setup Help's pool-point cost is not settled by the bonus clarification.

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

// OPEN: exceptional doubles versus opposed totals, and the Woe treatment of losing versus tests, require explicit rulings.

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
Remove opposing Disposition equal to the Power committed to this effect, plus 1. An Attack need not represent bodily harm. It may drive an opponent back, expose a weakness, advance an argument, or bring pursuers closer.

==== Defend
Restore 1 Disposition per Power committed, up to your side's starting value. Defend restores the ability to pursue the objective. It does not heal statuses, restore Pools, repair equipment or reverse an established consequence. Winning a versus test also prevents the opposing action's normal effect.

==== Feint
Remove opposing Disposition equal to the Power committed to this effect, plus 1. Feint bypasses Defend but is trumped by Attack. Against Maneuver, both resolve independently: Feint may advance its objective while Maneuver establishes an advantage.

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
An ordinary failed action produces no action effect and generates the usual 1 Woe. It does not also authorise an unrelated GM move, automatic injury or additional Disposition loss. The failed action and opposing action establish what happened in the volley.

==== Success at a Cost
On an independent test missing by 1--3, gain 1 Power as usual. The player chooses either 1 Woe for the GM or an immediate, proportionate complication arising from the action. An ordinary cost cannot impose an additional status or extra Disposition loss unless an explicit rule permits it. Suitable costs include exposing an approach, losing access to a minor asset or establishing a limited adverse fact. Scenery actions use their listed Danger when the consequence option is chosen.

==== Doubles
Apply critical Power normally. Doubles complications also apply, within the established stakes and action's scale. They do not cancel an independent action or retroactively change the script. Use the normal rules for buying off a complication with Woe.

==== Explicit Risks and Harm
Abilities, hazards, Risky rolls, scenery Dangers and other explicit rules may impose their stated consequences. Resolve these separately from ordinary Disposition loss.

==== Protected Payments
Generic wording such as ignore harm, cancel a consequence, take the hit or protect an ally does not affect shared Disposition. A rule must explicitly mention Disposition to reduce, redirect, restore or prevent its loss.

Generic prevention, redirection, immunity, Resistance and incidental clearing benefits cannot prevent or remove an accepted injury trade, a running-dry status generated by paying a cost, an agreed concession cost or another consequence accepted as payment for a benefit. An exception must expressly identify the protected payment it affects.

Once recorded, a status can be treated or healed through the applicable procedure. Later healing does not refund the benefit, restore Disposition, refresh an injury trade or erase a Scar.

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

Setup Help requires contribution to the objective. Free Help waives its normal resource cost, not relevance, bonus-dice limits or participation risks. Removing a companion or group subtracts no Disposition, but may defeat the side if nobody remains able to pursue the objective.

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
The winner achieves its intent within the stakes, subject to compromise. Do not repeat the same unresolved contest; a new conflict requires a materially different objective or changed circumstances.

Defeat does not automatically inflict injury, destroy every creature present or satisfy a creature-specific killing requirement. Where a finishing procedure is required, victory secures the opportunity to attempt it. Complete the deciding volley, determine victory or mutual defeat, resolve any permitted finishing procedure, then settle compromise and aftermath.

Do not apply a proposed compromise status early to lower finishing Difficulty. A failed finishing attempt does not automatically reopen the conflict or add a compromise grade. A special attack procedure must state how it changes the normal interaction and what happens to the opposing action; substituting a Difficulty alone does not settle that question.

==== Mutual Defeat
If both sides are defeated in the same volley, neither wins outright. Resolve compatible parts of both intents and a shared setback within the stakes. Neither receives an incompatible outcome automatically. Calculate no winner's compromise.

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

#strong[Specific breaking points.] Generic harmful tier-6 statuses follow the normal Scar procedure. A named creature track or condition with an explicit breaking-point replacement uses that outcome instead of an unstated generic Scar. Sun-Sick and Thirst use their listed setting consequences; Bled retains the core tier-6 Scar procedure. A tier-5 ceiling grants no immunity to payments, sunlight or removal outside its stated scope. Award no duplicate Scar merely because both a general rule and its replacement describe one event.

=== 10.15 Order of Resolution
+ Establish objectives, stakes, participants and exits.
+ Calculate starting Disposition and Superiority.
+ Resolve overwhelming preparation immediately, if applicable.
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
