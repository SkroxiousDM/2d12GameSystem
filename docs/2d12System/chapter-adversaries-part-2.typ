#import "common.typ": *
#import "adversaries-common.typ": statblock

== 6. Running Adversaries
#columns(2, gutter: 6mm)[
=== 6.1 Setup
+ State intent, stakes and exits for both sides (Core §10.2). State whether death is possible before any roll.
+ Before calculating starting Disposition, record any eligible phased-boss designation and fixed Start/Half Special assignments (§7.1). Designate at most one phased boss per side; designation adds no Grit or Woe.
+ Add up Grit across the side. Apply Ambush (+2 when eligible) and other flat setup modifiers at full value, then a minimum of 1, then opposing Superiority. Determine both sides' adjusted totals before resolving setup. If only one is 0, its opponent wins at no cost within stakes; if both are 0, resolve mutual defeat. Neither outcome activates phases or proceeds to scripting. Record the original adjusted starting Disposition for recovery limits and compromise; do not divide Grit or add an already included setting bonus again.
+ Use the current session Woe pool. At session start, initialize it to 2 Woe per PC. Add this encounter's Difficulty extras and eligible introduction Woe once; count campaign introduction Woe only once. Do not refill merely because a conflict begins.
+ Commit one three-action script for the side, assigning an eligible participant to each action. A minion group is one participant, not one actor per Body.

=== 6.2 Scripting
Each exchange is three volleys. Commit three actions and their actors before the first reveal (Core Rules §10.5).
- Track rotation continuously across exchanges: every available participant acts before anyone repeats; no consecutive turns unless only one participant is available.
- Consider opening with the strongest eligible actor's Best action.
- Vary the script to avoid predictable patterns; repeating an action category is legal when actors and rotation permit it.
- Consider a Defend or Maneuver when the side's shared Disposition is under half its starting value. These are tactical suggestions, not mandatory scripts.
- Show the Tell before the Best action; telegraph an opening action before its reveal.
- Update rotation when a participant leaves or becomes unable to act. An unsuitable or unperformable assigned action grants no free actor replacement; normal script changes retain the assigned actor unless an explicit ability permits reassignment.
- Disarm disables the named asset, not automatically an action category. If another plausible approach remains, the assigned actor may use it; switching gear does not change the script. Otherwise the action may be lost. Before reveal, the GM may pay 3 Woe (2 with an eligible Leader) to change the unrevealed action, not its actor.

=== 6.3 Action Results
- #strong[Attack.] Commit at least 1 Power to ordinary loss to remove committed Power + 1 from opposing shared Disposition; apply the +1 once per action, not per purchase. No commitment means no loss. An area Attack applying ordinary loss adds 1 per additional opposing participant affected (Core Rules §10.17). No status unless explicitly permitted.
- #strong[Defend.] Each committed Power restores 1 shared Disposition up to the original adjusted starting value. No commitment means no recovery unless an explicit ability grants it independently. At or above the cap, recovery restores nothing but removes no existing excess. Defend does not restore a personal Grit track, heal statuses or return a Taken Out participant; permitted supplementary purchases remain available.
- #strong[Feint.] As Attack for loss. It resolves independently against Defend, is trumped by Attack, opposes Feint and Maneuver in a versus test.
- #strong[Maneuver.] Power buys Impede (1), Gain Position (1), Disarm (3), Create a Truth (2 per rank), permitted supplementary Effects or an eligible scenery action. Buy Impede, Gain Position and Disarm at most once each per Maneuver. Impede and Gain Position affect the relevant side's next scripted action, not Resistance; they expire unused if it makes no roll. Pending Impedes do not stack. Only one Gain Position may be pending per side regardless of source; additional grants do not stack, refresh or extend it. Gain Position counts toward the bonus-dice cap.
- #strong[Independent rolls] against an adversary use Standard 15 plus its Guard, adjusted by applicable Truths and explicit modifiers.
- #strong[Versus rolls:] the higher total wins with 1 Power, +1 per full 3 points over the opponent. Double 12s do not override a higher total or break a tie. Winning ordinary doubles add +1 Power; winning double 12s add +2 instead. Losing or tied doubles grant no Power or normal action effect. Double 1s cause their complication without automatically losing; successful double 1s also gain the ordinary critical Power. Apply the same procedure to ability-created doubles. An exact tie produces no normal action effect or Power. Losing by 1--3 does not qualify for Success at a Cost. Versus losses, ties and trumped actions generate no ordinary-failure Woe (Core Rules §2.6, §10.5--10.7).
- #strong[Supplementary spending.] Use Core Rules §10.6 for each action's permissions and limits. No primary purchase is mandatory; all Power may fund permitted supplementary Effects, without double spending. Winning versus prevents the opposing normal effect even if no Power funds loss or recovery; independent opposing actions still resolve. Exceptions grant only their stated scope.
- #strong[Automatic success.] Replace only an otherwise permitted action's roll, not its interaction or assigned turn. Use listed Power; in versus it wins unless both automatically succeed, then tie unless expressly overridden. No extra action, rescue of a trumped action or dice-based critical/complication follows.
- #strong[Resolution order.] Trumped actions make no roll and produce no effect. Both independent actions finish before checking victory, even if one defeats a side or takes an actor out. Check eligible Last Stand before final settlement (§6.10). For a phased boss, check thresholds only after removal and victory are determined and the conflict continues without pending defeat (§7.1). Use §6.16 for shared timing and §§6.11--6.12 for Special aftermath timing.

