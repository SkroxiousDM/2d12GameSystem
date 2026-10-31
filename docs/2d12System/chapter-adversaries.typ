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
- #strong[No pools.] Adversaries do not track Sōma, Mētis, Psychē or Pneuma. #strong[Grit] contributes to their side's starting shared Disposition; it is not a personal track. #strong[Shrugs] are free Resists.
- #strong[Tags are already counted.] Ratings include tags. PCs still Discover, Burn and compel them.
- #strong[Woe is fuel.] Adversaries buy bonus dice (1 Woe each, max +2) and fire Specials with Woe. They never use Effort.
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
  [Shrugs], [Free Resists per scene; each cuts an incoming status by 2 tiers. Extra Shrugs cost 1 Woe.],
  [Armour], [−1 tier of physical harm per point.],
  [Ratings], [Bonus on each conflict action. Other covers rolls outside a conflict.],
  [Harm], [Status inflicted by a successful Attack outside a conflict. Tiers equal Power.],
  [Threat], [Its cost against the encounter budget. Always equals Grit.],
))

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

#strong[Tiers.] Minion groups are the mob. Minor and Established are rivals. Great and Paramount are bosses.

A starting PC's best roll is +6. With one bonus die, that PC wins a versus roll about this often against an adversary that rolls no bonus dice:

#figure(table(columns: (28%, 14%, 14%, 14%, 14%, 16%),
  table.header([Adversary rating], [+2], [+4], [+6], [+8], [+10]),
  [PC win chance], [85%], [77%], [67%], [56%], [about 45%],
))
Each Woe die you add moves the odds back toward the adversary.

=== Step 3 — Role
The Role names the Best action and gives one trait. Assign Fair to two other actions and Weak to the last. A Beast or simple machine has no Feint: it gets Best, Fair, Fair.

