#import "tod-common.typ" : *
// Setting-only opposition fragment. Included by tod-setting-rules.typ
// after §15 when the relocation is connected. No core chapter import.

== 16. Frontier Opposition
Build adversaries using #emph[The 2d12 System], Adversaries. This section supplies the Frontier's Vampire package, construction exceptions, household Specials and setting-specific example cards.

Use the core rules for shared Disposition, Roles, encounter construction, scripting, Boss Phases, Last Stand and Fail-safe unless a rule here explicitly replaces them.

#let frontier-statblock(name, line, threat, body) = block(breakable: false, width: 100%, inset: 7pt, stroke: 0.6pt + luma(120), radius: 2pt, above: 8pt, below: 8pt)[
  #grid(columns: (1fr, auto), text(weight: 700, name), text(weight: 700)[Threat #threat])
  #text(size: 9pt, style: "italic", line)
  #v(2pt)
  #set text(size: 9pt)
  #body
]

=== 16.1 Construction and Running Notes
Use the core Rank table's Grit, Guard, Shrugs, ratings and Special allowance. Vampire power-tag allowances are Minor 3, Established 4, Great 5 and Paramount 5; weakness-tag allowances remain 1, 1, 2 and 2 respectively.

Vampire Grit already includes the Threat Rank Disposition bonus (+0 / +2 / +4 / +6). Do not add it again when building an adversary card.

#strong[Introduction Woe.] Set Woe as 2 per PC plus Difficulty extras plus any introduction Woe due. A vampire's introduction Woe is paid once, the first time it appears in the campaign, not at every encounter. Session Woe plus introduction Woe stacks fast. If the encounter already carries introduction Woe, treat Hard as Standard plus Woe.

#strong[Frontier skills.] Use the renamed skills in §3: Ride, Frontier, Old Lore, Science and Occult. In particular, Science supplies the core Guardian package's Tech actions. A Guardian's Unfeeling immunity includes Duel of Wills in this setting.

#strong[Rival Hunters.] Build Great or Paramount rival hunters as full PCs.

#strong[Harm outside conflicts.] Tier 6 is Taken Out under the core rules. Vampires stop at physical status tier 5 without a killing method; follow §5.2 and §8.1 for their exceptions. Ordinary shared Disposition loss does not individually wound or remove a vampire.

=== 16.2 Vampire Kind Package
- #strong[Hard to Kill.] Physical statuses stop at tier 5 without a killing method. Tier 5 is broken (−2 on physical rolls).
- #strong[Blood Debt.] −1 to all ratings at 4 segments, −2 at 5. Being broken ticks the clock.
- #strong[Pride, Sun-Sick and killing methods] all apply.
- #strong[Killing strike.] A vampire side at 0 shared Disposition is defeated, not automatically wounded or destroyed. Name an eligible vampire and follow §5.2 within the established lethal stakes; shared Disposition loss grants no physical status.
- #strong[Introduction Woe,] paid once, the first time it appears in the campaign: Minor 1, Established 3, Great 5, Paramount 8.
- #strong[Woe Spends] (Presence, Uncanny Speed, Summon the Household) are open to every vampire and do not count against Specials. See §14 for the setting's general vampire Woe spends.

#figure(table(columns: (22%, 8%, 70%),
  table.header([Special], [Woe], [Effect]),
  [Feed], [1], [After it wins a versus Attack in melee, add Bled-2 to that PC's compromise (Bled-2 on the hit outside conflicts). It recovers 1 tier of physical status.],
  [Unnatural Strength], [1], [+1 Power on a successful Attack. Outside conflicts, +2 tiers.],
  [Terrible Patience], [1], [Ignore one status or Blood Debt penalty for one roll.],
  [Fade], [2], [Create the Truth Deep Shadows. It may be gone when the light returns.],
  [Blood Price], [3], [Paramount only. Tick the campaign danger clock by 1 and restore 3 of its side's shared Disposition (up to the side's starting value).],
))

=== 16.3 Retainer-clan Specials
These retain their restrictions and count against the adversary's listed Special allowance. Boss availability follows core Adversaries §7.1.

#figure(table(columns: (22%, 14%, 64%),
  table.header([Special], [Woe], [Effect]),
  [Shadow-meld], [0], [Retainer clan, once per scene. Step between shadows. May swap one revealed action for a Maneuver.],
  [Beast Form], [1], [Retainer clan. Attack becomes Best for the scene, and it gains the Beast package.],
))

=== 16.4 Frontier Example Cards
These cards use the core Rank table, Roles, Kind packages and running procedures, with the Frontier additions above. Their ratings, tags, Specials and costs are unchanged by relocation.

#frontier-statblock("RAIDER BAND", "Human · Minion group (4 Bodies) · Shooter", "3")[
Grit 3 · Guard +0 · Bodies 4 · Armour 0 \
Attack +4 · Defend +2 · Feint +0 · Maneuver +2 · Other +2 \
Harm: wounded (carbines) \
Power: plenty of bullets, know the ground · Weakness: break and run \
Kind: Morale. Role: Dead Aim. \
Group trait: Volley (2): area Attack. \
Tell: hats come off as rifles shoulder. \
Wants: the strongbox, no heroics.
]

#frontier-statblock("HOUND PACK", "Beast · Minion group (5 Bodies) · Skirmisher", "3")[
Grit 3 · Guard +0 · Bodies 5 · Armour 0 \
Attack +2 · Defend +2 · Feint — · Maneuver +4 · Other +2 (Notice +4) \
Harm: wounded (bites) \
Power: noses for blood, run as a pack · Weakness: fears fire \
Kind: no Feint, Morale (scatter if the handler falls). Role: Hit and Run. \
Group trait: Pack Tactics (0). \
Tell: the circling tightens. \
Wants: drive the prey toward the den.
]