=== 6.4 Woe Economy
Gain Woe from player-bought dice, eligible independent failures (+1), Escalation (+1), dangerous scene Truths (+1 per scene) and bought-off complications (+2). Versus losses, ties and trumped actions generate no ordinary-failure Woe, symmetrically for player and GM actors. Separately triggered complications, explicit costs and scenery Dangers retain their own rules (Core Rules §10.7).

#figure(table(columns: (68%, 32%),
  table.header([Spend], [Cost]),
  [Bonus die on an adversary roll], [1 per die, max +2 including free dice],
  [Fire a Special], [1--3],
  [Reinforcements], [Listed named-reserve package (§§6.22--6.24)],
  [Change an unrevealed scripted action before reveal], [3 (2 with an eligible Leader)],
  [Tick a danger clock], [1 per segment],
  [Extra Shrug], [1],
  [Trigger a listed scenery Danger], [1],
))
Spend on the Best action early. Unspent Woe at session end is wasted tension. An ordinary failed conflict action does not also authorise an unrelated GM move or extra harm. Independent Success at a Cost follows Core Rules §10.7; ordinary costs add no status or extra Disposition loss without explicit permission. Complications respect stakes and independent-action timing.

=== 6.5 Reinforcements
Reinforcements add their listed Grit to current shared Disposition only, even above the original adjusted starting value. They do not raise starting Disposition, the normal recovery cap or the compromise reference (Core Rules §10.9, §10.13). Defend and other recovery restore only up to the original start unless explicitly overridden. At or above the cap, restore nothing and do not remove an existing excess; other permitted Defend purchases remain available. Removal subtracts no Grit. Joining participants enter continuous rotation under Core Rules §10.5; arrival grants no extra scripted action, free actor reassignment or setup recalculation. Only a genuinely new conflict establishes a new start. Boss phase references and thresholds remain fixed (§7.1). During a Last Stand volley, reinforcement arrival remains legal under its own timing, but its Grit cannot raise the pending-defeat side above 0 (§6.10).

// PLAYTEST: Finite named shared reserves; action-free calls use a pre-reveal window.
Before setup record a side-wide roster with named cards and available copies. Each caller uses only its listed package. Check prerequisites before payment; pay fully and mark selected copies committed immediately. Committed or previously arrived copies are unavailable to all callers. Each copy enters once. Withdrawal, removal or defeat replenishes no reserve. Add no copies during the conflict without a scenario exception established before setup.

Activate action-free calls between volleys, before the next reveal. They cannot interrupt rolls, action resolution or end-of-volley/exchange-end procedures. The initial call window follows resolution of setup defeat when the conflict proceeds to scripting, before the first reveal. Multiple activations require package permission, full payment and separate available copies. A call before volley three may arrive that exchange end; no new call may be inserted after volley three resolves to arrive immediately. Preserve all participation, communication, route and phase prerequisites. Last Stand opens no call window.

At an eligible exchange end, resolve arrivals after defeat determination and eligible phase checks (§6.16). No arrival reverses finalized defeat, reopens the preceding phase check or creates an additional check. Preserve explicit recovery prohibitions, including Last Stand. Packages allowing route-delayed arrival check the route at that step; blocked copies stay committed without further payment. Do not infer unlisted timing, route or communication requirements for another package.

At conflict end, clear unresolved arrival records without refund or restoration to that conflict's reserve. Dispatched characters remain in the fiction. A later arrival is a new fictional event consistent with settlement, not retroactive reinforcement or automatic reopening. Do not reset reserves to resume the same contest as a fresh conflict. Establish any genuinely new conflict's reserve availability through its setup.

=== 6.6 Minion Bodies
Minion groups have Bodies (3--6) instead of Shrugs. Each successful Attack outside a conflict drops 1 Body. Extra Power spent on Extra Feat drops another. At half Bodies or fewer, ratings drop by 1. At zero, the group is gone. Morale usually ends it sooner. Ordinary conflict Disposition loss removes no Bodies and does not deplete an individual Grit share. A group represented by one entry is one participant for rotation and area-effect loss bonuses.