#figure(table(columns: (14%, 14%, 72%),
  table.header([Role], [Best], [Role trait]),
  [Brute], [Attack], [#strong[Heavy Hitter.] First successful Attack each exchange gets +1 Power. Resolve area effects under Core Rules §10.16; do not multiply this bonus across shared Disposition. Outside conflicts, its Harm is +1 tier.],
  [Shooter], [Attack], [#strong[Dead Aim.] Free bonus die on its first Attack each scene.],
  [Bulwark], [Defend], [#strong[Interpose.] Once per exchange, it may intercept an ally's imposed status before Resistance or harm reduction, using its own normal reduction instead. No shared Disposition loss is redirected. Outside conflicts, it may likewise intercept fitting harm without a separate frequency limit. Follow the full timing, exclusions and area restrictions in Core Rules §10.17.],
  [Skirmisher], [Maneuver], [#strong[Hit and Run.] A successful Maneuver also removes 1 Disposition from the opponent.],
  [Controller], [Maneuver], [#strong[Shape the Ground.] Once per scene, Create a Truth for 1 Woe (not 2) or for 1 Power from a Maneuver.],
  [Trickster], [Feint], [#strong[Ambush.] If the PCs have not noticed it when the conflict begins, its side starts with +2 Disposition.],
  [Leader], [Defend or Maneuver], [#strong[Command.] While the Leader remains an active participant in the conflict, minion groups on its side get +1 to all ratings, and changing its side's script costs 2 Woe instead of 3. Both benefits end when the Leader is Taken Out or otherwise leaves the conflict. Boss Phases grant no additional Command bonus.],
))

=== Step 4 — Tags
Write as many as the Rank allows.
- #strong[Power tags] explain the Best action: faster than you can see, old-world steel, a hundred donors.
- #strong[Weakness tags] are levers PCs can find with Discover: proud beyond reason, fears fire, fixed in place.
- #strong[Burning a power tag] (Weaken 1, Disarm 3, Called Shot) lowers the rating it supports by 1 for the scene. If the tag powers a Special, the Special is off for the scene instead.
- #strong[Using a Discovered weakness] gives the PC +1 on the roll.
- #strong[Compelling a weakness] costs 1 Momentum or 1 Tychē. The adversary acts on it and the GM gains 1 Woe.

=== Step 5 — Specials, Harm, Tell, Wants
Pick Specials from the Kind menu up to the Rank limit. Price a new one:

#figure(table(columns: (12%, 88%),
  table.header([Woe], [What it can do]),
  [0], [Always-on trait, or a once-per-scene minor trick (Armour 1, step between shadows).],
  [1], [+1 Power or a free bonus die on one roll. A tier-2 status on one target. Cancel one PC trick. One minion as reinforcement.],
  [2], [Create a Truth. A tier-3 status. Leave the scene. An area effect.],
  [3], [Changes the scene: a significant reinforcement, recover 2 tiers or 3 Disposition, a danger-clock tick plus an effect.],
))

#strong[Area Rule (provisional for playtesting).] Use Core Rules §10.16. Establish the area and everyone it can reach; there is no automatic ally/enemy selection. An area Attack or Feint removes its committed Power + 1 from shared Disposition once, plus 1 per additional opposing participant affected. No individual shares or spill-over. Explicit statuses apply at full purchased or listed tier to every affected character, with separate Resistance or NPC reduction. An ordinary conflict Attack gains no status merely for being an area effect. Apply both layers only when an explicit rule grants both. At most one participant may accept an injury trade against the combined loss of a single area Attack or Feint.
]

== 4. Kind Packages
=== Vampire
- #strong[Hard to Kill.] Physical statuses stop at tier 5 without a killing method. Tier 5 is broken (−2 on physical rolls).
- #strong[Blood Debt.] −1 to all ratings at 4 segments, −2 at 5. Being broken ticks the clock.
- #strong[Pride, Sun-Sick and killing methods] all apply.
- #strong[Killing strike.] A vampire side at 0 shared Disposition is defeated, not automatically wounded or destroyed. Name an eligible vampire and follow Testament of Dust, Frontier Rules §5.2, within the established lethal stakes; shared Disposition loss grants no physical status.
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
  [Dirty Trick], [1], [Any success also Impedes the target (−3 next roll).],
  [Call for Help], [1 per minion / 3], [Reinforcements arrive and add their Grit to the side.],
  [Shadow-meld], [0], [Retainer clan, once per scene. Step between shadows. May swap one revealed action for a Maneuver.],
  [Beast Form], [1], [Retainer clan. Attack becomes Best for the scene, and it gains the Beast package.],
  [Hostage], [2], [Create the Truth "a knife at their throat." Attacks against its side are one step harder.],
  [Last Stand], [2], [Once per side per conflict. After a volley leaves its side at 0 shared Disposition, an active bearer may spend 2 Woe to postpone defeat for one additional volley. Follow §6.10.],
  [Fanatic], [0], [Ignores Morale.],
))

=== Beast
- #strong[No Feint.] Ratings are Best, Fair, Fair. The missing Feint is the trade-off.
- #strong[Cannot be reasoned with.] No Persuade or Argument. Intimidate and fire work. Every beast starts with a weakness such as fears fire.
- #strong[Morale] as Human. Packs scatter when the pack leader falls.

#figure(table(columns: (22%, 8%, 70%),
  table.header([Special], [Woe], [Effect]),
  [Pack Tactics], [0], [Group trait. +1 Attack if another member of its side Attacked earlier this exchange.],
  [Pounce], [1], [Free bonus die on its first Attack in a scene. If it wins, it Impedes the target.],
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

== 5. Encounter Budget
#columns(2, gutter: 6mm)[
Let #strong[P] be the party's expected Disposition: about 8 plus party size. Spend Threat (= Grit) against it.

#figure(table(columns: (15%, 20%, 15%, 50%),
  table.header([Difficulty], [Threat budget], [Extra Woe], [Expect]),
  [Easy], [½ P], [none], [PCs win without spending Tychē. Openers and calibration.],
  [Standard], [P], [none], [PCs should win and take a Minor or Significant compromise.],
  [Hard], [P + 3], [+2], [PCs win only if they play well. One bad Disposition roll can lose it.],
  [Deadly], [P + 6 or more], [+4], [Signpost it. Flight, bargaining or burning Tychē are real outcomes.],
))
#figure(table(columns: (30%, 14%, 14%, 14%, 14%),
  table.header([Party size], [2], [3], [4], [5]),
  [P], [10], [11], [12], [13],
))

