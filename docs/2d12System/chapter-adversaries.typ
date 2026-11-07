#import "common.typ": *
// =====================================================================
//  CHAPTER — ADVERSARIES (GM)   Draft 3
//  Numbers from gm/opposition-statblocks.md (Rank table, Roles, Kind
//  menus, Encounter Budget) with Revision 2 fixes applied.
//  Terms: Threat N and Threat Rank (adversary cost) stay as written.
//  Woe is the GM's pool. Tychē (Fate), Sōma, Mētis, Psychē, Pneuma.
// =====================================================================
#chapter("Adversaries", [Build opposition on an index card, budget the fight, script it, and run it through the conflict system. Terse reference for the GM.], epigraph: [Every adversary has one thing it is clearly best at. Show the table the Tell.])

#let statblock(name, line, threat, body) = block(breakable: false, width: 100%, inset: 7pt, stroke: 0.6pt + luma(120), radius: 2pt, above: 8pt, below: 8pt)[
  #grid(columns: (1fr, auto), text(weight: 700, name), text(weight: 700)[Threat #threat])
  #text(size: 9pt, style: "italic", line)
  #v(2pt)
  #set text(size: 9pt)
  #body
]

== 1. Principles
#columns(2, gutter: 6mm)[
- #strong[No pools.] Ordinary adversaries do not track Sōma, Mētis, Psychē or Pneuma. #strong[Grit] contributes to their side's starting shared Disposition; it is not a personal track. #strong[Shrugs] are free Resists. Rivals built as full PCs use their PC resources and applicable exceptions.
- #strong[Tags are already counted.] Ratings include tags. PCs still Discover, Burn and compel them.
- #strong[Woe is fuel.] Ordinary adversaries buy bonus dice (1 Woe each, max +2 including free dice) and fire Specials with Woe. They never use Effort and cannot overrun Woe costs.
- #strong[One best action.] Every card has one clearly best action and a #strong[Tell] that hints at it. Give the players something to script around.
- #strong[Index-card size.] If it does not fit on a card, cut it.
]

== 2. The Card
```
NAME — Kind · Rank · Role                              Threat N
Grit N · Guard +N · Shrugs N · Armour N
Attack +N · Defend +N · Feint +N · Maneuver +N · Other +N
Harm: status (source)
Power tags: … · Weakness tags: …
Kind: traits from the Kind package
Role: role trait
Specials: Name (Woe cost): effect
Tell: the visible sign before it uses its Best action
Wants: what it is after in this scene
```
#figure(table(columns: (16%, 84%),
  table.header([Field], [Meaning]),
  [Grit], [The adversary's contribution to its side's starting shared Disposition. Add up Grit across a side; adversary sides do not roll for Disposition. Do not track or deplete individual Grit shares.],
  [Guard], [Added to Standard 15 when a PC's independent roll targets this adversary.],
  [Shrugs], [Free Resists per scene; each cuts an incoming status by 2 tiers. Extra Shrugs cost 1 Woe. Subject to the one-reduction limit below.],
  [Armour], [−1 tier of physical harm per point; subject to the one-reduction limit below.],
  [Ratings], [Bonus on each conflict action. Other covers rolls outside a conflict.],
  [Harm], [Status inflicted by a successful Attack outside a conflict. Tiers equal Power.],
  [Threat], [Its cost against the encounter budget. Always equals Grit.],
))

#strong[Reduction and payments.] Ordinary NPCs apply at most one eligible reduction per imposed status application (Core Rules §10.14); do not stack Armour and repeated Shrugs against the same status. Neither reduces ordinary shared Disposition loss or protected payments. General immunity, prevention and redirection likewise cannot cancel accepted injury trades, running-dry statuses, agreed concession costs or other accepted payments (§10.7). Later treatment or healing follows its own rules and refunds no benefit.

== 3. Building an Adversary
#columns(2, gutter: 6mm)[
=== Step 1 — Concept and Kind
One line: who it is and what it wants. Pick a #strong[Kind]: Vampire, Human, Beast or Guardian (§4).

=== Step 2 — Rank
Rank is how dangerous it is #emph[now]. It sets every number.

#figure(table(columns: (20%, 8%, 17%, 9%, 9%, 17%, 20%),
  table.header([Rank], [Grit = Threat], [Best / Fair / Weak], [Guard], [Shrugs], [Tags: power / weakness], [Specials]),
  [Minion group (3--6 Bodies)], [3], [+4 / +2 / +0], [+0], [Bodies], [2 / 1], [1 group trait],
  [Minor], [3], [+5 / +3 / +1], [+0], [0], [2 / 1 (vampire 3 / 1)], [1],
  [Established], [5], [+6 / +4 / +2], [+1], [1], [3 / 1 (vampire 4 / 1)], [2],
  [Great], [8], [+8 / +5 / +3], [+2], [2], [4 / 2 (vampire 5 / 2)], [3],
  [Paramount], [12], [+10 / +7 / +4], [+3], [3], [5 / 2], [4],
))
Vampire Grit already includes the Threat Rank Disposition bonus (+0 / +2 / +4 / +6). Do not add it again.