=== 6.7 When Adversaries Win Or Lose
- #strong[Defeat.] A side loses at 0 Disposition or when nobody can continue pursuing its objective. Complete independent actions before checking victory. An eligible Last Stand may postpone defeat at 0 for one final volley (§6.10); finish that extension before finishing procedures or settlement. Defeat is not automatic death or injury; outcomes stay within intent and stakes. Removal subtracts no Disposition. If both sides are defeated in the same volley, or both start at 0 after Superiority, use mutual defeat, not a winner's compromise (Core Rules §10.3, §10.12). Simultaneous setup defeat scripts no exchanges and does not itself inflict injury, drain pools, Take Out an individual or satisfy a finishing requirement.
- #strong[No injury trade.] Ordinary adversaries and minion groups cannot use it (Core §10.14). A named rival built as a full PC can, subject to §10.11: once per character per conflict, at most one participant per Attack or Feint.
- #strong[Compromise.] Resolve deferred Special applications before ordinary existing-injury credit; include any eligible Fail-safe assignments under §6.11. Neither procedure changes the ordinary compromise grade. Use the winner's original adjusted starting Disposition recorded at setup, unchanged by reinforcements. Remaining Disposition at or above that start means none lost; use the final remaining total, not cumulative loss or a separate reinforcement ledger. Use the starting Disposition lost: none = None; more than 0 but less than half = Minor; at least half but less than three-quarters = Significant; three-quarters or more = Major, without rounding. Negotiate one outcome-first package. Injury tiers 2/3/4 guide its severity, not automatic additions. Credit eligible existing injuries once. NPCs may use eligible reduction against imposed compromise statuses, not agreed payments; Resistance does not revoke the loser's concession or create a replacement injury cost (Core §10.13).
- #strong[Concession.] Offer one before the next roll (Core §10.12); one third of starting shared Disposition is a tactical prompt, not a restriction. Propose concrete gains and retained interests suited to the opponent: humans may surrender, beasts may be distracted or allowed to flee, and a Boss may negotiate retreat. Guardians do not normally offer concessions. If accepted, apply the agreed terms without another roll or an additional compromise unless included. Recorded deferred Special applications remain imposed, Resistable Special effects under §6.12; concession terms must acknowledge them and cannot waive them or turn them into protected payments. Do not add an unstated retreat benefit or danger-clock tick.

=== 6.8 Outside Conflicts
- #strong[Passive opposition.] Difficulty = 12 + the adversary's relevant rating. A Minor's Defend (Fair +3) gives 15; an Established Steward's Defend (+6) gives 18. This outside-conflict procedure does not replace Standard 15 + Guard for independent conflict tests.
- #strong[Active opposition.] Roll versus: 2d12 + rating.
- #strong[Harm to adversaries.] Attack Power inflicts statuses as normal. Apply at most one eligible NPC reduction per application. Tier 6 applies the status's established scope and breaking-point procedure; explicit creature replacements apply only where stated. Apply any explicit creature-specific status ceiling from the setting. Do not introduce Disposition loss outside conflicts.

=== 6.9 Other Conflict Types
The same card runs any type in Core §10.4. Swap Attack, Defend, Feint and Maneuver for that type's skills and keep the ratings, Grit and Woe costs. Rename Specials to fit: Covering Move becomes support for an ally's argument, Lockdown a sealed network in a Hack. A reskin still needs a plausible approach and cannot widen intent, stakes or effect permissions.
=== 6.10 Last Stand
Last Stand is a defeat-triggered Special costing 2 Woe. It gives both sides one final volley, not an individual action outside rotation.

#strong[Activation.] Complete the deciding volley, including both independent actions, then check removal, defeat and mutual defeat. If a side is defeated at 0 shared Disposition, at least one participant remains able to pursue its objective, and a participating bearer has Last Stand unlocked and usable, the GM may pay 2 Woe before finalizing defeat. A Taken Out or otherwise unable bearer cannot activate it. Exclude setup defeat, mutual defeat and defeat solely because nobody can continue.

For a designated phased boss, Last Stand must already have unlocked at Half and become usable from a subsequent volley (§7.1). Reaching 0 does not unlock it retroactively. Non-phased bearers follow their own availability rules.

#strong[One final volley.] Postpone defeat, finishing procedures and compromise until exactly one additional volley resolves. Both sides follow normal action interactions, costs, helping, participation and continuous rotation. Use each side's next unrevealed scripted action and its assigned actor. If the exchange has ended, each side secretly commits one action and an eligible actor, then reveals normally. This is not a new exchange: do not refresh exchange-limited abilities or tick clocks merely for scripting the added action. Changing an unrevealed action retains the normal cost and assigned actor; Last Stand grants no free change or reassignment. An unperformable action has no free replacement.

#strong[Defeat stays pending.] The activating side remains at 0 shared Disposition. Defend, reinforcement Grit and other Disposition recovery cannot raise it during this volley or cancel its pending defeat. This restriction does not prevent otherwise legal supplementary purchases, status healing or other explicit effects. Reinforcements may arrive under their listed timing and participate only when normal scripting and rotation permit; arrival grants no immediate action. Last Stand neither returns a removed participant nor allows action through incapacity.

No new phase activates while defeat is pending. Previously activated benefits apply only while the boss remains eligible; there is no phase refresh or bonus action.

// PLAYTEST: Last Stand creates no exchange boundary or repeated arrival check.
If Last Stand postpones defeat after volley three, process that exchange's normal arrival check once before the extension. Eligible arrivals cannot raise the pending-defeat side above 0 or grant immediate actions. An extension before the normal exchange boundary creates no arrival check. After the extension proceed to final outcome and settlement without another arrival check. Last Stand opens no action-free reinforcement-call window; no call may be inserted between activation and its final volley.