- #strong[Mix at least two Roles.] A Controller with a Skirmisher pack and a Minor Brute gives players script decisions.
- #strong[Keep actors to party size + 1 or fewer.] Put extra bodies into minion groups.
- #strong[Count Woe separately.] Session Woe (2 per PC) plus a vampire's introduction Woe stacks fast. If the encounter already carries introduction Woe, treat Hard as Standard plus Woe.
- #strong[Disposition-cutting PC abilities] (such as −2 or −3 to the opposing side) apply after the budget.
- #strong[Superiority] (Know Thy Foe, Know Thy Battlefield, Know Thy Players) lowers adversary Disposition by 1 each, up to 3. Players who scout earn a cheaper fight.
- #strong[Variance warning.] The PCs' own Disposition roll is the biggest swing in a fight. Adversary Grit is fixed. On a Hard fight, tell the table early if the roll came up low and offer exits.
]

== 6. Running Adversaries
#columns(2, gutter: 6mm)[
=== 6.1 Setup
+ State intent, stakes and exits for both sides (Core Rules §10.2). State whether death is possible before any roll.
+ Add up Grit across the side to determine its starting shared Disposition. Apply all setup modifiers, including Ambush, then Superiority. If Superiority resolves the conflict at setup, stop; do not script volleys or activate Boss Phases.
+ If the side includes a boss, record its final starting shared Disposition as the #strong[phase reference]. Record Half and Desperate thresholds, rounding down (§7.1). These values remain fixed for this conflict.
+ Set Woe: 2 per PC plus Difficulty extras plus introduction Woe.
+ Write the side's script on index cards. Minion groups share one script.

=== 6.2 Scripting
Each exchange is three volleys. Script three actions in order.
- Every actor, minion groups included, acts once before anyone acts twice.
- Open with the strongest actor's Best action.
- Never script one action three times. Players read patterns.
- Put one Defend or Maneuver in when the side's shared Disposition is under half its starting value.
- Show the Tell on the volley before the Best action.
- If a member is out, any remaining teammate takes its scripted action as long as rotation allows. If none can, it is lost.
- Disarm on an already scripted action cancels it. The GM may pay 3 Woe to change it.

=== 6.3 Action Results
- #strong[Attack.] On a win, remove committed Power + 1 from the opposing side's shared Disposition once. An area Attack adds 1 per additional opposing participant affected (Core Rules §10.16). No status unless a Special says so.
- #strong[Defend.] Each Power restores 1 of your side's shared Disposition, up to the side's starting value. It does not restore a personal Grit track or return a Taken Out participant.
- #strong[Feint.] As Attack, but ignores Defend.
- #strong[Maneuver.] Power buys Impede (1), Gain Position (1), Disarm (3), Create a Truth (2) or a scenery action.
- #strong[Independent rolls] against an adversary use Standard 15 plus its Guard.
- #strong[Versus rolls] set Power by margin: meet = 1, +1 per full 3.

=== 6.4 Woe Economy
Gain Woe from player-bought dice, failures (+1), Escalation (+1), dangerous scene Truths (+1 per scene) and bought-off complications (+2).

#figure(table(columns: (68%, 32%),
  table.header([Spend], [Cost]),
  [Bonus die on an adversary roll], [1 per die, max +2],
  [Fire a Special], [1--3],
  [Reinforcements], [1 per minion, 3 significant],
  [Interrupt: change an unrevealed scripted action], [3 (2 with a Leader)],
  [Tick a danger clock], [1 per segment],
  [Extra Shrug], [1],
  [Scenery Danger on any scenery action], [1],
))
Spend on the Best action early. Unspent Woe at session end is wasted tension.

=== 6.5 Reinforcements
Reinforcements add their Grit to both the side's current shared Disposition and its starting Disposition. The increased starting value becomes the cap for Defend and other Disposition recovery.