#strong[Tiers.] Minion groups are the mob. Minor and Established are rivals. Great and Paramount can serve as bosses, but Rank alone does not grant Boss Phases. Explicit phased-boss designation follows §7.1.

Use +6 as a starting-PC benchmark from skill and tags, not a universal maximum. With one bonus die, that PC wins a versus roll about this often against an adversary that rolls no bonus dice:

#figure(table(columns: (28%, 14%, 14%, 14%, 14%, 16%),
  table.header([Adversary rating], [+2], [+4], [+6], [+8], [+10]),
  [PC win chance], [85%], [77%], [67%], [56%], [about 45%],
))
Each Woe die you add moves the odds back toward the adversary. These are roll benchmarks, not encounter-win predictions; versus totals, exceptional doubles and ability-created doubles follow Core Rules §2.6 and §10.5. The listed benchmarks are not current encounter-balance validation.

=== Step 3 — Role
The Role names the Best action and gives one trait. Assign Fair to two other actions and Weak to the last. A Beast or simple machine has no Feint: it gets Best, Fair, Fair.

#figure(table(columns: (14%, 14%, 72%),
  table.header([Role], [Best], [Role trait]),
  [Brute], [Attack], [#strong[Heavy Hitter.] First successful Attack each exchange gets +1 Power. Resolve area effects under Core Rules §10.17; do not multiply this bonus across shared Disposition. Outside conflicts, its Harm is +1 tier.],
  [Shooter], [Attack], [#strong[Dead Aim.] Free bonus die on its first Attack each scene.],
  [Bulwark], [Defend], [#strong[Interpose.] Once per exchange, it may intercept an ally's imposed status before Resistance or harm reduction, using its own normal reduction instead. No shared Disposition loss is redirected. Outside conflicts, it may likewise intercept fitting harm without a separate frequency limit. Follow the full timing, exclusions and area restrictions in Core Rules §10.18.],
  [Skirmisher], [Maneuver], [#strong[Hit and Run.] A successful Maneuver also removes 1 Disposition from the opponent.],
  [Controller], [Maneuver], [#strong[Shape the Ground.] Once per scene, Create a Truth for 1 Woe (not 2) or for 1 Power from a Maneuver.],
  [Trickster], [Feint], [#strong[Ambush.] If the PCs have not noticed it when the conflict begins, its side starts with +2 Disposition.],
  [Leader], [Defend or Maneuver], [#strong[Command.] While the Leader remains able to participate, minion groups on its side get +1 to all ratings, and changing its side's script costs 2 Woe (not 3).],
))

=== Step 4 — Tags
Write as many as the Rank allows.
- #strong[Power tags] explain the Best action: faster than you can see, old-world steel, a hundred donors.
- #strong[Weakness tags] are levers PCs can find with Discover: proud beyond reason, fears fire, fixed in place.
- #strong[Burning a power tag] (Weaken 1, Disarm 3, Called Shot) lowers the rating it supports by 1 for the scene. If the tag powers a Special, the Special is off for the scene instead.
- #strong[Using a Discovered weakness] gives the PC +1 on the roll.
- #strong[Compelling a weakness] costs 1 Momentum or 1 Tychē. The adversary acts on it and the GM gains 1 Woe.

Use the effect permissions of the procedure being resolved (Core Rules §5, §10.6). A successful scripted action may buy relevant Discover; this summary grants no unrelated questions or additional status permission. General Weaken requires an explicit ability in conflicts; use Maneuver's priced Disarm for ordinary asset denial. Called Shot retains only its named permission and duration.

=== Step 5 — Specials, Harm, Tell, Wants
Pick Specials from the Kind menu up to the Rank limit. Price a new one:

#figure(table(columns: (12%, 88%),
  table.header([Woe], [What it can do]),
  [0], [Always-on trait, or a once-per-scene minor trick (Armour 1, step between shadows).],
  [1], [+1 Power or a free bonus die on one roll. A tier-2 status on one target. Cancel one PC trick. One minion as reinforcement.],
  [2], [Create a Truth. A tier-3 status. Leave the scene. An area effect.],
  [3], [Changes the scene: a significant reinforcement, recover 2 tiers or 3 Disposition, a danger-clock tick plus an effect.],
))

This is pricing guidance, not an unrestricted spend menu. Write a Special's trigger, action requirement, targets and component explicitly. Free waives only its listed cost; it grants no extra turn or rotation bypass. Additional Power, Disposition loss and status tiers are distinct, and a bonus does not apply to both loss and harm unless stated. Cancelling a trick does not cancel a protected payment (Core Rules §10.5--10.7).

#strong[Area Rule (provisional for playtesting).] Use Core Rules §10.17. Establish the area and everyone it can reach; there is no automatic ally/enemy selection. An area Attack or Feint removes its committed Power + 1 from shared Disposition once, plus 1 per additional opposing participant affected. No individual shares or spill-over. A group represented by one rules entry counts as one participant, not one per Body. Explicit statuses apply at full purchased or listed tier to every affected character, with separate Resistance or NPC reduction. An ordinary conflict Attack gains no status merely for being an area effect. Apply both layers only when an explicit rule grants both. At most one participant may accept an injury trade against the combined loss of a single area Attack or Feint.
]

== 4. Kind Packages
=== Vampire
- #strong[Hard to Kill.] Physical statuses stop at tier 5 without a killing method. Tier 5 is broken (−2 on physical rolls).
- #strong[Blood Debt.] −1 to all ratings at 4 segments, −2 at 5. Being broken ticks the clock.
- #strong[Pride, Sun-Sick and killing methods] all apply.
- #strong[Killing strike.] A vampire side at 0 shared Disposition is defeated, not automatically wounded or destroyed. Name an eligible vampire and follow Testament of Dust, Frontier Rules §5.2, within the established lethal stakes; shared Disposition loss grants no physical status. Complete independent actions, determine victory or mutual defeat, resolve any permitted finishing procedure, then settle compromise (Core Rules §10.12).
- #strong[Introduction Woe,] paid once, the first time it appears in the campaign: Minor 1, Established 3, Great 5, Paramount 8.
- #strong[Woe Spends] (Presence, Uncanny Speed, Summon the Household) are open to every vampire and do not count against Specials.

#figure(table(columns: (22%, 8%, 70%),
  table.header([Special], [Woe], [Effect]),
  [Feed], [1], [After it wins a versus Attack in melee, add Bled-2 to that PC's compromise (Bled-2 on the hit outside conflicts). It recovers 1 tier of physical status.],
  [Unnatural Strength], [1], [+1 Power on a successful Attack. Outside conflicts, +2 tiers.],
  [Terrible Patience], [1], [Ignore one status or Blood Debt penalty for one roll.],
  [Fade], [2], [Create the Truth Deep Shadows. It may be gone when the light returns.],
  [Blood Price], [3], [Paramount only. Tick the campaign danger clock by 1 and restore 3 of its side's shared Disposition (up to the side's starting value).],
))

