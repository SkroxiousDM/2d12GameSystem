#import "common.typ": *

#let adversaries-part-two(statblock) = [
== 6. Running Adversaries
#columns(2, gutter: 6mm)[
=== 6.1 Setup
+ State intent, stakes and exits for both sides (Core §10.2). State whether death is possible before any roll.
+ Before calculating starting Disposition, record any eligible phased-boss designation and fixed Start/Half Special assignments (§7.1). Designate at most one phased boss per side; designation adds no Grit or Woe.
+ Add up Grit across the side. Apply Ambush (+2 when eligible) and other flat setup modifiers at full value, then a minimum of 1, then opposing Superiority. Determine both sides' adjusted totals before resolving setup. If only one is 0, its opponent wins at no cost within stakes; if both are 0, resolve mutual defeat. Neither outcome activates phases or proceeds to scripting. Record the original adjusted starting Disposition for recovery limits and compromise; do not divide Grit or add vampire rank bonuses again.
+ Set Woe: 2 per PC plus Difficulty extras plus introduction Woe, counting introduction Woe only once in the campaign and retaining any already established session balance.
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
- #strong[Feint.] As Attack for loss. It resolves independently against Defend, is trumped by Attack, opposes Feint and resolves independently against Maneuver.
- #strong[Maneuver.] Power buys Impede (1), Gain Position (1), Disarm (3), Create a Truth (2 per rank), permitted supplementary Effects or an eligible scenery action. Buy Impede, Gain Position and Disarm at most once each per Maneuver. Impede and Gain Position affect the relevant side's next scripted action, not Resistance; they expire unused if it makes no roll. Pending Impedes do not stack, and Gain Position counts toward the bonus-dice cap.
- #strong[Independent rolls] against an adversary use Standard 15 plus its Guard, adjusted by applicable Truths and explicit modifiers.
- #strong[Versus rolls:] the higher total wins with 1 Power, +1 per full 3 points over the opponent. Double 12s do not override a higher total or break a tie. Winning ordinary doubles add +1 Power; winning double 12s add +2 instead. Losing or tied doubles grant no Power or normal action effect. Double 1s cause their complication without automatically losing; successful double 1s also gain the ordinary critical Power. Apply the same procedure to ability-created doubles. An exact tie produces no normal action effect or Power. Losing by 1--3 does not qualify for Success at a Cost. Versus losses, ties and trumped actions generate no ordinary-failure Woe (Core Rules §2.6, §10.5--10.7).
- #strong[Supplementary spending.] Use Core Rules §10.6 for each action's permissions and limits. No primary purchase is mandatory; all Power may fund permitted supplementary Effects, without double spending. Winning versus prevents the opposing normal effect even if no Power funds loss or recovery; independent opposing actions still resolve. Exceptions grant only their stated scope.
- #strong[Automatic success.] Replace only an otherwise permitted action's roll, not its interaction or assigned turn. Use listed Power; in versus it wins unless both automatically succeed, then tie unless expressly overridden. No extra action, rescue of a trumped action or dice-based critical/complication follows.
- #strong[Resolution order.] Trumped actions make no roll and produce no effect. Both independent actions finish before checking victory, even if one defeats a side or takes an actor out. Check eligible Last Stand before final settlement (§6.10). For a phased boss, check thresholds only after removal and victory are determined and the conflict continues without pending defeat (§7.1). Use §§6.11--6.12 for Special aftermath timing.

=== 6.4 Woe Economy
Gain Woe from player-bought dice, eligible independent failures (+1), Escalation (+1), dangerous scene Truths (+1 per scene) and bought-off complications (+2). Versus losses, ties and trumped actions generate no ordinary-failure Woe, symmetrically for player and GM actors. Separately triggered complications, explicit costs and scenery Dangers retain their own rules (Core Rules §10.7).

#figure(table(columns: (68%, 32%),
  table.header([Spend], [Cost]),
  [Bonus die on an adversary roll], [1 per die, max +2 including free dice],
  [Fire a Special], [1--3],
  [Reinforcements], [1 per minion, 3 significant],
  [Change an unrevealed scripted action before reveal], [3 (2 with an eligible Leader)],
  [Tick a danger clock], [1 per segment],
  [Extra Shrug], [1],
  [Trigger a listed scenery Danger], [1],
))
Spend on the Best action early. Unspent Woe at session end is wasted tension. An ordinary failed conflict action does not also authorise an unrelated GM move or extra harm. Independent Success at a Cost follows Core Rules §10.7; ordinary costs add no status or extra Disposition loss without explicit permission. Complications respect stakes and independent-action timing.