Removing a participant does not, by itself, subtract its Grit from current shared Disposition or lower starting Disposition.

Reinforcements arrive at the time specified by their rule or Special. Their arrival grants no immediate extra action or free script change. They participate under the normal scripting and rotation rules.

For Boss Phases, reinforcements and recovery do not change the recorded phase reference or either threshold, reverse an activated phase or allow it to activate again (§7.1).

Reinforcements cannot reopen a settled conflict outcome. During a Last Stand volley, apply §6.10.

=== 6.6 Minion Bodies
Minion groups have Bodies (3--6) instead of Shrugs. Each successful Attack outside a conflict drops 1 Body. Extra Power spent on Extra Feat drops another. At half Bodies or fewer, ratings drop by 1. At zero, the group is gone. Morale usually ends it sooner.

=== 6.7 When Adversaries Win Or Lose
- #strong[Defeat.] A side at 0 shared Disposition is defeated, not necessarily dead. Capture, flight or death follow the stakes. Last Stand may postpone this defeat for one additional volley (§6.10); it does not restore Disposition or cancel the eventual defeat.
- #strong[No injury trade.] Ordinary adversaries and minion groups cannot use it (Core §10.13). A named rival built as a full PC can.
- #strong[Compromise.] When the PCs win, the Disposition they have left sets the cost: Minor tier 2, Significant tier 3, Major tier 4. When adversaries win, they take compromise statuses too, and may Shrug them.
- #strong[Concession.] Offer one before the next roll (Core §10.11), usually when the side's shared Disposition is at or below one third of its starting value. Humans accept. Beasts flee. Guardians never offer. A Boss falls back to a prepared position and starts a danger clock.

=== 6.8 Outside Conflicts
- #strong[Passive opposition.] Difficulty = 12 + the adversary's relevant rating. A Minor's Defend (Fair +3) gives 15; an Established Steward's Defend (+6) gives 18.
- #strong[Active opposition.] Roll versus: 2d12 + rating.
- #strong[Harm to adversaries.] Attack Power inflicts statuses as normal. Shrugs and Armour cut them down. Tier 6 is Taken Out. Vampires stop at tier 5 without a killing method.

=== 6.9 Other Conflict Types
The same card runs any type in Core §10.4. Swap Attack, Defend, Feint and Maneuver for that type's skills and keep the ratings, Grit and Woe costs. Rename Specials to fit: Hostage becomes a leverage threat in an Argument, Lockdown a sealed network in a Hack.

=== 6.10 Last Stand
Last Stand gives a defeated side one final volley. It does not give an individual an extra action outside the normal volley.

#strong[Activation.] After resolving all actions in a volley, check removal and victory normally. If a side has reached 0 shared Disposition, at least one participant can still pursue its objective, and an active participant has Last Stand available, the GM may spend 2 Woe to activate it.

Activate Last Stand before settling the outcome or compromise. A Taken Out participant cannot activate it. It cannot be used when the side loses because none of its participants can continue, or when both sides are defeated in the same volley.

#strong[One additional volley.] Postpone the side's defeat and resolve exactly one more volley. Both sides act under the normal action interaction, scripting and rotation rules.

Use the next unrevealed action in each side's script. If no scripted action remains, each side secretly scripts one action for this final volley, then reveals it normally. This is not a new exchange: do not refresh exchange-limited abilities or tick clocks merely for scripting this additional action.

Changing an unrevealed action still costs the normal Momentum or Woe. Last Stand itself grants no free script change.

#strong[Defeat remains pending.] The side using Last Stand remains at 0 shared Disposition throughout the final volley. Defend, reinforcement Grit and other Disposition recovery cannot raise its current Disposition during this volley. Reinforcements may still arrive and participate if their timing and the normal scripting rules permit, but they do not cancel the pending defeat.

Resolve explicit statuses, hazards and other effects normally. Last Stand does not restore a Taken Out participant, prevent removal or grant permission to act through an incapacitating condition.

#strong[Phases.] Reaching 0 does not activate Half or Desperate. Previously activated phase benefits remain available to an active boss during the final volley, but no new phase activates while defeat is pending.