=== Human
- #strong[Morale.] Outside conflicts, a minion group or Minor flees or surrenders at half Bodies or when its leader is Taken Out, unless a Leader still stands.
- #strong[Can be talked to.] Persuade, Intimidate, bribes, Argument and Negotiation all work.
- #strong[Gear is in the ratings.] Write Armour separately.
- Build Great or Paramount rival hunters as full PCs.

#figure(table(columns: (22%, 14%, 64%),
  table.header([Special], [Woe], [Effect]),
  [Volley], [2], [Group or Shooter. An area Attack.],
  [Dirty Trick], [1], [Any success also Impedes the opposing side's next scripted action (−3 on its action roll), not a tiered status or a penalty to Resistance. Pending Impedes do not stack and expire if that action makes no roll.],
  [Call for Help], [1 per minion / 3], [Reinforcements arrive and add their Grit to the side.],
  [Shadow-meld], [0], [Retainer clan, once per scene. Step between shadows. May swap one revealed action for a Maneuver.],
  [Beast Form], [1], [Retainer clan. Attack becomes Best for the scene, and it gains the Beast package.],
  [Hostage], [2], [Create the Truth "a knife at their throat." Attacks against its side are one step harder.],
  [Last Stand], [2], [At 0 Disposition, it still takes its next scripted action this exchange.],
  [Fanatic], [0], [Ignores Morale.],
))

=== Beast
- #strong[No Feint.] Ratings are Best, Fair, Fair. The missing Feint is the trade-off.
- #strong[Cannot be reasoned with.] No Persuade or Argument. Intimidate and fire work. Every beast starts with a weakness such as fears fire.
- #strong[Morale] as Human. Packs scatter when the pack leader falls.

#figure(table(columns: (22%, 8%, 70%),
  table.header([Special], [Woe], [Effect]),
  [Pack Tactics], [0], [Group trait. +1 Attack if another member of its side Attacked earlier this exchange.],
  [Pounce], [1], [Free bonus die on its first Attack in a scene. If it wins, apply Impede to the opposing side's next scripted action under Core Rules §10.6.],
  [Savage Bite], [1], [+1 Power on a successful Attack.],
  [Thick Hide], [0], [Armour 1.],
  [Venom / Infection], [2], [Hit or compromise adds poisoned-2, rising 1 tier per scene until treated.],
  [Howl], [2], [A minion pack (Grit 3) arrives at the end of the exchange.],
  [Bolt], [2], [It leaves the scene.],
))

