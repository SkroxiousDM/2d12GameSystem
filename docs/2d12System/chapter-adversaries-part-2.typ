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
- #strong[Resolution order.] Trumped actions make no roll and produce no effect. Both independent actions finish before checking victory, even if one defeats a side or takes an actor out. For a phased boss, check phase thresholds only after removal and victory are determined and the conflict continues (§7.1).

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
Reinforcements add their listed Grit to current shared Disposition only, even above the original adjusted starting value. They do not raise starting Disposition, the normal recovery cap or the compromise reference (Core Rules §10.9, §10.13). Defend and other recovery restore only up to the original start unless explicitly overridden. At or above the cap, restore nothing and do not remove an existing excess; other permitted Defend purchases remain available. Removal subtracts no Grit. Joining participants enter continuous rotation under Core Rules §10.5; arrival grants no extra scripted action, free actor reassignment or setup recalculation. Only a genuinely new conflict establishes a new start. Boss phase references and thresholds remain fixed (§7.1).

=== 6.6 Minion Bodies
Minion groups have Bodies (3--6) instead of Shrugs. Each successful Attack outside a conflict drops 1 Body. Extra Power spent on Extra Feat drops another. At half Bodies or fewer, ratings drop by 1. At zero, the group is gone. Morale usually ends it sooner. Ordinary conflict Disposition loss removes no Bodies and does not deplete an individual Grit share. A group represented by one entry is one participant for rotation and area-effect loss bonuses.

=== 6.7 When Adversaries Win Or Lose
- #strong[Defeat.] A side loses at 0 Disposition or when nobody can continue pursuing its objective. Complete independent actions before checking victory. Defeat is not automatic death or injury; outcomes stay within intent and stakes. Removal subtracts no Disposition. If both sides are defeated in the same volley, or both start at 0 after Superiority, use mutual defeat, not a winner's compromise (Core Rules §10.3, §10.12). Simultaneous setup defeat scripts no exchanges and does not itself inflict injury, drain pools, Take Out an individual or satisfy a finishing requirement.
- #strong[No injury trade.] Ordinary adversaries and minion groups cannot use it (Core §10.14). A named rival built as a full PC can, subject to §10.11: once per character per conflict, at most one participant per Attack or Feint.
- #strong[Compromise.] Use the winner's original adjusted starting Disposition recorded at setup, unchanged by reinforcements. Remaining Disposition at or above that start means none lost; use the final remaining total, not cumulative loss or a separate reinforcement ledger. Use the starting Disposition lost: none = None; more than 0 but less than half = Minor; at least half but less than three-quarters = Significant; three-quarters or more = Major, without rounding. Negotiate one outcome-first package. Injury tiers 2/3/4 guide its severity, not automatic additions. Credit eligible existing injuries once. NPCs may use eligible reduction against imposed compromise statuses, not agreed payments; Resistance does not revoke the loser's concession or create a replacement injury cost (Core §10.13).
- #strong[Concession.] Offer one before the next roll (Core §10.12); one third of starting shared Disposition is a tactical prompt, not a restriction. Propose concrete gains and retained interests suited to the opponent: humans may surrender, beasts may be distracted or allowed to flee, and a Boss may negotiate retreat. Guardians do not normally offer concessions. If accepted, apply the agreed terms without another roll or an additional compromise unless included. Do not add an unstated retreat benefit or danger-clock tick.

=== 6.8 Outside Conflicts
- #strong[Passive opposition.] Difficulty = 12 + the adversary's relevant rating. A Minor's Defend (Fair +3) gives 15; an Established Steward's Defend (+6) gives 18. This outside-conflict procedure does not replace Standard 15 + Guard for independent conflict tests.
- #strong[Active opposition.] Roll versus: 2d12 + rating.
- #strong[Harm to adversaries.] Attack Power inflicts statuses as normal. Apply at most one eligible NPC reduction per application. Tier 6 applies the status's established scope and breaking-point procedure; explicit creature replacements apply only where stated. Vampires stop at tier 5 without a killing method. Do not introduce Disposition loss outside conflicts.

=== 6.9 Other Conflict Types
The same card runs any type in Core §10.4. Swap Attack, Defend, Feint and Maneuver for that type's skills and keep the ratings, Grit and Woe costs. Rename Specials to fit: Hostage becomes a leverage threat in an Argument, Lockdown a sealed network in a Hack. A reskin still needs a plausible approach and cannot widen intent, stakes or effect permissions.
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

=== 7.1 Boss Phases
#strong[Approved procedure; balance unvalidated.] Boss Phases change a designated adversary's available options and ratings as its side loses ground. They use shared Disposition, never a personal Grit track. Phase activation costs no Woe; using a Special or calling reinforcements still requires its listed cost and procedure.

==== Eligibility and Fixed Designation
When preparing an adversary, the GM may mark a Great or Paramount adversary as a #strong[Phased Boss]. Rank and the Leader role do not grant phases automatically. Before calculating starting Disposition, designate at most one eligible phased boss per side and record the designation on its card or conflict record. A side may have none. Do not add, transfer or replace a designation after setup, including through reinforcement arrival or removal.

