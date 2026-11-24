#import "common.typ": *
#import "adversaries-common.typ": statblock

== 6. Running Adversaries <adv-running-adversaries>
#columns(2, gutter: 6mm)[
=== 6.1 Setup <adv-setup>
+ State intent, stakes and exits for both sides (Core Rules @core-setup). State whether death is possible before any roll.
+ Before calculating starting Disposition, record any eligible phased-boss designation and fixed Start/Half Special assignments (@adv-eligibility-fixed-designation). Designate at most one phased boss per side; designation adds no Grit or Woe.
+ Add up Grit across the side. Apply Ambush (+2 when eligible) and other flat setup modifiers at full value, then a minimum of 1, then opposing Superiority. Determine both sides' adjusted totals before resolving setup. If only one is 0, its opponent wins at no cost within stakes; if both are 0, resolve mutual defeat. Neither outcome activates phases or proceeds to scripting. Record the original adjusted starting Disposition for recovery limits and compromise; don't divide Grit or add an already included setting bonus again.
+ Use the current session Woe pool. At session start, initialize it to 2 Woe per PC. Add this encounter's Difficulty extras and eligible introduction Woe once; count campaign introduction Woe only once. Don't refill merely because a conflict begins.
+ Commit one three-action script for the side, assigning an eligible participant to each action. A minion group is one participant, not one actor per Body.

=== 6.2 Scripting <adv-scripting>
Each exchange is three volleys. Commit three actions and their actors before the first reveal (Core Rules @core-scripting-volleys).
- Track rotation continuously across exchanges: every available participant acts before anyone repeats; no consecutive turns unless only one participant is available.
- Consider opening with the strongest eligible actor's Best action.
- Vary the script to avoid predictable patterns; repeating an action category is legal when actors and rotation permit it.
- Consider a Defend or Maneuver when the side's shared Disposition is under half its starting value. These are tactical suggestions, not mandatory scripts.
- Show the Tell before the Best action; telegraph an opening action before its reveal.
- Update rotation when a participant leaves or becomes unable to act. An unsuitable or unperformable assigned action grants no free actor replacement; normal script changes retain the assigned actor unless an explicit ability permits reassignment.
- Disarm disables the named asset, not automatically an action category. If another plausible approach remains, the assigned actor may use it; switching gear doesn't change the script. Otherwise the action may be lost. Before reveal, the GM may pay 3 Woe (2 with an eligible Leader) to change the unrevealed action, not its actor.

=== 6.3 Action Results <adv-action-results>
Adversary actions follow Core Rules @core-scripting-volleys[§]--@core-costs-failures-complications[]: Attack, Defend, Feint and Maneuver, versus rolls, doubles, supplementary Effects and automatic success. Only these points are specific to adversaries:

- #strong[Grit isn't personal.] Defend restores shared Disposition only. It doesn't restore a personal Grit track, heal statuses or return a Taken Out participant.
- #strong[Woe.] Versus losses, ties and trumped actions generate no ordinary-failure Woe for either side (@adv-woe-economy).
- #strong[Resolution order.] Check eligible Last Stand before final settlement (@adv-last-stand). For a phased boss, check thresholds only after removal and victory are determined and the conflict continues without pending defeat (@adv-phase-checks-benefit-timing). Use @adv-shared-special-timing for shared timing and @adv-fail-safe[§§]--@adv-deferred-special-injuries[] for Special aftermath timing.

=== 6.4 Woe Economy <adv-woe-economy>
Gain Woe from player-bought dice, eligible independent failures (+1), Escalation (+1), a dangerous circumstance becoming relevant (+1, at most 1 per scene; Core Rules @core-woe) and bought-off complications (+2). Versus losses, ties and trumped actions generate no ordinary-failure Woe, symmetrically for player and GM actors. Separately triggered complications, explicit costs and scenery Dangers retain their own rules (Core Rules @core-costs-failures-complications).