#strong[Final outcome.] Complete all independently resolving actions. The activating side then loses; if its opponent is also defeated, resolve mutual defeat. Otherwise determine the winner within the stakes from the final state. A side may use Last Stand only once per conflict; multiple bearers do not stack or chain extensions. Resolve eligible Fail-safe next, then permitted finishing procedures, deferred applications and ordinary compromise (§§6.11--6.12). Last Stand grants no immunity to those outcomes.

=== 6.11 Fail-safe
Fail-safe is a separate defeat-triggered Special, not an action or a deferred application under §6.12. It costs 3 Woe and must already be unlocked and usable. A phased boss's defeat-triggered unlock follows §7.1; final defeat cannot supply a missed unlock.

#strong[Trigger and participation.] After the deciding volley and any Last Stand extension, determine the final outcome. When its side loses at 0 shared Disposition, a Guardian still able to participate may pay 3 Woe and detonate before permitted finishing procedures and compromise. Being Taken Out or otherwise unable prevents activation; shared Disposition reaching 0 does not by itself remove an individual. Exclude setup defeat, accepted concessions, mutual defeat and defeat solely because nobody can continue. Do not reopen an already settled outcome.

#strong[Detonation.] Establish reach from the Guardian's position and the fiction. Assign one burned-3 additional compromise injury to each PC within reach; do not expand the target set to allies, bystanders or other NPCs. The detonation destroys the Guardian. It grants no action, volley or shared Disposition loss and cannot change the losing side into a winner. Last Stand and Fail-safe are separate purchases: pay 2 Woe and then 3 Woe at their respective triggers; no reserved or waived cost follows from the first purchase.

#strong[Assignment is not early harm.] Record the blast injuries when the Guardian detonates. Do not impose those compromise statuses before a finishing procedure or use them to lower its Difficulty. Their status application occurs at compromise settlement, after the §6.12 applications below.

#strong[Additional injuries and credit.] These explicit Special assignments are due even if the winner otherwise owes no injury or its ordinary compromise grade is None. They do not increase the ordinary grade or require unrelated injuries. Settle the assignments alongside any ordinary compromise costs under Core Rules §10.13: credit each eligible existing injury at most once across the complete settlement, never once for Fail-safe and again for another injury cost. Apply eligible Resistance and reduction to imposed injuries normally. Agreed payments remain protected. Resistance removing an injury creates no replacement cost and does not cancel a separate consequence.

=== 6.12 Deferred Special Injuries
Shock Field, Venom / Infection and any setting Special that explicitly refers to it use this procedure. Fail-safe instead uses §6.11; no other Special is brought into this procedure merely by similar wording.

#strong[Record each application.] Each qualifying paid activation records one incoming application against the affected target: Special, target, status, tier, trigger order and used-named-Special allowance. Shock Field records jolted-2 when a PC loses a versus roll to the Guardian in melee, not only on Attack. Venom / Infection records poisoned-2 after a successful Attack; it does not require a versus win if the Attack resolves independently. Each Special retains its listed target restrictions. A tie or trumped no-roll action does not qualify. Before payment, check a conflict-wide used-named-Special record. Each named Special may record only one application per target per conflict, across all sources. Mark use on recording, not infliction. Ineligible repeats spend no Woe for that application; other action effects resolve normally. Different named Specials have separate allowances. Reduction to 0, source removal, phase changes, reserves, record resolution or conflict-type changes do not reset use. Renaming or reskinning grants no new allowance; variants share the original unless expressly stated otherwise. This creates no new outside-conflict Shock Field procedure. Setting Specials retain their listed outside-conflict effects and immediate benefits; deferral applies only to the recorded status application.

#strong[Pending is not inflicted.] A record is not an active status. It imposes no penalty, does not stack or cause tier-6 consequences, cannot be treated or healed yet, and changes neither Disposition nor participation when recorded.

#strong[Every outcome.] Recorded applications remain due after victory, defeat, mutual defeat or accepted concession. Finalize the outcome after any Last Stand extension, resolve eligible Fail-safe activation and then any permitted finishing procedure before applying these records. Concession terms must acknowledge pending applications; they cannot waive them or convert them into unresistable agreed payments. These remain imposed Special effects.

#strong[Resolve individually.] Before ordinary compromise's existing-injury credit or Fail-safe injury settlement, resolve records in trigger order. Apply eligible Resistance and harm reduction separately to each incoming application, then stack what remains normally. Do not combine records into a larger incoming status before Resistance. Resolve resulting tier-6, Scar, Dying or explicit creature-specific consequences normally. An application reduced to tier 0 creates no status or replacement cost.

#strong[No payment by an existing injury.] Compromise credit cannot discharge a deferred application. Normal stacking with an existing matching status still applies. After all applications resolve, an injury actually remaining may satisfy one eligible ordinary compromise injury cost under Core Rules §10.13. Pending records alone supply no credit. Across Fail-safe and ordinary costs, each injury is credited only once (§6.11).