#strong[End the conflict.] After the additional volley, the side using Last Stand loses. If the opposing side is also defeated by then, resolve mutual defeat normally. Otherwise settle the winner's intent and compromise using the final state of the conflict.

Last Stand can extend a side's participation only once per conflict. Multiple bearers do not stack, refresh or chain additional Last Stand volleys.
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
Attack +3 · Defend +1 · Feint +5 · Maneuver +3 · Other +3 \
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
Grit 5 · Guard +0 · Shrugs 1 · Armour 0 \
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
Boss Phases mark changes in a boss's tactics as its side loses ground. Phase changes cost no Woe. Using a revealed Special or calling reinforcements still costs the listed Woe.

Use this procedure for an adversary designated as a boss. Great and Paramount adversaries normally qualify. A lower-rank adversary does not gain Boss Phases merely because it leads an encounter.

==== Fixed Phase Thresholds
At the end of conflict setup, after all modifiers and Superiority, record the boss side's shared Disposition as its #strong[phase reference]. Record two thresholds:

- #strong[Half:] half the phase reference, rounded down.
- #strong[Desperate:] one third of the phase reference, rounded down.

The phase reference is fixed for this conflict. It is not the boss's personal Grit or a separate Disposition track.

If Superiority resolves the conflict at setup, do not activate Boss Phases.

==== Specials Available by Phase
The number of listed Specials determines how many are available at Opening and how many become available at Half.

Before the conflict begins, choose which Specials are available at Opening. Keep the remaining Specials unavailable until Half activates.

#figure(table(
  columns: (24%, 38%, 38%),
  table.header([Listed Specials], [Available at Opening], [Revealed at Half]),
  [1], [None], [1],
  [2], [1], [Remaining 1],
  [3], [1], [Remaining 2],
  [4], [2], [Remaining 2],
))

A Special cannot be used before it is available. Revealing a Special makes it available; it does not activate it, pay its Woe cost or waive its timing, requirements or limits.

Role traits, Kind traits and general Woe spends that do not count against the boss's Special allowance are available normally. They are not locked behind a phase unless their own rules say otherwise.

Once revealed, a Special remains available for the rest of the conflict, subject to its normal limits. Recovery and reinforcements do not hide it again or refresh an expended use.

==== Checking Phases
Opening begins if the conflict continues after setup.

After each volley, resolve all actions, then check removal, victory and mutual defeat normally. If neither side has been defeated and the boss remains an active participant, activate any untriggered phase whose threshold the side's current shared Disposition is at or below.

Each phase activates once per conflict. If both thresholds are met in the same check, activate Half first, then Desperate.

A phase grants no immediate extra action, reinforcement or free script change. Its benefits apply to subsequent actions, not to actions already resolved.

#figure(table(
  columns: (16%, 28%, 56%),
  table.header([Phase], [Trigger], [Change]),
  [Opening],
  [The conflict continues after setup],
  [The boss begins with its Role trait and its Opening Specials available. Show a clear Tell.],
  [Half],
  [Shared Disposition is at or below the Half threshold],
  [Reveal any remaining Specials. Show a clear change in tactics. The boss may call reinforcements under the normal rules and costs. A Leader's minions benefit from Command only while that Leader remains active; this phase grants no additional +1.],
  [Desperate],
  [Shared Disposition is at or below the Desperate threshold],
  [Defend uses the boss's Weak rating. Its designated Best action gains +2 to its rating. If that action is Defend, use Weak +2. Show a desperate tactic, offer a deal or reveal an exit.],
))

#strong[Designated Best action.] This is the action assigned Best on the boss's card before phase adjustments. Do not choose a new Best action because current ratings are tied or another action has become higher.

At Desperate, replace Defend's rating with Weak first, then apply the +2 if Defend is the designated Best action. Apply other relevant bonuses and penalties normally.

#strong[Half reveals the remainder.] Every boss with one or more listed Specials gains access to its remaining Specials at Half. A boss with only one Special begins with no listed Specials available, but retains its normal actions, Role trait, Kind traits and any general Woe spends.