#figure(table(columns: (68%, 32%),
  table.header([Spend], [Cost]),
  [Bonus die on an adversary roll], [1 per die, max +2 including free dice],
  [Fire a Special], [1--3],
  [Reinforcements], [Listed named-reserve package (@adv-howl[§§]--@adv-caller-specific-reserve-packages[])],
  [Change an unrevealed scripted action before reveal], [3 (2 with an eligible Leader)],
  [Tick a danger clock], [1 per segment],
  [Extra Shrug], [1],
  [Trigger a listed scenery Danger], [1],
))
Spend on the Best action early. Unspent Woe at session end is wasted tension. An ordinary failed conflict action doesn't also authorise an unrelated GM move or extra harm. Independent Success at a Cost follows Core Rules @core-costs-failures-complications; ordinary costs add no status or extra Disposition loss without explicit permission. Complications respect stakes and independent-action timing.

=== 6.5 Reinforcements <adv-reinforcements>
Reinforcements add their listed Grit to current shared Disposition only, even above the original adjusted starting value. They don't raise starting Disposition, the normal recovery cap or the compromise reference (Core Rules @core-shared-disposition-participation, @core-compromise). Defend and other recovery restore only up to the original start unless explicitly overridden. At or above the cap, restore nothing and don't remove an existing excess; other permitted Defend purchases remain available. Removal subtracts no Grit. Joining participants enter continuous rotation under Core Rules @core-scripting-volleys; arrival grants no extra scripted action, free actor reassignment or setup recalculation. Only a genuinely new conflict establishes a new start. Boss phase references and thresholds remain fixed (@adv-setup-fixed-thresholds). During a Last Stand volley, reinforcement arrival remains legal under its own timing, but its Grit can't raise the pending-defeat side above 0 (@adv-last-stand).

// PLAYTEST: Finite named shared reserves; action-free calls use a pre-reveal window.
Before setup record a side-wide roster with named cards and available copies. Each caller uses only its listed package. Check prerequisites before payment; pay fully and mark selected copies committed immediately. Committed or previously arrived copies are unavailable to all callers. Each copy enters once. Withdrawal, removal or defeat replenishes no reserve. Add no copies during the conflict without a scenario exception established before setup.

Activate action-free calls between volleys, before the next reveal. They can't interrupt rolls, action resolution or end-of-volley/exchange-end procedures. The initial call window follows resolution of setup defeat when the conflict proceeds to scripting, before the first reveal. Multiple activations require package permission, full payment and separate available copies. A call before volley three may arrive that exchange end; no new call may be inserted after volley three resolves to arrive immediately. Preserve all participation, communication, route and phase prerequisites. Last Stand opens no call window.

At an eligible exchange end, resolve arrivals after defeat determination and eligible phase checks (@adv-shared-special-timing). No arrival reverses finalized defeat, reopens the preceding phase check or creates an additional check. Preserve explicit recovery prohibitions, including Last Stand. Packages allowing route-delayed arrival check the route at that step; blocked copies stay committed without further payment. Don't infer unlisted timing, route or communication requirements for another package.

At conflict end, clear unresolved arrival records without refund or restoration to that conflict's reserve. Dispatched characters remain in the fiction. A later arrival is a new fictional event consistent with settlement, not retroactive reinforcement or automatic reopening. Don't reset reserves to resume the same contest as a fresh conflict. Establish any genuinely new conflict's reserve availability through its setup.

=== 6.6 Minion Bodies <adv-minion-bodies>
Minion groups have Bodies (3--6) instead of Shrugs. Each successful Attack outside a conflict drops 1 Body. Extra Power spent on Extra Feat drops another. At half Bodies or fewer, ratings drop by 1. At zero, the group is gone. Morale usually ends it sooner. Ordinary conflict Disposition loss removes no Bodies and doesn't deplete an individual Grit share. A group represented by one entry is one participant for rotation and area-effect loss bonuses.