=== 6.5 Reinforcements
Reinforcements add their listed Grit to current shared Disposition only, even above the original adjusted starting value. They do not raise starting Disposition, the normal recovery cap or the compromise reference (Core Rules §10.9, §10.13). Defend and other recovery restore only up to the original start unless explicitly overridden. At or above the cap, restore nothing and do not remove an existing excess; other permitted Defend purchases remain available. Removal subtracts no Grit. Joining participants enter continuous rotation under Core Rules §10.5; arrival grants no extra scripted action, free actor reassignment or setup recalculation. Only a genuinely new conflict establishes a new start. Boss phase references and thresholds remain fixed (§7.1). During a Last Stand volley, reinforcement arrival remains legal under its own timing, but its Grit cannot raise the pending-defeat side above 0 (§6.10).

=== 6.6 Minion Bodies
Minion groups have Bodies (3--6) instead of Shrugs. Each successful Attack outside a conflict drops 1 Body. Extra Power spent on Extra Feat drops another. At half Bodies or fewer, ratings drop by 1. At zero, the group is gone. Morale usually ends it sooner. Ordinary conflict Disposition loss removes no Bodies and does not deplete an individual Grit share. A group represented by one entry is one participant for rotation and area-effect loss bonuses.

=== 6.7 When Adversaries Win Or Lose
- #strong[Defeat.] A side loses at 0 Disposition or when nobody can continue pursuing its objective. Complete independent actions before checking victory. An eligible Last Stand may postpone defeat at 0 for one final volley (§6.10); finish that extension before finishing procedures or settlement. Defeat is not automatic death or injury; outcomes stay within intent and stakes. Removal subtracts no Disposition. If both sides are defeated in the same volley, or both start at 0 after Superiority, use mutual defeat, not a winner's compromise (Core Rules §10.3, §10.12). Simultaneous setup defeat scripts no exchanges and does not itself inflict injury, drain pools, Take Out an individual or satisfy a finishing requirement.
- #strong[No injury trade.] Ordinary adversaries and minion groups cannot use it (Core §10.14). A named rival built as a full PC can, subject to §10.11: once per character per conflict, at most one participant per Attack or Feint.
- #strong[Compromise.] Resolve deferred Special applications before ordinary existing-injury credit; include any eligible Fail-safe assignments under §6.11. Neither procedure changes the ordinary compromise grade. Use the winner's original adjusted starting Disposition recorded at setup, unchanged by reinforcements. Remaining Disposition at or above that start means none lost; use the final remaining total, not cumulative loss or a separate reinforcement ledger. Use the starting Disposition lost: none = None; more than 0 but less than half = Minor; at least half but less than three-quarters = Significant; three-quarters or more = Major, without rounding. Negotiate one outcome-first package. Injury tiers 2/3/4 guide its severity, not automatic additions. Credit eligible existing injuries once. NPCs may use eligible reduction against imposed compromise statuses, not agreed payments; Resistance does not revoke the loser's concession or create a replacement injury cost (Core §10.13).
- #strong[Concession.] Offer one before the next roll (Core §10.12); one third of starting shared Disposition is a tactical prompt, not a restriction. Propose concrete gains and retained interests suited to the opponent: humans may surrender, beasts may be distracted or allowed to flee, and a Boss may negotiate retreat. Guardians do not normally offer concessions. If accepted, apply the agreed terms without another roll or an additional compromise unless included. Recorded Feed and Shock Field applications remain imposed, Resistable Special effects under §6.12; concession terms must acknowledge them and cannot waive them or turn them into protected payments. Do not add an unstated retreat benefit or danger-clock tick.

=== 6.8 Outside Conflicts
- #strong[Passive opposition.] Difficulty = 12 + the adversary's relevant rating. A Minor's Defend (Fair +3) gives 15; an Established Steward's Defend (+6) gives 18. This outside-conflict procedure does not replace Standard 15 + Guard for independent conflict tests.
- #strong[Active opposition.] Roll versus: 2d12 + rating.
- #strong[Harm to adversaries.] Attack Power inflicts statuses as normal. Apply at most one eligible NPC reduction per application. Tier 6 applies the status's established scope and breaking-point procedure; explicit creature replacements apply only where stated. Vampires stop at tier 5 without a killing method. Do not introduce Disposition loss outside conflicts.