=== Guardian
- #strong[Unfeeling.] Immune to fear, Intimidate, Persuade, Duel of Wills and Pneuma statuses. No Morale; it never flees.
- #strong[Protocol.] It scripts in a pattern. One Discover reveals its next exchange's script.
- #strong[Machine.] The glitched status lowers all ratings by its tier. A PC with access can use Science as Attack (shutdown) or Maneuver (override).
- #strong[Simple machines] have no Feint. Thinking constructs Feint normally.

#figure(table(columns: (22%, 8%, 70%),
  table.header([Special], [Woe], [Effect]),
  [Suppressing Fire], [2], [An area Attack.],
  [Scan], [1], [Cancel a Stealth-based Maneuver's effect, or reveal a hidden PC.],
  [Self-Repair], [1], [Restore 2 of its side's shared Disposition (up to the side's starting value) or 2 tiers of physical status.],
  [Lockdown], [2], [Create the Truth Sealed Doors.],
  [Shock Field], [1], [A PC who loses a versus roll to it in melee adds jolted-2 to their compromise.],
  [Fail-safe], [3], [At 0 Disposition it blows up: every PC within reach adds burned-3 to their compromise.],
  [Calls the Works], [2], [Another guardian arrives.],
))

#strong[Unresolved Special wording.] The inherited entries above retain their costs and numerical effects. Feed, Shock Field and Fail-safe still need explicit rulings for repeated compromise riders, package credit and timing; do not infer those rulings from ordinary Attack narration. Last Stand needs explicit defeat timing, rotation and independent-action treatment before it can provide an action after defeat. Shadow-meld expressly permits changing a revealed action but does not permit actor reassignment, undoing resolved effects or cancelling independent actions retroactively. Any further interaction or timing not stated remains open rather than supplied by this compatibility pass.

== 5. Encounter Budget
#columns(2, gutter: 6mm)[
#strong[Legacy calibration; playtest flag.] The retained budget uses #strong[P] = about 8 plus party size as a historical benchmark, not the current PC setup formula. Current rolled setup divides 2d12 + Disposition skill + highest pool Edge by 3, rounds down, then adds helpers and flat modifiers at full value before the minimum of 1 and Superiority (Core Rules §10.2--10.3). Recalibrate the expectations below against that procedure; this pass changes no Threat, Grit or budget numbers. Spend Threat (= Grit) against the retained benchmark only with that limitation in mind.

#figure(table(columns: (15%, 20%, 15%, 50%),
  table.header([Difficulty], [Threat budget], [Extra Woe], [Legacy expectation]),
  [Easy], [½ P], [none], [PCs win without spending Tychē. Openers and calibration.],
  [Standard], [P], [none], [PCs should win and take a Minor or Significant compromise.],
  [Hard], [P + 3], [+2], [PCs win only if they play well. One bad Disposition roll can lose it.],
  [Deadly], [P + 6 or more], [+4], [Signpost it. Flight, bargaining or burning Tychē are real outcomes.],
))
#figure(table(columns: (30%, 14%, 14%, 14%, 14%),
  table.header([Party size], [2], [3], [4], [5]),
  [Legacy P], [10], [11], [12], [13],
))

- #strong[Mix at least two Roles.] A Controller with a Skirmisher pack and a Minor Brute gives players script decisions.
- #strong[Keep actors to party size + 1 or fewer.] Put extra bodies into minion groups.
- #strong[Count Woe separately.] Session Woe (2 per PC) plus a vampire's introduction Woe stacks fast. If the encounter already carries introduction Woe, treat Hard as Standard plus Woe.
- #strong[Disposition-cutting PC abilities] (such as −2 or −3 to the opposing side) apply after the budget.
- #strong[Superiority] (Know Thy Foe, Know Thy Battlefield, Know Thy Players) lowers opposing Disposition by 1 per eligible distinct category, up to 3, after other setup modifiers and the minimum of 1. Only Superiority can reduce an adjusted start to 0. Determine both sides' adjusted totals first: if only one is 0, its opponent wins at no cost within the stakes; if both are 0, resolve simultaneous setup defeat as mutual defeat without scripting or a winner's compromise (Core Rules §10.3, §10.12). Symmetry and eligibility retain the core playtest flags.
- #strong[Variance warning.] The PCs' Disposition roll can materially change the matchup; adversary Grit is fixed. If the result makes the struggle unusually dangerous, signpost it and offer exits rather than treating the legacy difficulty label as a guarantee.
]

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