=== 6.7 When Adversaries Win Or Lose <adv-when-adversaries-win-lose>
- #strong[Defeat.] A side loses at 0 Disposition or when nobody can continue pursuing its objective. Complete independent actions before checking victory. An eligible Last Stand may postpone defeat at 0 for one final volley (@adv-last-stand); finish that extension before finishing procedures or settlement. Defeat isn't automatic death or injury; outcomes stay within intent and stakes. Removal subtracts no Disposition. If both sides are defeated in the same volley, or both start at 0 after Superiority, use mutual defeat, not a winner's compromise (Core Rules @core-superiority, @core-defeat-mutual-defeat-concession). Simultaneous setup defeat scripts no exchanges and doesn't itself inflict injury, drain pools, Take Out an individual or satisfy a finishing requirement.
- #strong[No injury trade.] Ordinary adversaries and minion groups can't use it (Core Rules @core-npcs-harm). A named rival built as a full PC can, subject to Core Rules @core-accepting-injury: once per character per conflict, at most one participant per Attack or Feint.
- #strong[Compromise.] Resolve deferred Special applications before ordinary existing-injury credit; include any eligible Fail-safe assignments under @adv-fail-safe. Neither procedure changes the ordinary compromise grade. Use the winner's original adjusted starting Disposition recorded at setup, unchanged by reinforcements. Remaining Disposition at or above that start means none lost; use the final remaining total, not cumulative loss or a separate reinforcement ledger. Use the starting Disposition lost: none = None; more than 0 but less than half = Minor; at least half but less than three-quarters = Significant; three-quarters or more = Major, without rounding. Negotiate one outcome-first package. Injury tiers 2/3/4 guide its severity, not automatic additions. Credit eligible existing injuries once. NPCs may use eligible reduction against imposed compromise statuses, not agreed payments; Resistance doesn't revoke the loser's concession or create a replacement injury cost (Core Rules @core-compromise).
- #strong[Concession.] Offer one before the next roll (Core Rules @core-defeat-mutual-defeat-concession); one third of starting shared Disposition is a tactical prompt, not a restriction. Propose concrete gains and retained interests suited to the opponent: humans may surrender, beasts may be distracted or allowed to flee, and a Boss may negotiate retreat. Guardians don't normally offer concessions. If accepted, apply the agreed terms without another roll or an additional compromise unless included. Recorded deferred Special applications remain imposed, Resistable Special effects under @adv-deferred-special-injuries; concession terms must acknowledge them and can't waive them or turn them into protected payments. Don't add an unstated retreat benefit or danger-clock tick.

=== 6.8 Outside Conflicts <adv-outside-conflicts>
- #strong[Passive opposition.] Difficulty = 14 + the adversary's relevant rating. A Minor's Defend (Fair +1) gives 15; an Established Steward's Defend (+4) gives 18. This outside-conflict procedure doesn't replace Standard 15 + Guard for independent conflict tests.
- #strong[Active opposition.] Roll versus: 2d12 + rating.
- #strong[Harm to adversaries.] Attack Power inflicts statuses as normal. Apply at most one eligible NPC reduction per application. Tier 6 applies the status's established scope and breaking-point procedure; explicit creature replacements apply only where stated. Apply any explicit creature-specific status ceiling from the setting. Don't introduce Disposition loss outside conflicts.

=== 6.9 Other Conflict Types <adv-other-conflict-types>
The same card runs any type in Core Rules @core-conflict-types. Swap Attack, Defend, Feint and Maneuver for that type's skills and keep the ratings, Grit and Woe costs. Rename Specials to fit: Covering Move becomes support for an ally's argument, Lockdown a sealed network in a Hack. A reskin still needs a plausible approach and can't widen intent, stakes or effect permissions.
== 7. Special Rulings <adv-special-rulings>
The sections below give exact timing and limits for individual Specials. Look one up when its Special is in play; you don't need them to run an ordinary fight.