Minion groups, Minor and Established adversaries require an explicit eligibility exception. A full-PC rival requires an explicit phase-capable entry; fictional importance alone does not qualify it. Other adversaries retain their own ratings, Role traits and Specials but gain no phase benefit unless expressly included. Do not split a coordinated side merely to obtain more phase systems; separate sides need genuinely distinct objectives and independent participation.

Designation alone adds no Grit, starting Disposition, Threat, Woe, turn, script change, reinforcement or unlisted Special, and grants no immunity to defeat or finishing procedures. Encounter cost and phase bonuses still require playtesting.

==== Setup and Fixed Thresholds
If setup ends in overwhelming preparation or simultaneous setup defeat, activate no phases. Otherwise record the boss side's adjusted starting Disposition after all modifiers and Superiority as the #strong[phase reference]. Record Half as half that value rounded down, and Desperate as one third rounded down. There is no minimum threshold.

The reference and thresholds stay fixed for this conflict. Recovery, reinforcements, removal and lawful return do not recalculate them. Changing location, tactics or conflict type in the same unresolved struggle does not reset them.

A reference of 1 gives thresholds 0 and 0; a reference of 2 gives 1 and 0; a reference of 3 gives 1 and 1. A threshold at 0 normally cannot activate before defeat. If both thresholds are met at one eligible check, record Half first, then Desperate, with no intervening action window. Phase designation does not guarantee that every phase occurs.

==== Special Ownership, Availability and Revelation
Owned means listed on the card. Available means its phase and other prerequisites permit use. Revealed means the players have learned about it. A Tell, observation or information effect can reveal a locked Special without unlocking it.

The following restrictions apply to the designated phased boss, not automatically to every adversary on its side or to ordinary non-phased adversaries.

Ordinary activated Specials are #strong[phase-locked]. Record each one's Start or Half assignment before calculating starting Disposition; assignments stay fixed, regardless of setup results, scripts or changing circumstances.

#figure(table(columns: (40%, 30%, 30%),
  table.header([Ordinary Specials], [Start], [New at Half]),
  [1], [1], [0],
  [2], [1], [1],
  [3], [1], [2],
  [4], [2], [2],
))

The table counts ordinary activated Specials only. Passive and defeat-triggered Specials use the separate schedule below. All count toward the card's normal Special limit unless an existing rule expressly excludes them; phase eligibility adds no slots. All table-allocated ordinary Specials are unlocked after Half. Desperate grants no additional Special unlock.

- #strong[Start:] Start-assigned ordinary Specials are available when the conflict proceeds beyond setup. Passive Specials operate from Start under their own listed conditions.
- #strong[Half:] Half-assigned ordinary Specials unlock; defeat-triggered Specials unlock and are revealed. They become usable from the next volley, including a later volley in the same exchange. After volley 3, that means the next exchange's first volley.
- #strong[Missed defeat triggers:] a defeat-triggered Special cannot trigger before it is unlocked and usable, including on a defeat during the volley that would otherwise qualify for Half. Do not unlock after the conflict ends or claim a passed trigger retroactively.

Unlocking or revelation is not activation. Normal trigger, action requirement, declaration timing, Woe cost, targets, fictional permission and participation restrictions remain. The committed action must still permit use. There is no extra turn, free script change, actor reassignment or automatic permission to act while Taken Out.

Half unlocks an #strong[owned] reinforcement option only; it grants no new Special, automatic arrival, free cost or alternative arrival procedure. Apply §6.5 for Disposition accounting. Availability does not resolve an inherited Special's incomplete procedure: Last Stand, Fail-safe, Feed and Shock Field retain the explicit unresolved-wording warning in §4.

==== Phase Checks and Benefit Timing
Complete the volley's actions, including independent actions and any expressly permitted effects that must resolve before victory. Then determine removal, victory or mutual defeat. Only if the conflict continues and the designated boss remains able to participate, compare current shared Disposition with each unactivated threshold. Activate every eligible phase whose threshold is met.

Use the #strong[final total] at that check, not the lowest total reached during the volley. Crossing a threshold and recovering above it before the check grants no activation or pending entitlement. Once activated, a phase does not reverse or activate again through recovery or reinforcements.

Record activation at the check. Newly activated rating changes and other phase benefits apply from the #strong[next volley], never retroactively. They may modify an already committed action's later roll but do not change its category or assigned actor. If both phases activate together, their benefits begin together next volley.

#figure(table(columns: (22%, 78%),
  table.header([Phase], [Benefit]),
  [Opening], [Role trait, passive Specials and Start-assigned ordinary Specials operate under their own conditions. Show a clear Tell.],
  [Half], [Unlock the assigned ordinary and defeat-triggered Specials under the schedule above. Owned reinforcement options retain normal costs and timing. Grant no duplicate Command bonus.],
  [Desperate], [The recorded Best action category gains +2 to its rating. Defend uses the card's Weak rating as its base. Show a desperate tactic, offer a deal or reveal an exit; no extra negotiated benefit follows automatically.],
))