=== 6.9 Other Conflict Types
The same card runs any type in Core §10.4. Swap Attack, Defend, Feint and Maneuver for that type's skills and keep the ratings, Grit and Woe costs. Rename Specials to fit: Hostage becomes a leverage threat in an Argument, Lockdown a sealed network in a Hack. A reskin still needs a plausible approach and cannot widen intent, stakes or effect permissions.
=== 6.10 Last Stand
Last Stand is a defeat-triggered Special costing 2 Woe. It gives both sides one final volley, not an individual action outside rotation.

#strong[Activation.] Complete the deciding volley, including both independent actions, then check removal, defeat and mutual defeat. If a side is defeated at 0 shared Disposition, at least one participant remains able to pursue its objective, and a participating bearer has Last Stand unlocked and usable, the GM may pay 2 Woe before finalizing defeat. A Taken Out or otherwise unable bearer cannot activate it. Exclude setup defeat, mutual defeat and defeat solely because nobody can continue.

For a designated phased boss, Last Stand must already have unlocked at Half and become usable from a subsequent volley (§7.1). Reaching 0 does not unlock it retroactively. Non-phased bearers follow their own availability rules.

#strong[One final volley.] Postpone defeat, finishing procedures and compromise until exactly one additional volley resolves. Both sides follow normal action interactions, costs, helping, participation and continuous rotation. Use each side's next unrevealed scripted action and its assigned actor. If the exchange has ended, each side secretly commits one action and an eligible actor, then reveals normally. This is not a new exchange: do not refresh exchange-limited abilities or tick clocks merely for scripting the added action. Changing an unrevealed action retains the normal cost and assigned actor; Last Stand grants no free change or reassignment. An unperformable action has no free replacement.

#strong[Defeat stays pending.] The activating side remains at 0 shared Disposition. Defend, reinforcement Grit and other Disposition recovery cannot raise it during this volley or cancel its pending defeat. This restriction does not prevent otherwise legal supplementary purchases, status healing or other explicit effects. Reinforcements may arrive under their listed timing and participate only when normal scripting and rotation permit; arrival grants no immediate action. Last Stand neither returns a removed participant nor allows action through incapacity.

No new phase activates while defeat is pending. Previously activated benefits apply only while the boss remains eligible; there is no phase refresh or bonus action.

#strong[Final outcome.] Complete all independently resolving actions. The activating side then loses; if its opponent is also defeated, resolve mutual defeat. Otherwise determine the winner within the stakes from the final state. A side may use Last Stand only once per conflict; multiple bearers do not stack or chain extensions. Resolve eligible Fail-safe next, then permitted finishing procedures, deferred applications and ordinary compromise (§§6.11--6.12). Last Stand grants no immunity to those outcomes.

=== 6.11 Fail-safe
Fail-safe is a separate defeat-triggered Special, not an action or a deferred application under §6.12. It costs 3 Woe and must already be unlocked and usable. A phased boss's defeat-triggered unlock follows §7.1; final defeat cannot supply a missed unlock.

#strong[Trigger and participation.] After the deciding volley and any Last Stand extension, determine the final outcome. When its side loses at 0 shared Disposition, a Guardian still able to participate may pay 3 Woe and detonate before permitted finishing procedures and compromise. Being Taken Out or otherwise unable prevents activation; shared Disposition reaching 0 does not by itself remove an individual. Exclude setup defeat, accepted concessions, mutual defeat and defeat solely because nobody can continue. Do not reopen an already settled outcome.

#strong[Detonation.] Establish reach from the Guardian's position and the fiction. Assign one burned-3 additional compromise injury to each PC within reach; do not expand the target set to allies, bystanders or other NPCs. The detonation destroys the Guardian. It grants no action, volley or shared Disposition loss and cannot change the losing side into a winner. Last Stand and Fail-safe are separate purchases: pay 2 Woe and then 3 Woe at their respective triggers; no reserved or waived cost follows from the first purchase.

#strong[Assignment is not early harm.] Record the blast injuries when the Guardian detonates. Do not impose those compromise statuses before a finishing procedure or use them to lower its Difficulty. Their status application occurs at compromise settlement, after the §6.12 applications below.

