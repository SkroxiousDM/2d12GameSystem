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
- #strong[No pools.] Adversaries do not track Sōma, Mētis, Psychē or Pneuma. Staying power is #strong[Grit] (their Disposition) and #strong[Shrugs] (free Resists).
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
  [Grit], [The adversary's Disposition. Add up Grit across a side; adversary sides do not roll for Disposition.],
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
  [Leader], [Defend or Maneuver], [#strong[Command.] While it has Disposition, minion groups on its side get +1 to all ratings, and changing its side's script costs 2 Woe (not 3).],
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
- #strong[Killing strike.] A vampire at 0 Disposition counts as tier-4+ physical harm for killing methods. The strike's Difficulty scales with Rank.
- #strong[Introduction Woe,] paid once, the first time it appears in the campaign: Minor 1, Established 3, Great 5, Paramount 8.
- #strong[Woe Spends] (Presence, Uncanny Speed, Summon the Household) are open to every vampire and do not count against Specials.

#figure(table(columns: (22%, 8%, 70%),
  table.header([Special], [Woe], [Effect]),
  [Feed], [1], [After it wins a versus Attack in melee, add Bled-2 to that PC's compromise (Bled-2 on the hit outside conflicts). It recovers 1 tier of physical status.],
  [Unnatural Strength], [1], [+1 Power on a successful Attack. Outside conflicts, +2 tiers.],
  [Terrible Patience], [1], [Ignore one status or Blood Debt penalty for one roll.],
  [Fade], [2], [Create the Truth Deep Shadows. It may be gone when the light returns.],
  [Blood Price], [3], [Paramount only. Tick the campaign danger clock by 1 and recover 3 Disposition (up to starting).],
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
  [Self-Repair], [1], [Restore 2 Disposition (up to starting) or 2 tiers of physical status.],
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
+ State intent, stakes and exits for both sides (Core §10.2). State whether death is possible before any roll.
+ Add up Grit across the side: that is its starting Disposition. Apply Superiority. Ambush adds +2.
+ Set Woe: 2 per PC plus Difficulty extras plus introduction Woe.
+ Write the side's script on index cards. Minion groups share one script.

=== 6.2 Scripting
Each exchange is three volleys. Script three actions in order.
- Every actor, minion groups included, acts once before anyone acts twice.
- Open with the strongest actor's Best action.
- Never script one action three times. Players read patterns.
- Put one Defend or Maneuver in when Grit is under half.
- Show the Tell on the volley before the Best action.
- If a member is out, any remaining teammate takes its scripted action as long as rotation allows. If none can, it is lost.
- Disarm on an already scripted action cancels it. The GM may pay 3 Woe to change it.

=== 6.3 Action Results
- #strong[Attack.] On a win, remove committed Power + 1 from the opposing side's shared Disposition once. An area Attack adds 1 per additional opposing participant affected (Core Rules §10.16). No status unless a Special says so.
- #strong[Defend.] Each Power restores 1 Grit, up to starting Grit.
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
Reinforcements add their Grit to the side's Disposition, even above the starting value. Defend cannot restore above the original start.

=== 6.6 Minion Bodies
Minion groups have Bodies (3--6) instead of Shrugs. Each successful Attack outside a conflict drops 1 Body. Extra Power spent on Extra Feat drops another. At half Bodies or fewer, ratings drop by 1. At zero, the group is gone. Morale usually ends it sooner.

=== 6.7 When Adversaries Win Or Lose
- #strong[Defeat.] A side at 0 Disposition is defeated, not necessarily dead. Capture, flight or death follow the stakes.
- #strong[No injury trade.] Ordinary adversaries and minion groups cannot use it (Core §10.13). A named rival built as a full PC can.
- #strong[Compromise.] When the PCs win, the Disposition they have left sets the cost: Minor tier 2, Significant tier 3, Major tier 4. When adversaries win, they take compromise statuses too, and may Shrug them.
- #strong[Concession.] Offer one before the next roll (Core §10.11), usually at or below one third Grit. Humans accept. Beasts flee. Guardians never offer. A Boss falls back to a prepared position and starts a danger clock.

=== 6.8 Outside Conflicts
- #strong[Passive opposition.] Difficulty = 12 + the adversary's relevant rating. A Minor's Defend (Fair +3) gives 15; an Established Steward's Defend (+6) gives 18.
- #strong[Active opposition.] Roll versus: 2d12 + rating.
- #strong[Harm to adversaries.] Attack Power inflicts statuses as normal. Shrugs and Armour cut them down. Tier 6 is Taken Out. Vampires stop at tier 5 without a killing method.

=== 6.9 Other Conflict Types
The same card runs any type in Core §10.4. Swap Attack, Defend, Feint and Maneuver for that type's skills and keep the ratings, Grit and Woe costs. Rename Specials to fit: Hostage becomes a leverage threat in an Argument, Lockdown a sealed network in a Hack.
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
Phase changes are free narration with a mechanical trigger. They cost no Woe.

#figure(table(columns: (24%, 76%),
  table.header([Threshold], [Change]),
  [Start], [Boss uses its Role trait and one Special. The Tell is clear.],
  [Half Grit], [Reveal a second Special. Call reinforcements for 1 Woe per minion. A Leader's minions gain +1.],
  [One third Grit], [Desperate: Best action +2, Defend drops to Weak. Offer a deal or an exit.],
))

=== 7.2 Example Exchange
Party of three, P = 11. Opposition: Bounty Veteran (5), Knife in the Dark (3) and a Hound Pack (3), Threat 11: a Standard fight. Woe pool: 6.

- Volley 1: the party scripts Attack. The Pack scripts Maneuver and the GM spends 1 Woe on a bonus die. The Pack wins by 4: Impede on the attacker.
- Volley 2: the Knife scripts Feint, ignoring Defend. Tell: the lamp gutters. The Veteran scripts Attack with Heavy Hitter.
- Volley 3: a PC spends 2 Momentum to change a script. The GM may answer with 3 Woe to Interrupt.
- If the Pack goes down, 3 Grit is gone and the rest hold 8. Offer a concession when they drop under about 4.

== 8. Quick Checklist
- Intent, stakes and exits set before any roll.
- Threat budget near P. Mix at least two Roles.
- Superiority applied. Ambush counted.
- Three scripted actions per exchange, with no pattern.
- One Tell per adversary, shown before its Best action.
- Woe tracked and spent each exchange.
- Concession offered near one third Grit.