#strong[Binding outcome.] These applications, Resistance costs and resulting status consequences do not restore Disposition, reopen the settled outcome or grant an action or volley. Clear each record after resolution. Then settle Fail-safe assignments and ordinary compromise where applicable; apply any agreed concession costs under their protected-payment rules. Recover each layer only through its own procedure.

=== 6.13 Interpose (Bulwark)
// PLAYTEST: Status interception and Hold the Line share one use per exchange.
Once per exchange in a conflict, choose status interception below or Hold the Line. When an ally would receive an imposed status that you can physically or otherwise fictionally intercept, you may take that status in their place. Outside conflicts, you can intercept a fitting status with no frequency limit.

Declare Interpose before the original target rolls Resistance or applies any harm reduction.

- Redirect the entire incoming status to yourself. The original target receives none of that status.
- Resolve your own normal Resistance or NPC harm reduction against it, then stack what remains normally. Do not first apply the original target's Resistance, armour or other reduction.
- Interpose redirects; it doesn't reduce the tier. Ordinary NPCs still get only one reduction per status (Core Rules §10.14).
- It can't redirect shared Disposition loss or any protected payment (Core Rules §10.7).
- You must be able to intercept the source of harm in the established fiction. You cannot protect an ally from an area effect that already affects both of you.

#emph[Example:] a guardian with Interpose can step into a shock-baton strike that would inflict #emph[jolted-3] on an ally. The guardian receives #emph[jolted-3] and uses its own eligible reduction. It cannot intercept ordinary Disposition loss or shield that ally from a blast that already catches them both.

#strong[Hold the Line.] While able to participate and fictionally able to shield an ally, reduce combined ordinary Disposition loss from one successful opposing Attack by 1, minimum 0. Declare after calculating loss but before injury trade or loss application. It may trigger outside the assigned turn and grants no action or rotation credit. Apply once, including ordinary area-loss bonuses; multiple Bulwarks cannot apply it to the same Attack. An eligible injury trade may cancel remaining ordinary loss normally. Exclude Feint, Maneuver, separately listed Special damage, statuses and protected payments. It cannot solely protect the Bulwark when no ally is being shielded. No outside-conflict effect.

=== 6.14 Guardian Self-Repair
Once per guardian per exchange, after the guardian succeeds on its assigned scripted action, including Success at a Cost, it may spend 1 Woe to choose one:
- Restore up to 2 of its side's shared Disposition, up to its original adjusted starting Disposition.
- Remove up to 2 tiers from one existing physical status on that guardian that its repair systems can address.

Self-Repair supplements the successful action. It requires no additional action or Power. The action qualifies even when all its Power funds permitted supplementary Effects.

Resolve Self-Repair at the end of the triggering volley, after both independent actions and their immediate consequences, but before Bolt departures, final defeat, mutual-defeat and defeat-triggered Special checks (§6.16). The guardian must still be able to participate and pay the full 1 Woe. Disposition recovery requires the side to remain above 0 at that point. Status repair does not restore Disposition or cancel pending defeat.

// PLAYTEST: Variant C is the sole lead rule.
Disposition recovery from 0 is not allowed in this window. Use the post-repair total to determine the outcome. It cannot reopen a finalized outcome, reverse setup defeat or an accepted concession, or override an explicit recovery prohibition such as Last Stand's pending-defeat restriction.

Each guardian tracks its own use. Failed, tied, trumped or unperformed actions don't qualify. An unused opportunity expires at the end of the volley; an extra volley within the same exchange doesn't refresh it.

Choose Disposition or status repair, not both. Neither repairs the other layer, refills pools, erases Scars, returns a Taken Out participant or affects a protected payment (Core Rules §10.7). At or above the cap, Disposition repair restores nothing but doesn't reduce any excess.

=== 6.15 Guardian Protocol
A successful Protocol Discover reveals only the actions assigned to the targeted guardian in the next exchange, including their positions in that exchange. Record those assignments as committed when the information is supplied; other participants' assignments remain unrevealed.

This guarantees disclosure of that next exchange, not automatic confirmation of all future exchanges. Characters retain what they have learned and may use observations and an understood operating pattern to predict later actions without paying merely to remember them.

The disclosure must be true when given; the GM can't freely rewrite it. The GM may still change a disclosed action with a normal paid script change (Core Rules §10.5), which doesn't notify the hunters. Tells, observations and information effects still apply.

Protocol grants no extra action, free script change, reassignment or rotation bypass. If the guardian later can't act, its assignment fails normally with no free replacement.

=== 6.16 Shared Special Timing
// PLAYTEST: Close declarations before reactions; Self-Repair before Bolt; phases before arrivals.
After a successful action, determine Power, allocate it, declare supplementary Specials and pay their costs. Check existing effects and effects already declared for this action. Close purchases and supplementary declarations, resolve expressly permitted reactions including Scan, then resolve uncancelled effects. Reactions do not reopen declarations. Cancelled purchases remain spent; no reallocation, substitution or late supplementary activation unless expressly permitted. This grants no additional action, reaction or activation permission. Self-Repair retains its expressly listed volley-end activation and payment window (§6.14).