==== Desperate Rating Precedence
Before scripting the first exchange, record the boss's Best action category for Desperate. While its phase benefits are active, replace Defend's base rating with the card's Weak rating first, then apply eligible modifiers. If Defend is the recorded Best action, use #strong[Weak +2]. For example, a boss with Best Defend +8 and Weak +3 uses Defend +5 in Desperate, before other eligible modifiers.

The +2 stays attached to the recorded category. A later ability changing ratings does not move it unless it expressly changes the phase designation. These changes affect the designated boss only and grant no additional Power, automatic success, harmful-status permission or action.

==== Participation, Suspension and Lawful Return
Check phases only while the designated boss remains able to participate. When it becomes unable to participate, keep its designation, reference, thresholds, phase markers and unlock history. Activate no new phase during its absence and transfer none of its designation to another adversary.

Phase-derived rating benefits are suspended while it cannot participate. Unlocks are not erased but grant no permission to act, activate a Special or return while Taken Out. If another rule legally returns it to the same unresolved conflict, previously activated phase benefits resume from the next volley. Do not reset setup, rotation, used abilities or phase triggers.

At the next normal end-of-volley check for which the boss is eligible, test unactivated thresholds against the current total. Do not reconstruct threshold crossings during its absence. A return after the conflict ends cannot reopen it or activate a phase retroactively.

Command applies only while its Leader remains able to participate; phases neither restore nor duplicate it. Passive Specials follow their own conditions: Start availability does not make them dependent on a Half/Desperate rating benefit or override their participation restrictions. A Special expressly allowed to trigger while its owner is unavailable uses that permission only if already unlocked and usable; this grants no missing Last Stand or Fail-safe procedure.

==== Recovery and Outcome References
Starting Disposition remains the normal recovery cap and compromise reference; reinforcements increase current Disposition only (§6.5; Core Rules §10.9, §10.13). No phase refreshes either value or creates a new conflict. The separate proposed Last Stand/Fail-safe and compromise-rider replacements are not adopted by this phase procedure. Numerical calibration, rendered layout and encounter balance remain unvalidated.

=== 7.2 Example Exchange
Party of three. Opposition: Bounty Veteran (5), Knife in the Dark (3) and a Hound Pack (3), Threat 11. This matches the legacy P = 11 budget for three PCs, not a guaranteed Standard matchup under current setup. In this example the PCs have noticed the Knife, so Ambush does not apply; there are no other setup modifiers or Superiority. The opposition records starting shared Disposition 11. Its Woe pool is 6.

Before any reveal, the party commits Attack, Defend, Defend, assigned to three eligible PCs in rotation. The opposition commits Pack Maneuver, Knife Feint, Veteran Attack in that order.

- Volley 1: Attack versus Maneuver is versus. The Pack spends 1 Woe on a bonus die and wins by 4, generating 2 Power. It buys Impede (1) and Gain Position (1). Hit and Run also removes 1 shared PC Disposition. Impede applies to the party's next scripted action, not necessarily the PC who just acted. Telegraph the Knife's next action with the guttering lamp.
- Volley 2: the Knife's Feint resolves independently; the party's Defend is trumped and makes no roll. The pending Impede expires unused on that no-roll action. Gain Position supplies the Knife one bonus die, within the normal cap. Its successful Feint removes committed Power + 1 shared Disposition, without an automatic wound. Telegraph the Veteran thumbing back both hammers.
- Before volley 3 is revealed, the players may spend 2 Momentum to change their unrevealed action while retaining its assigned actor. The GM may likewise pay 3 Woe to change the opposition's unrevealed action, not react to a revealed result. If neither changes, the Veteran's Attack opposes the final PC's Defend. On the Veteran's first successful Attack this exchange, Heavy Hitter grants +1 Power.
- If a status or explicit effect Takes Out the Pack, remove it from participation without subtracting its 3 Grit from shared Disposition; ordinary loss does not individually remove it. Complete any independently resolving actions before checking victory. A concession near one third of starting Disposition is optional tactical advice, not an automatic defeat trigger.

== 8. Quick Checklist
- Intent, stakes and exits set before any roll.
- Budget calibration flagged; mix at least two Roles.
- Flat setup modifiers counted before Superiority; both adjusted totals checked for setup defeat; original starts recorded.
- Any phased boss and fixed Special assignments recorded before setup; fixed thresholds and Best category recorded before scripting.
- Three actions and eligible actors committed before reveal; continuous rotation tracked.
- One Tell per adversary, shown before its Best action.
- Woe tracked; costs paid without overrun.
- Ordinary Disposition loss kept separate from statuses, pools and Bodies.
- Independent actions finished before victory; only continuing conflicts with an eligible boss check phases; benefits begin next volley.
- Finishing procedures before compromise; reinforcement Grit changes current Disposition, not original start or recovery cap.
- Concessions negotiated before the next roll; compromise settled as one package.

]