=== 7.1 Last Stand <adv-last-stand>
Last Stand is a defeat-triggered Special costing 2 Woe. It gives both sides one final volley, not an individual action outside rotation.

#strong[Activation.] Complete the deciding volley, including both independent actions, then check removal, defeat and mutual defeat. If a side is defeated at 0 shared Disposition, at least one participant remains able to pursue its objective, and a participating bearer has Last Stand unlocked and usable, the GM may pay 2 Woe before finalizing defeat. A Taken Out or otherwise unable bearer can't activate it. Exclude setup defeat, mutual defeat and defeat solely because nobody can continue.

For a designated phased boss, Last Stand must already have unlocked at Half and become usable from a subsequent volley (@adv-special-ownership-availability-revelation). Reaching 0 doesn't unlock it retroactively. Non-phased bearers follow their own availability rules.

#strong[One final volley.] Postpone defeat, finishing procedures and compromise until exactly one additional volley resolves. Both sides follow normal action interactions, costs, helping, participation and continuous rotation. Use each side's next unrevealed scripted action and its assigned actor. If the exchange has ended, each side secretly commits one action and an eligible actor, then reveals normally. This isn't a new exchange: don't refresh exchange-limited abilities or tick clocks merely for scripting the added action. Changing an unrevealed action retains the normal cost and assigned actor; Last Stand grants no free change or reassignment. An unperformable action has no free replacement.

#strong[Defeat stays pending.] The activating side remains at 0 shared Disposition. Defend, reinforcement Grit and other Disposition recovery can't raise it during this volley or cancel its pending defeat. This restriction doesn't prevent otherwise legal supplementary purchases, status healing or other explicit effects. Reinforcements may arrive under their listed timing and participate only when normal scripting and rotation permit; arrival grants no immediate action. Last Stand neither returns a removed participant nor allows action through incapacity.

No new phase activates while defeat is pending. Previously activated benefits apply only while the boss remains eligible; there is no phase refresh or bonus action.

// PLAYTEST: Last Stand creates no exchange boundary or repeated arrival check.
If Last Stand postpones defeat after volley three, process that exchange's normal arrival check once before the extension. Eligible arrivals can't raise the pending-defeat side above 0 or grant immediate actions. An extension before the normal exchange boundary creates no arrival check. After the extension proceed to final outcome and settlement without another arrival check. Last Stand opens no action-free reinforcement-call window; no call may be inserted between activation and its final volley.

#strong[Final outcome.] Complete all independently resolving actions. The activating side then loses; if its opponent is also defeated, resolve mutual defeat. Otherwise determine the winner within the stakes from the final state. A side may use Last Stand only once per conflict; multiple bearers don't stack or chain extensions. Resolve eligible Fail-safe next, then permitted finishing procedures, deferred applications and ordinary compromise (@adv-fail-safe[§§]--@adv-deferred-special-injuries[]). Last Stand grants no immunity to those outcomes.

=== 7.2 Fail-safe <adv-fail-safe>
Fail-safe is a separate defeat-triggered Special, not an action or a deferred application under @adv-deferred-special-injuries. It costs 3 Woe and must already be unlocked and usable. A phased boss's defeat-triggered unlock follows @adv-special-ownership-availability-revelation; final defeat can't supply a missed unlock.

#strong[Trigger and participation.] After the deciding volley and any Last Stand extension, determine the final outcome. When its side loses at 0 shared Disposition, a Guardian still able to participate may pay 3 Woe and detonate before permitted finishing procedures and compromise. Being Taken Out or otherwise unable prevents activation; shared Disposition reaching 0 doesn't by itself remove an individual. Exclude setup defeat, accepted concessions, mutual defeat and defeat solely because nobody can continue. Don't reopen an already settled outcome.