Complete both independent actions, their immediate consequences and permitted reactions. Then:
+ Resolve eligible Self-Repair. Disposition recovery requires the side to remain above 0; status repair cannot cancel pending defeat.
+ Resolve declared Bolt departures, including its same-volley Lockdown exception.
+ Determine removal, defeat and mutual defeat; check eligible Last Stand before final settlement. If the conflict ends, perform no further phase checks or arrivals.
+ If the conflict continues and an ordinary phase check is permitted, check phases before reinforcement Grit. Preserve pending-defeat restrictions.
+ At an eligible exchange end, process committed arrivals under their listed procedures and explicit recovery prohibitions, including Last Stand.
+ Update participation and continuous rotation, then proceed to the next permitted declaration and scripting window.

Arrival creates no additional phase check and does not reverse a phase activated before it. It changes no original start, recovery cap, compromise reference or fixed phase threshold. Newly activated phase benefits still begin next volley. This sequence creates no extra action, exchange boundary, arrival check, phase check or activation opportunity.

=== 6.17 Dirty Trick
// PLAYTEST: Once per bearer per exchange; successful assigned action; later-volley Impede.
After succeeding on its assigned scripted action, including Success at a Cost, the bearer may spend 1 Woe to Impede the opposing side's next scripted action in a later volley, including across an exchange boundary. Declare and pay during the supplementary declaration step (§6.16).

Never affect the opposing action in the current volley, even if its roll has not been made. Impede is −3 on the affected action roll, not a status or Resistance penalty. A no-roll action consumes it unused. Pending Impedes do not stack, increase the penalty or extend duration. Failed, tied, trumped and unperformed actions do not qualify. No additional action or Power, extra turn or reassignment.

=== 6.18 Covering Move
// PLAYTEST: Replaces Hostage; once per bearer per exchange; one pending Gain Position per side.
After succeeding on its assigned Maneuver, including Success at a Cost, spend 1 Woe to grant Gain Position to the side's next scripted action in a later volley, including across an exchange boundary. Never affect the current volley. Its bonus die counts toward the normal cap; a no-roll action consumes it unused.

Before activation check both pending effects and effects already declared for this Maneuver. Do not activate or spend Woe if Gain Position is pending or the Maneuver has purchased or otherwise declared a grant of it. Declare and pay during §6.16's supplementary declaration step. Later cancellation does not reopen this window. Additional grants never stack, refresh or extend pending Gain Position. No additional action or Power, extra turn or reassignment. None of Hostage's former Truth or Attack-penalty effects remain.

=== 6.19 Scan
// PLAYTEST: Both options share one use per bearer per exchange.
An able Guardian with functioning sensors may spend 1 Woe for one option:
- #strong[Counter-Maneuver.] After an opposing Stealth-based Maneuver succeeds and its purchases and supplementary declarations close, but before effects resolve, cancel one Impede or Gain Position purchased by it. The approach must be detectable within established sensor coverage. Identify the purchase before paying. Cancel only that effect, not success, Power or other effects; its purchase remains spent. No reallocation or late supplementary declarations. Without either purchase this option cannot activate. Special-granted effects are ineligible merely because they accompanied the Maneuver.
- #strong[Reveal.] After its own successful assigned Maneuver, including Success at a Cost, reveal one hidden opponent's current location within established sensor coverage. Declare during §6.16. This removes no cover or concealment automatically, establishes no line of fire, grants no Attack and does not prevent hiding again.

Sensors do not defeat barriers or countermeasures without recorded capability. Pay fully while able to participate. No additional action or Power, extra turn, reassignment, protected-payment cancellation or reopening resolved effects.

=== 6.20 Lockdown
// PLAYTEST: Successful assigned Maneuver; once per Guardian per scene; rank-1 Truth.
After its successful assigned Maneuver, including Success at a Cost, an able Guardian may spend 2 Woe to create rank-1 scene Truth Sealed Doors. Declare during §6.16. It must control functioning barriers already established in the scene. Name the connected set, passages closed and release/override conditions. Create no barriers and gain no control of unrelated systems.

Apply physical restrictions and ordinary Truth difficulty effects only where materially relevant; no blanket opposing-action penalty or indestructibility. Affect allies, enemies and bystanders according to position. No automatic capture, harm, Disposition loss, Taking Out or victory.

Barriers closed by Lockdown do not prevent completion of the opposing action in the same volley, including Bolt through a route usable when Bolt activated. They constrain subsequent actions and reinforcement arrivals normally.

The Truth lasts until scene end or barriers are opened, breached or overridden. Opening one passage removes its restriction only; end the Truth when none remains sealed. Disabling the Guardian does not automatically unlock barriers. Power loss releases only mechanisms established to work that way. No additional action or Power, extra turn, reassignment, protected-payment cancellation or reopening settled outcomes.