#frontier-statblock("KNIFE IN THE DARK", "Human (retainer clan) · Minor · Trickster", "3")[
Grit 3 · Guard +0 · Shrugs 0 · Armour 0 \
Attack +3 · Defend +1 · Feint +5 · Maneuver +3 · Other +3 \
Harm: wounded (paired knives) \
Power: one with the shadows, a knife for every hand · Weakness: the oath before my life \
Kind: Morale. Role: Ambush. \
Specials: Dirty Trick (1). \
Tell: the nearest lamp gutters. \
Wants: no witnesses.
]

#frontier-statblock("BOUNTY VETERAN", "Human · Established · Brute", "5")[
Grit 5 · Guard +1 · Shrugs 1 · Armour 1 (oilskin and mail) \
Attack +6 · Defend +4 · Feint +2 · Maneuver +4 · Other +4 \
Harm: wounded (silver-and-wood shotgun), +1 tier from Heavy Hitter \
Power: silver-and-wood shot, twenty years of hunts, a name the Kept know · Weakness: greedy for the bounty \
Kind: Morale; can be bargained with. Role: Heavy Hitter. \
Specials: Last Stand (2), Call for Help (1 per minion: two hired guns). \
Tell: he thumbs back both hammers. \
Wants: the bounty, and the credit.
]

#frontier-statblock("HEDGE ADEPT", "Human · Established · Controller", "5")[
Grit 5 · Guard +1 · Shrugs 1 · Armour 0 \
Attack +2 · Defend +4 · Feint +4 · Maneuver +6 · Other +4 (Lore +6) \
Harm: wounded or shaken (rite) \
Power: binding rites, a ledger of debts, hands that never shake, sees in the dark · Weakness: proud beyond reason \
Kind: Morale. Role: Shape the Ground. \
Specials: Dirty Trick (1), Hostage (2). \
Tell: he straightens his cuffs. \
Wants: finish the rite before dawn.
]

#frontier-statblock("GATE WARDEN", "Guardian · Established · Bulwark", "5")[
Grit 5 · Guard +1 · Shrugs 1 · Armour 1 \
Attack +4 · Defend +6 · Feint +2 · Maneuver +4 · Other +4 (Science +6) \
Harm: wounded (shock-baton) \
Power: old-world steel, knows every corridor, obeys the bloodline · Weakness: answers to the old codes \
Kind: Unfeeling, Protocol, Machine. Role: Interpose. \
Specials: Self-Repair (1), Lockdown (2). \
Tell: "Please remain where you are." \
Wants: guests kept safe, intruders out.
]

#frontier-statblock("THE IRON MARSHAL", "Human · Great · Leader · Boss", "8")[
Grit 8 · Guard +2 · Shrugs 2 · Armour 1 (house mail) \
Attack +5 · Defend +8 · Feint +3 · Maneuver +5 · Other +5 \
Harm: wounded (old-world sabre) \
Power: remembers the founding, a hundred sworn swords, the house is armed, never loses a flank · Weakness: proud beyond reason, believes the old stories \
Kind: Morale (Fanatic in her presence). Role: Command. \
Specials: Call for Help (1 per minion / 3), Hostage (2), Last Stand (2). \
Tell: she sets down her glass. \
Wants: the intruders alive, kneeling and useful.
]

=== 16.5 Boss Phase Example: The Iron Marshal
Use core Adversaries §7.1.

The Iron Marshal has Grit 8 and begins with a Raider Band contributing Grit 3. Their combined Disposition is 11. The PCs' 2 Superiority reduces it to 9.

Record phase reference 9, Half 4 and Desperate 3.

The Marshal has three listed Specials. The GM chooses Call for Help as her Opening Special. Hostage and Last Stand remain unavailable until Half. Command operates normally from Opening.

At the end of a volley, the opposition has 4 shared Disposition and the Marshal remains active. Half activates: reveal Hostage and Last Stand. Command grants no additional +1.

A reinforcement with Grit 3 later joins. Current Disposition rises from 4 to 7, and starting Disposition rises from 9 to 12. Defend can recover up to 12, but the phase reference stays 9 and the thresholds remain 4 and 3.

A later volley leaves the side at 3 Disposition. Desperate activates. The Marshal's designated Best action is Defend: replace its +8 with Weak +3, then add +2, for Defend +5.

Recovering above 3 does not reverse Desperate.

If a later volley leaves her side at 0 while she remains active, the GM may spend 2 Woe on Last Stand. Her side receives one final volley, using her already activated phase benefits, then loses unless the result is mutual defeat.

=== 16.6 Example Exchange
Party of three, P = 11. Opposition: Bounty Veteran (5), Knife in the Dark (3) and a Hound Pack (3), Threat 11: a Standard fight. Woe pool: 6.

- Volley 1: the party scripts Attack. The Pack scripts Maneuver and the GM spends 1 Woe on a bonus die. The Pack wins by 4: Impede on the attacker.
- Volley 2: the Knife scripts Feint, ignoring Defend. Tell: the lamp gutters. The Veteran scripts Attack with Heavy Hitter.
- Volley 3: a PC spends 2 Momentum to change a script. The GM may answer with 3 Woe to Interrupt.
- If a status or explicit effect Takes Out the Pack, remove it from participation without subtracting its 3 Grit from shared Disposition. Ordinary Disposition loss does not individually remove the Pack. Offer a concession when the side's shared Disposition drops under about 4; its original starting total remains 11 before setup modifiers.