#strong[Detonation.] Establish reach from the Guardian's position and the fiction. Assign one #emph[burned −3] additional compromise injury to each PC within reach; don't expand the target set to allies, bystanders or other NPCs. The detonation destroys the Guardian. It grants no action, volley or shared Disposition loss and can't change the losing side into a winner. Last Stand and Fail-safe are separate purchases: pay 2 Woe and then 3 Woe at their respective triggers; no reserved or waived cost follows from the first purchase.

#strong[Assignment isn't early harm.] Record the blast injuries when the Guardian detonates. Don't impose those compromise statuses before a finishing procedure or use them to lower its Difficulty. Their status application occurs at compromise settlement, after the @adv-deferred-special-injuries applications below.

#strong[Additional injuries and credit.] These explicit Special assignments are due even if the winner otherwise owes no injury or its ordinary compromise grade is None. They don't increase the ordinary grade or require unrelated injuries. Settle the assignments alongside any ordinary compromise costs under Core Rules @core-compromise: credit each eligible existing injury at most once across the complete settlement, never once for Fail-safe and again for another injury cost. Apply eligible Resistance and reduction to imposed injuries normally. Agreed payments remain protected. Resistance removing an injury creates no replacement cost and doesn't cancel a separate consequence.

=== 7.3 Deferred Special Injuries <adv-deferred-special-injuries>
Shock Field, Venom / Infection and any setting Special that explicitly refers to it use this procedure. Fail-safe instead uses @adv-fail-safe; no other Special is brought into this procedure merely by similar wording.

#strong[Record each application.] Each qualifying paid activation records one incoming application against the affected target: Special, target, status, tier, trigger order and used-named-Special allowance. Shock Field records #emph[jolted −2] when a PC loses a versus roll to the Guardian in melee, not only on Attack. Venom / Infection records #emph[poisoned −2] after a successful Attack; it doesn't require a versus win if the Attack resolves independently. Each Special retains its listed target restrictions. A tie or trumped no-roll action doesn't qualify. Before payment, check a conflict-wide used-named-Special record. Each named Special may record only one application per target per conflict, across all sources. Mark use on recording, not infliction. Ineligible repeats spend no Woe for that application; other action effects resolve normally. Different named Specials have separate allowances. Reduction to 0, source removal, phase changes, reserves, record resolution or conflict-type changes don't reset use. Renaming or reskinning grants no new allowance; variants share the original unless expressly stated otherwise. This creates no new outside-conflict Shock Field procedure. Setting Specials retain their listed outside-conflict effects and immediate benefits; deferral applies only to the recorded status application.

#strong[Pending isn't inflicted.] A record isn't an active status. It imposes no penalty, doesn't stack or cause tier-6 consequences, can't be treated or healed yet, and changes neither Disposition nor participation when recorded.

#strong[Every outcome.] Recorded applications remain due after victory, defeat, mutual defeat or accepted concession. Finalize the outcome after any Last Stand extension, resolve eligible Fail-safe activation and then any permitted finishing procedure before applying these records. Concession terms must acknowledge pending applications; they can't waive them or convert them into unresistable agreed payments. These remain imposed Special effects.

#strong[Resolve individually.] Before ordinary compromise's existing-injury credit or Fail-safe injury settlement, resolve records in trigger order. Apply eligible Resistance and harm reduction separately to each incoming application, then stack what remains normally. Don't combine records into a larger incoming status before Resistance. Resolve resulting tier-6, Scar, Dying or explicit creature-specific consequences normally. An application reduced to tier 0 creates no status or replacement cost.

#strong[No payment by an existing injury.] Compromise credit can't discharge a deferred application. Normal stacking with an existing matching status still applies. After all applications resolve, an injury actually remaining may satisfy one eligible ordinary compromise injury cost under Core Rules @core-compromise. Pending records alone supply no credit. Across Fail-safe and ordinary costs, each injury is credited only once (@adv-fail-safe).