=== 6.21 Bolt
// PLAYTEST: Successful assigned Maneuver; volley-end departure; no bypass of contested escape.
After its successful assigned Maneuver, including Success at a Cost, spend 2 Woe to withdraw through an established usable route. Identify the route and pay during §6.16. Resolve departure at volley end after eligible Self-Repair but before defeat, provided the bearer remains able to participate and physically capable of using the route.

An opposing Lockdown in the same volley does not by itself invalidate the declared route or prevent departure. All other requirements remain. Bolt otherwise cannot cancel, interrupt or protect against the opposing action.

Remove the bearer from participation without subtracting Grit or Disposition. Update rotation normally; no replacement actor, reassignment or extra action. Continue if allies can pursue the objective; otherwise resolve defeat. Departure does not cancel defeat at 0.

Bolt cannot activate or spend Woe to bypass an unresolved objective specifically contesting the bearer's escape, pursuit or capture; use outcome or accepted concession. No teleportation, passage through effective restraint or blocked routes, ally movement, automatic safety from later pursuit, protected-payment cancellation or reopening settlement. No separate use limit; departure grants no permission to return.

=== 6.22 Howl
// PLAYTEST: One shared named Hound Pack; action-free; commitment survives caller loss and blocked routes.
While able to participate, spend 2 Woe during the action-free call window (§6.5) and give an audible howl to call the side's single reserve Hound Pack. It must be within plausible calling distance, hear the call and have a usable route. Check before paying; mark committed immediately. This creates or summons no beasts. Committed or previously arrived copies cannot be called again by any caller.

Arrive at current exchange end if the conflict continues and a usable route exists. If blocked after payment, remain committed and check at each later exchange end; arrive when the conflict continues and a route opens, without further payment. Caller removal does not cancel or delay otherwise eligible arrival. No arrival into an ended conflict. Apply §§6.5 and 6.16, including fixed references, rotation and recovery prohibitions. The pack is one participant, not one per Body. No action or Power; no separate use limit beyond finite shared availability.

=== 6.23 Calls the Works
// PLAYTEST: One shared named Gate Warden; action-free; accepted command survives later caller/link loss.
While able to participate, spend 2 Woe during §6.5's call window to transmit a command to the side's single reserve Gate Warden. A functioning link must reach it; it must be able to respond and have a usable route. Check before paying; mark committed immediately. No creation or unlisted substitution; committed or previously arrived copies cannot be called again.

Arrive at current exchange end if the conflict continues and a usable route exists. A route blocked after payment delays arrival to a later eligible exchange end without further cost; the copy remains committed and unavailable. After command receipt and commitment, caller removal or link loss does not cancel or delay otherwise eligible arrival. No arrival into an ended conflict. Apply §§6.5 and 6.16.

The reserve uses Variant C Self-Repair (§6.14), does not gain Calls the Works and cannot use this entry to call further Guardians. No additional action or Power; no separate use limit beyond reserve availability.

=== 6.24 Caller-Specific Reserve Packages
// PLAYTEST: Named side-wide copies, not fictional bodies or duplicated caller allowances.
#strong[Bounty Veteran — Call for Help.] While able to participate, spend 2 Woe per activation during §6.5's call window to commit one of the side's two Hired Guns. No action or Power. Multiple activations in one exchange are allowed with full payment and a separate available copy each; both cost 4 Woe. Arrive at current exchange end if the conflict continues, even if the Veteran has since become unable to participate. Apply §§6.5 and 6.16. Add no unlisted communication or route requirement to this package.

#strong[Iron Marshal — Call for Help.] While able to participate and the Special is unlocked and usable, spend 2 Woe per activation during §6.5's call window to issue an audible order or transmit a command to one of the side's two House Guard Bands. Each is a Raider Band reskin with unchanged statistics and abilities. It must receive the order, be able to respond and have a usable route. Check before payment; commit immediately. Multiple activations in one exchange require separate available copies and full payment; both cost 4 Woe. No action or Power.

Arrive at current exchange end if the conflict continues and a usable route exists. Route blockage after payment retains commitment and delays arrival to a later eligible exchange end without further cost. Once the order is received, later caller or link loss does not cancel or delay otherwise eligible arrival. No arrival into an ended conflict. Apply §§6.5 and 6.16. Each band is one participant, not one per Body.

Command applies only while the Marshal remains able to participate; removal ends Command, not accepted commitments or the bands' participation. Phase availability grants no free call, extra reserve or duplicate Command. All callers share recorded copies; no call replenishes them. Retain the Raider Band's tags, weakness, Tell and Wants unless separately revised cosmetically; the reskin adds no mechanical benefits.

#colbreak()
== 7. Templates
Eight generic cards, including the named Hired Gun reserve card. Reskin freely. Ratings follow the Rank table.

#statblock("RAIDER BAND", "Human · Minion group (4 Bodies) · Shooter", "3")[
Grit 3 · Guard +0 · Bodies 4 · Armour 0 \
Attack +4 · Defend +2 · Feint +0 · Maneuver +2 · Other +2 \
Harm: wounded (carbines) \
Power: plenty of bullets, know the ground · Weakness: break and run \
Kind: Morale. Role: Dead Aim. \
Group trait: Volley (2): area Attack. \
Tell: hats come off as rifles shoulder. \
Wants: the strongbox, no heroics.
]