==== Recovery and Reinforcements
Recovery and reinforcements do not reverse an activated phase, allow it to activate again or change either threshold.

Reinforcements add their Grit to both the side's current shared Disposition and its starting Disposition (§6.5). The increased starting value is the cap for Defend and other Disposition recovery. The recorded phase reference remains unchanged.

Removing a participant does not, by itself, subtract its Grit or lower either Disposition value.

==== Taking Out the Boss or Leader
A Taken Out boss cannot activate a new phase or use phase benefits to act unless another rule explicitly permits it. Previously activated phases remain recorded; they do not restore the boss to participation.

Command's minion-rating bonus and reduced script-change cost end when the Leader is Taken Out or otherwise leaves the conflict. Boss Phases do not reactivate Command.

Last Stand does not activate a new phase at 0 Disposition. An active boss may use previously activated phase benefits during its side's Last Stand volley (§6.10).

==== Continuing the Same Conflict
Record a new phase reference only when a genuinely new conflict begins.

Changing location, conflict type or tactics within the same unresolved struggle does not reset the reference, activated phases or Special availability. Carry them forward alongside shared Disposition and participation.

==== Example: The Iron Marshal
The Iron Marshal has Grit 8 and begins with a Raider Band contributing Grit 3. Their combined Disposition is 11. The PCs' 2 Superiority reduces it to 9.

Record phase reference 9, Half 4 and Desperate 3.

The Marshal has three listed Specials. The GM chooses Call for Help as her Opening Special. Hostage and Last Stand remain unavailable until Half. Command operates normally from Opening.

At the end of a volley, the opposition has 4 shared Disposition and the Marshal remains active. Half activates: reveal Hostage and Last Stand. Command grants no additional +1.

A reinforcement with Grit 3 later joins. Current Disposition rises from 4 to 7, and starting Disposition rises from 9 to 12. Defend can recover up to 12, but the phase reference stays 9 and the thresholds remain 4 and 3.

A later volley leaves the side at 3 Disposition. Desperate activates. The Marshal's designated Best action is Defend: replace its +8 with Weak +3, then add +2, for Defend +5.

Recovering above 3 does not reverse Desperate.

If a later volley leaves her side at 0 while she remains active, the GM may spend 2 Woe on Last Stand. Her side receives one final volley, using her already activated phase benefits, then loses unless the result is mutual defeat.

=== 7.2 Example Exchange
Party of three, P = 11. Opposition: Bounty Veteran (5), Knife in the Dark (3) and a Hound Pack (3), Threat 11: a Standard fight. Woe pool: 6.

- Volley 1: the party scripts Attack. The Pack scripts Maneuver and the GM spends 1 Woe on a bonus die. The Pack wins by 4: Impede on the attacker.
- Volley 2: the Knife scripts Feint, ignoring Defend. Tell: the lamp gutters. The Veteran scripts Attack with Heavy Hitter.
- Volley 3: a PC spends 2 Momentum to change a script. The GM may answer with 3 Woe to Interrupt.
- If a status or explicit effect Takes Out the Pack, remove it from participation without subtracting its 3 Grit from shared Disposition. Ordinary Disposition loss does not individually remove the Pack. Offer a concession when the side's shared Disposition drops under about 4; its original starting total remains 11 before setup modifiers.

== 8. Quick Checklist
- Intent, stakes and exits set before any roll.
- Threat budget near P. Mix at least two Roles.
- All setup modifiers and Superiority applied. Ambush counted.
- For a boss, phase reference and both thresholds recorded after setup.
- Opening Specials chosen; remaining Specials marked for Half.
- Three scripted actions per exchange, following rotation.
- One Tell per adversary, shown before its designated Best action.
- Woe tracked and spent each exchange.
- After each volley, removal, victory and mutual defeat checked before new phases.
- Activated phases retained through recovery, reinforcements and changes within the same conflict.
- Command ends when its Leader stops participating.
- Concession offered near one third of the side's starting shared Disposition.
- If Last Stand activates, resolve one additional volley, then settle defeat or mutual defeat.