#strong[Binding outcome.] These applications, Resistance costs and resulting status consequences don't restore Disposition, reopen the settled outcome or grant an action or volley. Clear each record after resolution. Then settle Fail-safe assignments and ordinary compromise where applicable; apply any agreed concession costs under their protected-payment rules. Recover each layer only through its own procedure.

=== 7.4 Interpose (Bulwark) <adv-interpose>
// PLAYTEST: Status interception and Hold the Line share one use per exchange.
Once per exchange in a conflict, choose status interception below or Hold the Line. When an ally would receive an imposed status that you can physically or otherwise fictionally intercept, you may take that status in their place. Outside conflicts, you can intercept a fitting status with no frequency limit.

Declare Interpose before the original target rolls Resistance or applies any harm reduction.

- Redirect the entire incoming status to yourself. The original target receives none of that status.
- Resolve your own normal Resistance or NPC harm reduction against it, then stack what remains normally. Don't first apply the original target's Resistance, armour or other reduction.
- Interpose redirects; it doesn't reduce the tier. Ordinary NPCs still get only one reduction per status (Core Rules @core-npcs-harm).
- It can't redirect shared Disposition loss or any protected payment (Core Rules @core-costs-failures-complications).
- You must be able to intercept the source of harm in the established fiction. You can't protect an ally from an area effect that already affects both of you.

#emph[Example:] a guardian with Interpose can step into a shock-baton strike that would inflict #emph[jolted −3] on an ally. The guardian receives #emph[jolted −3] and uses its own eligible reduction. It can't intercept ordinary Disposition loss or shield that ally from a blast that already catches them both.

#strong[Hold the Line.] While able to participate and fictionally able to shield an ally, reduce combined ordinary Disposition loss from one successful opposing Attack by 1, minimum 0. Declare after calculating loss but before injury trade or loss application. It may trigger outside the assigned turn and grants no action or rotation credit. Apply once, including ordinary area-loss bonuses; multiple Bulwarks can't apply it to the same Attack. An eligible injury trade may cancel remaining ordinary loss normally. Exclude Feint, Maneuver, separately listed Special damage, statuses and protected payments. It can't solely protect the Bulwark when no ally is being shielded. No outside-conflict effect.

=== 7.5 Guardian Self-Repair <adv-guardian-self-repair>
Once per guardian per exchange, after the guardian succeeds on its assigned scripted action, including Success at a Cost, it may spend 1 Woe to choose one:
- Restore up to 2 of its side's shared Disposition, up to its original adjusted starting Disposition.
- Remove up to 2 tiers from one existing physical status on that guardian that its repair systems can address.

Self-Repair supplements the successful action. It requires no additional action or Power. The action qualifies even when all its Power funds permitted supplementary Effects.

Resolve Self-Repair at the end of the triggering volley, after both independent actions and their immediate consequences, but before Bolt departures, final defeat, mutual-defeat and defeat-triggered Special checks (@adv-shared-special-timing). The guardian must still be able to participate and pay the full 1 Woe. Disposition recovery requires the side to remain above 0 at that point. Status repair doesn't restore Disposition or cancel pending defeat.

// PLAYTEST: Variant C is the sole lead rule.
Disposition recovery from 0 isn't allowed in this window. Use the post-repair total to determine the outcome. It can't reopen a finalized outcome, reverse setup defeat or an accepted concession, or override an explicit recovery prohibition such as Last Stand's pending-defeat restriction.

Each guardian tracks its own use. Failed, tied, trumped or unperformed actions don't qualify. An unused opportunity expires at the end of the volley; an extra volley within the same exchange doesn't refresh it.

Choose Disposition or status repair, not both. Neither repairs the other layer, refills pools, erases Scars, returns a Taken Out participant or affects a protected payment (Core Rules @core-costs-failures-complications). At or above the cap, Disposition repair restores nothing but doesn't reduce any excess.

]

#include "chapter-adversaries-part-3.typ"