#statblock("HOUND PACK", "Beast · Minion group (5 Bodies) · Skirmisher", "3")[
Grit 3 · Guard +0 · Bodies 5 · Armour 0 \
Attack +2 · Defend +2 · Feint — · Maneuver +4 · Other +2 (Notice +4) \
Harm: wounded (bites) \
Power: noses for blood, run as a pack · Weakness: fears fire \
Kind: no Feint, Morale (scatter if the handler falls). Role: Hit and Run. \
Group trait: Pack Tactics (0). \
Tell: the circling tightens. \
Wants: drive the prey toward the den.
]

#statblock("KNIFE IN THE DARK", "Human · Minor · Trickster", "3")[
Grit 3 · Guard +0 · Shrugs 0 · Armour 0 \
Attack +3 · Defend +1 · Feint +5 · Maneuver +3 · Other +3 (Stealth +5) \
Harm: wounded (paired knives) \
Power: one with the shadows, a knife for every hand · Weakness: the oath before my life \
Kind: Morale. Role: Ambush. \
Specials: Dirty Trick (1). \
Tell: the nearest lamp gutters. \
Wants: no witnesses.
]

#statblock("BOUNTY VETERAN", "Human · Established · Brute", "5")[
Grit 5 · Guard +1 · Shrugs 1 · Armour 1 (oilskin and mail) \
Attack +6 · Defend +4 · Feint +2 · Maneuver +4 · Other +4 \
Harm: wounded (silver-and-wood shotgun), +1 tier from Heavy Hitter outside conflicts \
Power: silver-and-wood shot, twenty years of hunts, a veteran hunter's reputation · Weakness: greedy for the bounty \
Kind: Morale; can be bargained with. Role: Heavy Hitter. \
Specials: Last Stand (2), Call for Help (2 per Hired Gun; two named reserve copies; §6.24). \
Tell: he thumbs back both hammers. \
Wants: the bounty, and the credit.
]

#statblock("HIRED GUN", "Human · Minor · Shooter", "3")[
Grit 3 · Guard +0 · Shrugs 0 · Armour 0 \
Attack +5 · Defend +3 · Feint +1 · Maneuver +3 · Other +3 \
Harm: wounded (carbine) \
Power: steady aim, reliable carbine · Weakness: not paid to die \
Kind: Morale; can be bargained with. Role: Dead Aim. \
Specials: Volley (2): before rolling its assigned Attack, make it an area Attack under the common area rule. \
Tell: they plant their feet and bring the carbine to their shoulder. \
Wants: collect their pay and leave alive.
]
// PLAYTEST: Veteran reserve has two identical copies; track uses separately.
// Dead Aim grants one free die on each copy's first Attack each scene, within the cap.
// Volley grants no extra action or automatic status and no automatic ally exclusion.
// Resolve ordinary area loss once, +1 per additional opposing participant affected;
// apply common group counting and injury-trade limits.

#statblock("HEDGE ADEPT", "Human · Established · Controller", "5")[
Grit 5 · Guard +1 · Shrugs 1 · Armour 0 \
Attack +2 · Defend +4 · Feint +4 · Maneuver +6 · Other +4 (Lore +6) \
Harm: wounded or shaken (rite) \
Power: binding rites, a ledger of debts, hands that never shake · Weakness: proud beyond reason \
Kind: Morale. Role: Shape the Ground. \
Specials: Dirty Trick (1), Covering Move (1). \
Tell: he straightens his cuffs. \
Wants: finish the rite before dawn.
]

#statblock("GATE WARDEN", "Guardian · Established · Bulwark", "5")[
Grit 5 · Guard +1 · Shrugs 1 · Armour 1 \
Attack +4 · Defend +6 · Feint +2 · Maneuver +4 · Other +4 (Science +6) \
Harm: wounded (shock-baton) \
Power: old-world steel, knows every corridor, obeys the bloodline · Weakness: answers to the old codes \
Kind: Unfeeling, Protocol, Machine. Role: Interpose. \
Specials: Self-Repair (1), Lockdown (2). \
Tell: "Please remain where you are." \
Wants: guests kept safe, intruders out.
]
  
#statblock("THE IRON MARSHAL", "Human · Great · Leader · Boss", "8")[
Grit 8 · Guard +2 · Shrugs 2 · Armour 1 (house mail) \
Attack +5 · Defend +8 · Feint +3 · Maneuver +5 · Other +5 \
Harm: wounded (old-world sabre) \
Power: remembers the founding, a hundred sworn swords, the house is armed, never loses a flank · Weakness: proud beyond reason, believes the old stories \
Kind: Morale. Role: Command. \
Specials: Call for Help (2 per House Guard Band; two named reserve copies; §6.24), Covering Move (1), Last Stand (2). \
Tell: she sets down her glass. \
Wants: the intruders alive, kneeling and useful.
]
]
  
#pagebreak()

#include "chapter-adversaries-part-3.typ"