#strong[Additional injuries and credit.] These explicit Special assignments are due even if the winner otherwise owes no injury or its ordinary compromise grade is None. They do not increase the ordinary grade or require unrelated injuries. Settle the assignments alongside any ordinary compromise costs under Core Rules §10.13: credit each eligible existing injury at most once across the complete settlement, never once for Fail-safe and again for another injury cost. Apply eligible Resistance and reduction to imposed injuries normally. Agreed payments remain protected. Resistance removing an injury creates no replacement cost and does not cancel a separate consequence.

=== 6.12 Deferred Special Injuries
Feed and Shock Field use this procedure. Fail-safe instead uses §6.11; no other Special is brought into this procedure merely by similar wording.

#strong[Record each application.] Each qualifying paid activation records one incoming application against the affected PC: Special, target, status, tier and trigger order. Feed records Bled-2 after its successful versus Attack in melee; Shock Field records jolted-2 when a PC loses a versus roll to the Guardian in melee, not only on Attack. A tie or trumped no-roll action does not qualify. Each further application needs another qualifying trigger and another payment; there is no once-per-PC cap. This creates no new outside-conflict Shock Field procedure. Feed's outside-conflict Bled-2 and its immediate recovery benefit remain as listed.

#strong[Pending is not inflicted.] A record is not an active status. It imposes no penalty, does not stack or cause tier-6 consequences, cannot be treated or healed yet, and changes neither Disposition nor participation when recorded.

#strong[Every outcome.] Recorded applications remain due after victory, defeat, mutual defeat or accepted concession. Finalize the outcome after any Last Stand extension, resolve eligible Fail-safe activation and then any permitted finishing procedure before applying these records. Concession terms must acknowledge pending applications; they cannot waive them or convert them into unresistable agreed payments. These remain imposed Special effects.

#strong[Resolve individually.] Before ordinary compromise's existing-injury credit or Fail-safe injury settlement, resolve records in trigger order. Apply eligible Resistance and harm reduction separately to each incoming application, then stack what remains normally. Do not combine records into a larger incoming status before Resistance. Resolve resulting tier-6, Scar, Dying or explicit creature-specific consequences normally. An application reduced to tier 0 creates no status or replacement cost.

#strong[No payment by an existing injury.] Compromise credit cannot discharge a deferred application. Normal stacking with an existing matching status still applies. After all applications resolve, an injury actually remaining may satisfy one eligible ordinary compromise injury cost under Core Rules §10.13. Pending records alone supply no credit. Across Fail-safe and ordinary costs, each injury is credited only once (§6.11).

#strong[Binding outcome.] These applications, Resistance costs and resulting status consequences do not restore Disposition, reopen the settled outcome or grant an action or volley. Clear each record after resolution. Then settle Fail-safe assignments and ordinary compromise where applicable; apply any agreed concession costs under their protected-payment rules. Recover each layer only through its own procedure.

#colbreak()
== 7. Templates
Seven generic cards. Reskin freely. Ratings follow the Rank table.

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

#statblock("KNIFE IN THE DARK", "Human (retainer clan) · Minor · Trickster", "3")[
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
Harm: wounded (silver-and-wood shotgun), +1 tier from Heavy Hitter \
Power: silver-and-wood shot, twenty years of hunts, a name the Kept know · Weakness: greedy for the bounty \
Kind: Morale; can be bargained with. Role: Heavy Hitter. \
Specials: Last Stand (2), Call for Help (1 per minion: two hired guns). \
Tell: he thumbs back both hammers. \
Wants: the bounty, and the credit.
]

#statblock("HEDGE ADEPT", "Human · Established · Controller", "5")[
Grit 5 · Guard +1 · Shrugs 1 · Armour 0 \
Attack +2 · Defend +4 · Feint +4 · Maneuver +6 · Other +4 (Lore +6) \
Harm: wounded or shaken (rite) \
Power: binding rites, a ledger of debts, hands that never shake, sees in the dark · Weakness: proud beyond reason \
Kind: Morale. Role: Shape the Ground. \
Specials: Dirty Trick (1), Hostage (2). \
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
Kind: Morale (Fanatic in her presence). Role: Command. \
Specials: Call for Help (1 per minion / 3), Hostage (2), Last Stand (2). \
Tell: she sets down her glass. \
Wants: the intruders alive, kneeling and useful.
]
]
  
#pagebreak()

#import "chapter-adversaries-part-3.typ": adversaries-part-three
#adversaries-part-three()
]
