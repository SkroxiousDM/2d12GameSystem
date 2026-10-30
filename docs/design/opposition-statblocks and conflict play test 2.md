# Testament of Dust — Building Opposition

A light method for statting vampires, humans, beasts and old-world guardians. A finished statblock fits on an index card, plugs straight into the 2d12 roll and the scripted conflict (Core Rules §10), and uses Woe (Core §9.2) as its fuel.

- **Rules source:** `SkroxiousDM/2d12GameSystem`, master rulebook at commit `0582fbf`.
- **Built on:** Threat Ranks, Hard to Kill, Vampire Traits and Woe Spends (Frontier §5, §14), Effects (Core §5), Resistance (Core §6), Conflicts (Core §10).
- **Tested:** two scripted Fights against the Playtest 01 characters (see Test Fights below).

---

## Design Principles

1. **NPCs don't have pools.** They don't track Sōma, Mētis, Psychē or Pneuma. Their staying power is **Grit**, which is their Disposition share in conflicts, and **Shrugs**, which are free Resists outside them.
2. **Tags are already counted.** An NPC's ratings include its tags. Tags still matter: PCs Discover them, Burn them (Weaken, Disarm, Called Shot) and compel weaknesses.
3. **Woe is the fuel.** NPCs don't use Effort. They buy bonus dice with Woe (1 per die, max +2 as normal) and fire Specials with Woe.
4. **One action is clearly best.** Every statblock has one action it is clearly best at, and a **Tell** that hints at it. That gives players something to script around.

---

## Statblock Anatomy

```
NAME — Kind · Rank · Role                                Threat N
Grit N · Guard +N · Shrugs N · Armour N
Attack +N · Defend +N · Feint +N · Maneuver +N · Other +N
Harm: status (source)
Power tags: … · Weakness tags: …
Kind: traits from the Kind package
Role: role trait
Specials: Name (Woe cost): effect
Tell: the visible sign before it uses its Best action
Wants: what it's after in this scene
```

| Field | Meaning |
|---|---|
| **Grit** | The NPC's Disposition in a conflict. NPC sides don't roll for Disposition: add up the Grit of everyone on the side. |
| **Guard** | Added to Standard 15 when a PC's **independent** roll targets this NPC in a conflict. This is the "opposition's tags" adjustment from Core §10.4. |
| **Shrugs** | Free Resists per scene: each one reduces an incoming status by 2 tiers. More cost 1 Woe each. |
| **Armour** | The same as PC Armour: −1 tier of physical harm per point. |
| **Ratings** | Its bonus on each conflict action. **Other** covers any roll outside a conflict (Notice, Stealth and so on) unless a tag makes it Best. |
| **Harm** | The status it inflicts when its Attack succeeds outside a conflict. Tiers equal Power, as normal. |
| **Threat** | Its cost against the encounter budget. Threat always equals Grit. |

---

## Building an NPC in Five Steps

### Step 1 — Concept and Kind

Write one line: who it is and what it wants. Then pick a **Kind**: Vampire, Human, Beast or Guardian. The Kind adds a package of fixed traits (see Kind Packages).

### Step 2 — Rank

Rank measures how dangerous the NPC is **now**, the same way vampire Threat Ranks do (Frontier §5.1). It sets every number on the card.

| Rank | Grit (= Threat) | Best / Fair / Weak | Guard | Shrugs | Power / weakness tags | Specials |
|---|---|---|---|---|---|---|
| **Minion group** (3–6 bodies) | 3 | +4 / +2 / +0 | +0 | — (uses Bodies instead) | 2 / 1 | 1 group trait |
| **Minor** | 3 | +5 / +3 / +1 | +0 | 0 | 2 / 1 (vampires 3 / 1) | 1 |
| **Established** | 5 | +6 / +4 / +2 | +1 | 1 | 3 / 1 (vampires 4 / 1) | 2 |
| **Great** | 8 | +8 / +5 / +3 | +2 | 2 | 4 / 2 (vampires 5 / 2) | 3 |
| **Paramount** | 12 | +10 / +7 / +4 | +3 | 3 | 5 / 2 | 4 |

- **Vampire Grit already includes the Threat Rank Disposition bonus** from Frontier §5.1 (+0 / +2 / +4 / +6). Don't add it again.
- **How the ratings compare with PCs:** a starting PC's best roll is +6 (skill +4 and two tags). Against an NPC that rolls with no bonus dice, that PC with one bonus die wins a versus roll about:

  | NPC rating | +2 | +4 | +6 | +8 | +10 |
  |---|---|---|---|---|---|
  | PC win chance | 85% | 77% | 67% | 56% | ~45% |

  Each Woe die the GM adds moves those odds back toward the NPC.

### Step 3 — Role

The Role picks the **Best** action and gives one trait. Then assign **Fair** to two other actions and **Weak** to the last.

| Role | Best | Role trait |
|---|---|---|
| **Brute** | Attack | **Heavy Hitter:** its first successful Attack each exchange gets +1 Power. Outside conflicts, its Harm is +1 tier. |
| **Shooter** | Attack | **Dead Aim:** a free bonus die on its first Attack each scene. |
| **Bulwark** | Defend | **Interpose:** once per exchange, it takes Disposition loss meant for an ally. Outside conflicts, it takes a hit meant for an ally. |
| **Skirmisher** | Maneuver | **Hit and Run:** a successful Maneuver also removes 1 Disposition from the opponent. |
| **Controller** | Maneuver | **Shape the Ground:** once per scene, Create a Truth for 1 Woe (instead of 2) or for 1 Power from a Maneuver. |
| **Trickster** | Feint | **Ambush:** if the PCs haven't noticed it when the conflict begins, its side starts with +2 Disposition. |
| **Leader** | Defend or Maneuver | **Command:** while it has Disposition, minion groups on its side get +1 to all ratings, and changing its side's script costs 2 Woe (instead of 3). |

### Step 4 — Tags

Write the number of tags the Rank gives. Good tags explain the ratings and give the PCs something to find:

- **Power tags:** why it's good at its Best action. For example, faster than you can see, old-world steel, a hundred donors.
- **Weakness tags:** a lever the PCs can find with Discover and use. For example, proud beyond reason, fears fire, fixed in place.

Rules for tags in play:

- **Burning a power tag** (Weaken 1, Disarm 3, Called Shot) lowers the rating it supports by 1 for the scene. If the tag powers a Special, the Special is off for the scene instead.
- **Targeting a known weakness:** a PC whose action uses a weakness they've Discovered gets +1 on the roll (it counts as one of their tags).
- **Compelling a weakness:** a PC can spend 1 Momentum or 1 Tychē. The NPC acts on the weakness, and the GM gains 1 Woe. This is the same pattern as vampire Pride (Frontier §5.3).

### Step 5 — Specials, Harm, Tell

Pick Specials from the Kind menu, as many as the Rank allows. Then write the Harm line, the Tell and the Wants.

**Pricing a new Special:**

| Woe | What it can do |
|---|---|
| **0** | An always-on trait, or a once-per-scene minor trick (Armour 1, moving shadow to shadow). |
| **1** | +1 Power or a free bonus die on one roll. A tier-2 status on one target. Cancel one PC trick (a Disrupt). One minion as a reinforcement. |
| **2** | Create a Truth. A tier-3 status. Leave the scene. An **area** effect (see the Area Rule). |
| **3** | Changes the scene: a significant reinforcement, recovering 2 tiers or 3 Disposition, a danger-clock tick plus an effect. |

**Area Rule (from Playtest 01):** any effect that hits several targets puts its **full Power on one target and 1 on each other** opposing member, whether that's Disposition or status tiers. It never puts full Power on everyone. This replaces the literal reading of ★ Unleash in conflicts.

---

## Kind Packages

### Vampire

- **Hard to Kill** (§5.2): physical statuses stop at tier 5 without a killing method, and tier 5 is broken (−2 on physical rolls).
- **Blood Debt** (§5.4): −1 to all ratings at 4 segments, −2 at 5. Being broken ticks the clock.
- **Pride** (§5.3), **Sun-Sick** (§7) and **killing methods** (§8.1) all apply.
- **Starting Woe when introduced:** Minor 1, Established 3, Great 5, Paramount 8 (§5.1).
- **Woe Spends** (§14), such as Presence, Uncanny Speed and Summon the Household, are open to every vampire. They **don't** count against its Specials.

**Specials menu:**

| Special | Woe | Effect |
|---|---|---|
| **Feed** | 1 | After it wins a versus Attack in melee, add Bled-2 to that PC's compromise. Outside conflicts, it inflicts Bled-2 alongside the hit. Either way, the vampire recovers 1 tier of physical status. |
| **Unnatural Strength** | 1 | +1 Power on a successful Attack. Outside conflicts, +2 tiers instead. |
| **Terrible Patience** | 1 | Ignore one status or Blood Debt penalty for one roll. |
| **Fade** | 2 | Create the Truth Deep Shadows for the scene. If it chooses, it isn't there when the light comes back. |
| **Blood Price** | 3 | Paramount only. Tick the campaign danger clock by 1 and recover 3 Disposition (up to its starting value). |

### Human

Covers bandits, militia, retainer-clan fighters, rival hunters and household agents.

- **Morale:** outside conflicts, a minion group or Minor human flees or surrenders when it loses half its Bodies or its leader is Taken Out, unless a Leader is still standing.
- **Can be talked to:** Persuade, Intimidate, bribes and Argument or Negotiation conflicts all work normally.
- **Gear is already in the ratings.** Write Armour separately.
- **Great or Paramount rival hunters** should be built as full PCs instead.

**Specials menu:**

| Special | Woe | Effect |
|---|---|---|
| **Volley** | 2 | Group or Shooter only. An area Attack (Area Rule). |
| **Dirty Trick** | 1 | Any of its successes also Impedes the target (−3 on its next roll). |
| **Call for Help** | 1 per minion / 3 | Reinforcements arrive (Core §9.2) and add their Grit to its side's Disposition. |
| **Shadow-meld** | 0 | Retainer clan (once per scene). Move between shadows. In a conflict, it may swap its own revealed action for a Maneuver once. |
| **Beast Form** | 1 | Retainer clan. For the scene, Attack becomes its Best action and it gains the Beast package. |
| **Hostage** | 2 | Create the Truth "a knife at their throat." Attacks against its side are one step harder. |
| **Last Stand** | 2 | When its Disposition hits 0, it still takes its next scripted action this exchange. |
| **Fanatic** | 0 | Ignores Morale. |

### Beast

Covers mutant animals, kennel packs and wasteland creatures.

- **No Feint:** beasts don't deceive. Feint is "—", and the other three actions get Best, Fair and Fair. Players can always see the Feint is missing, which is the trade-off for the better spread.
- **Can't be reasoned with:** no Persuade or Argument. Intimidate and fire work on it as normal, and every beast starts with a weakness such as fears fire or gorges until slow.
- **Morale:** the same as Human. Packs scatter when the pack leader falls.

**Specials menu:**

| Special | Woe | Effect |
|---|---|---|
| **Pack Tactics** | 0 | Group trait. +1 Attack if another member of its side Attacked earlier in the same exchange. |
| **Pounce** | 1 | A free bonus die on its first Attack in a scene. If it wins, it also Impedes the target. |
| **Savage Bite** | 1 | +1 Power on a successful Attack. |
| **Thick Hide** | 0 | Armour 1. |
| **Venom / Infection** | 2 | The hit (or the compromise) adds poisoned-2, which rises 1 tier per scene until treated (Medicine). |
| **Howl** | 2 | A minion pack (Grit 3) arrives at the end of the exchange. |
| **Bolt** | 2 | It leaves the scene: into a burrow, the river or the dark. |

### Guardian

Covers old-world machines, turrets and constructs.

- **Unfeeling:** immune to fear, Intimidate, Persuade, Duel of Wills and Pneuma statuses. No Morale, and it never flees.
- **Protocol:** it scripts in a pattern. One Discover reveals its next exchange's script.
- **Machine:**
  - The glitched status lowers **all** of its ratings by the status's tier.
  - A PC with access can use Science as Attack (shutdown) or Maneuver (override) against it.
  - Old-world works that disrupt machines (an EMP, an estate's defences) can inflict glitched as an Attack (Cyborg Hunter rules).
- **Simple machines:** turrets and walkers have Feint "—" (Best, Fair, Fair). Thinking constructs Feint as normal.

**Specials menu:**

| Special | Woe | Effect |
|---|---|---|
| **Suppressing Fire** | 2 | An area Attack (Area Rule). |
| **Scan** | 1 | Cancel a Stealth-based Maneuver's effect (a Disrupt), or reveal a hidden PC. |
| **Self-Repair** | 1 | Restore 2 Disposition (up to its starting value), or 2 tiers of physical status. |
| **Lockdown** | 2 | Create the Truth Sealed Doors. |
| **Shock Field** | 1 | A PC who loses a versus roll against it in melee also gets jolted-2 in the compromise (Resist with Sōma). |
| **Fail-safe** | 3 | When its Disposition hits 0, it blows up. Every PC within reach adds burned-3 to their compromise (Resist with Sōma). |
| **Calls the Works** | 2 | Another guardian arrives, the same as Kennel and Guardians (§14). |

---

## NPCs in Play

### Single rolls (no conflict)

- **Passive opposition:** Difficulty = **12 + the NPC's relevant rating**. For example, hitting a Minor bandit uses its Defend (Fair +3), which gives 15, Standard. Getting past an Established Steward's Defend (+6) gives 18, Hard.
- **Active opposition:** for a contest that matters, roll versus: the NPC rolls 2d12 + its rating.
- **Harm to NPCs:** Attack Power inflicts statuses as normal. Shrugs and Armour cut them down, and tier 6 is Taken Out. Vampires stop at tier 5 without a killing method.

### Minion Bodies

- Minion groups have **Bodies** (3–6) instead of Shrugs.
- Each successful Attack drops 1 Body. Each extra Power spent on **Extra Feat** drops another, which is where Cleave, Wade Through Them and Heavy Ordnance shine.
- At half Bodies or fewer, the group's ratings drop by 1. With no Bodies left, it's gone. Morale usually ends it sooner.

### Scripted conflicts

- **NPC Disposition = total Grit** of the side. NPCs don't roll for Disposition.
- **Each statblock is one actor**, and that includes minion groups. Rotation applies: every member acts once before anyone acts twice.
- **Ratings replace skill plus tags.** The GM adds Woe dice as wanted.
- **Targeting:** in a versus roll, the target is the opposing actor. In an independent roll, any opponent; aiming at an NPC adds its Guard to the Difficulty.
- **Spill-over:** Disposition loss beyond a member's share spills to teammates of the damaged side's choice. This is ruling R4 from Playtest 01, kept for consistency.
- **Reinforcements** add their Grit to the side's Disposition, which can go above the starting value. Defend can't restore above the original start.
- **An out member's scripted action** is taken by any remaining teammate, as long as rotation allows it. If none can, it's lost.
- **Killing strike** (§5.2): a vampire brought to 0 Disposition **counts as tier-4+ physical status** for killing methods that need it, such as the great-axe, a blade arm or fire.
- **Compromise:** when NPCs win, they take compromise statuses as normal and can Shrug them.

---

## Encounter Budget

A PC side's Disposition averages about **8 + party size**: the leader's halved roll is around 9–10, and each helper adds +1. Use that number, **P**, to set the budget. Spend the budget as Threat (= Grit).

| Difficulty | Threat budget | Extra Woe at the start | What to expect |
|---|---|---|---|
| **Easy** | ½ P | — | The PCs win without spending Tychē. Use it for openers and calibration. |
| **Standard** | P | — | The PCs should win but take a Minor or Significant compromise. This is the default. |
| **Hard** | P + 3 | +2 | The PCs win only if they play well, and one bad Disposition roll can lose it. |
| **Deadly** | P + 6 or more | +4 | Signpost it in advance. Flight, bargaining or burning Tychē are real outcomes. |

**Quick values for P:**

| Party size | 2 | 3 | 4 | 5 |
|---|---|---|---|---|
| P | 10 | 11 | 12 | 13 |

**Guidelines:**

- **Mix at least two Roles.** Three hound packs is dull. A Controller with a Skirmisher pack and a Minor Brute gives the players script decisions.
- **Keep actors to the party size + 1 or fewer.** More bodies should be minion groups.
- **Count Woe separately.** Session Woe (2 per PC) plus vampire introduction Woe can easily reach 8–10 before the first roll. If an encounter already has a vampire's introduction Woe, treat Hard as Standard + Woe.
- **Abilities that subtract Disposition apply after the budget.** These include A Name the Kept Know (−2), Its Servants Die First (−2) and ★ Monster-Slayer (−3).

---

## Sample Statblocks

### Vampires

**PELL, THE NEWEST DAUGHTER** — Vampire · Minor · Skirmisher · Threat 3  
Grit 3 · Guard +0 · Shrugs 0 · Armour 0  
Attack +3 · Defend +1 · Feint +3 · Maneuver +5 · Other +3  
Harm: wounded (nails and teeth)  
Power tags: faster than you can see, sees perfectly in the dark, the household's pet · Weakness: starving  
Kind: Hard to Kill, Blood Debt 3, Pride, Sun-Sick · introduction Woe 1  
Role: Hit and Run  
Specials: Feed (1)  
Tell: she goes very still before she moves.  
Wants: to be fed before the others notice how hungry she is.

**DR. CORVIN VALE** — Vampire · Established · Controller · Threat 5  
Grit 5 · Guard +1 · Shrugs 1 · Armour 0  
Attack +2 · Defend +4 · Feint +4 · Maneuver +6 · Other +4 (Medicine +6)  
Harm: wounded (scalpel)  
Power tags: the clinic opens for me, a ledger of donors, a surgeon's hands, sees perfectly in the dark · Weakness: proud beyond reason  
Kind: Hard to Kill, Blood Debt 1, Pride, Sun-Sick · introduction Woe 3  
Role: Shape the Ground  
Specials: Feed (1), Terrible Patience (1)  
Tell: he straightens his cuffs.  
Wants: the town doctor's patients, one quiet donation at a time.

**LADY SERAPHINE OST** — Vampire · Great · Leader · Threat 8  
Grit 8 · Guard +2 · Shrugs 2 · Armour 1 (house mail)  
Attack +5 · Defend +8 · Feint +3 · Maneuver +5 · Other +5  
Harm: wounded (old-world sabre)  
Power tags: remembers the founding, the old hospital opens for me, a hundred donors, faster than you can see, the house is armed · Weakness: proud beyond reason, believes the old stories  
Kind: Hard to Kill, Blood Debt 0, Pride, Sun-Sick · introduction Woe 5  
Role: Command  
Specials: Unnatural Strength (1), Feed (1), Fade (2)  
Tell: she sets down her glass.  
Wants: the hunters alive, kneeling and useful.

**THE FOUNDER BELOW NINEFOLD** — Vampire · Paramount · Controller · Threat 12  
Grit 12 · Guard +3 · Shrugs 3 · Armour 1  
Attack +4 · Defend +7 · Feint +7 · Maneuver +10 · Other +7  
Harm: wounded (bare hands)  
Power tags: the works obey my blood, every well in the valley, remembers the world before, a thousand debts owed, the house answers · Weakness: hasn't left the vault in forty years, obsessed with the past  
Kind: Hard to Kill, Blood Debt 0, Pride, Sun-Sick · introduction Woe 8, plus a danger clock  
Role: Shape the Ground  
Specials: Unnatural Strength (1), Terrible Patience (1), Fade (2), Blood Price (3)  
Tell: the lights dim one floor at a time.  
Wants: the Ninefold waterworks under its bloodline forever.

### Humans

**THE RATTLESNAKE GANG** — Human · Minion group (4 Bodies) · Shooter · Threat 3  
Grit 3 · Guard +0 · Armour 0  
Attack +4 · Defend +2 · Feint +0 · Maneuver +2 · Other +2  
Harm: wounded (carbines)  
Power tags: plenty of bullets, know the arroyos · Weakness: break and run  
Kind: Morale  
Role: Dead Aim  
Group trait: Volley (2)  
Tell: hats come off as they shoulder rifles.  
Wants: the strongbox, no heroics.

**HESPER OF THE QUIET CLAN** — Human (retainer clan) · Established · Trickster · Threat 5  
Grit 5 · Guard +1 · Shrugs 1 · Armour 0  
Attack +4 · Defend +2 · Feint +6 · Maneuver +4 · Other +4 (Stealth +6)  
Harm: wounded (paired knives)  
Power tags: one with the shadows, a knife for every hand, sworn to House Ost · Weakness: the oath before my life  
Kind: Morale (Fanatic in Ost's presence)  
Role: Ambush  
Specials: Shadow-meld (0), Dirty Trick (1)  
Tell: the lamp nearest her gutters.  
Wants: no witnesses.

**DUTCH CALLOWAY, RIVAL HUNTER** — Human · Established · Brute · Threat 5  
Grit 5 · Guard +1 · Shrugs 1 · Armour 1 (oilskin and mail)  
Attack +6 · Defend +4 · Feint +2 · Maneuver +4 · Other +4  
Harm: wounded (silver-and-wood shotgun)  
Power tags: silver-and-wood shot, twenty years of hunts, a name the Kept know · Weakness: greedy for the bounty  
Kind: Morale; can be bargained with  
Role: Heavy Hitter  
Specials: Last Stand (2), Call for Help (1 per minion: two hired guns)  
Tell: he thumbs back both hammers.  
Wants: the bounty, and the credit.

### Beasts

**KENNEL HOUNDS** — Beast · Minion group (5 Bodies) · Skirmisher · Threat 3  
Grit 3 · Guard +0 · Armour 0  
Attack +2 · Defend +2 · Feint — · Maneuver +4 · Other +2 (Notice +4)  
Harm: wounded (bites)  
Power tags: noses for blood, run as a pack · Weakness: fears fire  
Kind: no Feint, Morale (scatter if the handler falls)  
Role: Hit and Run  
Group trait: Pack Tactics (0)  
Tell: the circling tightens.  
Wants: to drive the prey toward the house.

**THE BONE-EATER** (mutant bear) — Beast · Great · Brute · Threat 8  
Grit 8 · Guard +2 · Shrugs 2 · Armour 1 (Thick Hide)  
Attack +8 · Defend +5 · Feint — · Maneuver +5 · Other +5  
Harm: wounded (claws), +1 tier from Heavy Hitter  
Power tags: two tonnes of muscle, hide like a wagon tarp, smells blood a league off, ignores pain · Weakness: fears fire, gorges until slow  
Kind: no Feint, Morale  
Role: Heavy Hitter  
Specials: Savage Bite (1), Thick Hide (0), Pounce (1)  
Tell: it rises onto its hind legs.  
Wants: the horses.

### Guardians

**SENTRY TURRET** — Guardian · Minor · Shooter · Threat 3  
Grit 3 · Guard +0 · Shrugs 0 · Armour 1  
Attack +5 · Defend +3 · Feint — · Maneuver +3 · Other +3  
Harm: wounded or burned (light-gun)  
Power tags: never sleeps, sees in every spectrum · Weakness: fixed in place  
Kind: Unfeeling, Protocol, Machine (simple)  
Role: Dead Aim  
Specials: Scan (1)  
Tell: a red bead of light settles on the target.  
Wants: an empty corridor.

**WARDEN-PATTERN STEWARD** — Guardian · Established · Bulwark · Threat 5  
Grit 5 · Guard +1 · Shrugs 1 · Armour 1  
Attack +4 · Defend +6 · Feint +2 · Maneuver +4 · Other +4 (Science +6)  
Harm: wounded (shock-baton)  
Power tags: old-world steel, knows every corridor, obeys the bloodline · Weakness: answers to the old codes  
Kind: Unfeeling, Protocol, Machine  
Role: Interpose  
Specials: Self-Repair (1), Lockdown (2)  
Tell: "Please remain where you are."  
Wants: the household's guests kept safe and the intruders out.

**IRON DEACON** (war walker) — Guardian · Great · Brute · Threat 8  
Grit 8 · Guard +2 · Shrugs 2 · Armour 2  
Attack +8 · Defend +5 · Feint — · Maneuver +5 · Other +5  
Harm: wounded or burned (heavy guns), +1 tier from Heavy Hitter  
Power tags: heavy guns, armour plate, sees in every spectrum, the ground shakes · Weakness: slow to turn, the reactor runs hot  
Kind: Unfeeling, Protocol, Machine (simple)  
Role: Heavy Hitter  
Specials: Suppressing Fire (2), Shock Field (1), Fail-safe (3)  
Tell: the gun-arms spin up with a rising whine.  
Wants: nothing living in the vault.

---

## Test Fights

Both fights used the Playtest 01 characters at full pools, the same rulings (R1–R5), and the patched Area Rule. Every roll was real (Python, seed `682101495`).

### Test A — Standard: Iron Lantern vs Vale's Household

- **Party:** Bram (Sellsword), Wren (Stalker) and Ilse (Frontier Doctor). P = 11.
- **Opposition (Threat 11):** Dr. Corvin Vale 5 + Pell 3 + Kennel Hounds 3.
- **Woe:** 6 (session) + 3 (Vale) + 1 (Pell) = **10**.
- **Intents:** the PCs want to destroy Vale. The household wants to drive them out and take the doctor.

**Disposition:** Bram rolled [7, 2] +6 = 15, halved to 8, +2 helpers = **10** (Bram 4, Wren 3, Ilse 3). The household had **11** (Vale 5, Pell 3, Hounds 3).

#### Exchange 1

| Volley | Iron Lantern | Household | Rolls | Result |
|---|---|---|---|---|
| 1 | Bram Attack +6 (Blood Fury and an Effort die) | Hounds Maneuver +4 (Woe die) | 28 vs 18 | 4 Power. Hounds 3 → 0, and 1 spills to Pell (→ 2) |
| 2 | Ilse Maneuver +4 (Effort die) | Vale Feint +4 (Woe die) | 20 vs **26, doubles**; Ilse invokes Tychē +2 → 22 | Vale wins by 4: 2 Power +1 critical = 3. **Ilse 3 → 0, out** |
| 3 | Wren Attack +5 (Woe die) | Pell Maneuver +5 (Woe die) | 26 vs 25 | 1 Power, +1 from Effort (3 Sōma). **Pell 2 → 0, out** |

**After Exchange 1:** Iron Lantern 7 (Bram 4, Wren 3). Household 5 (Vale). Woe 8.

#### Exchange 2

The GM spends **Kennel and Guardians (2 Woe)**: a second hound pack arrives and adds Grit 3, bringing the Household to 8.

| Volley | Iron Lantern | Household | Rolls | Result |
|---|---|---|---|---|
| 1 | Wren Maneuver, Stealth +6 (Ghost) | Hounds 2 Attack +2 (Woe die) | **28, doubles**, vs 19 | 5 Power: Gain Position for Bram, Impede Vale, and **Disarm** Vale's Feint for the conflict. That cancels his scripted volley-2 Feint, and the GM pays 3 Woe to change it to Defend |
| 2 | Bram Attack +6 (Blood Fury and Gain Position) | Vale Defend +4 −3 Impeded (Woe die) | **24, doubles**, vs 18 | 3 Power +1 critical, +1 from Effort = 5. **Vale 5 → 0, out** |
| 3 | Bram Attack +6 (Blood Fury) | Hounds 2 take Vale's Maneuver slot (Woe die) | 20 (doubles) vs 21; Bram invokes Tychē +2 → 22 | Bram wins by 1: 1 Power +1 critical. Hounds 2 → 1 |

#### Exchange 3

| Volley | Iron Lantern | Household | Rolls | Result |
|---|---|---|---|---|
| 1 | Wren Attack +5 (independent, vs 15) | Hounds 2 Attack +2 (independent, vs 15) | 16 and 24 | Wren 1 Power: **Hounds out, and Iron Lantern wins.** Hounds 4 Power: Wren 3 → 0, and 1 spills to Bram (→ 3) |

**Killing strike:** Bram beheads Vale with the great-axe vs Hard 18 (+6, Blood Fury and Effort): 27, a success. **Vale is destroyed.**

**Compromise:** Bram finished on 3 of 10 Disposition, so it was **Significant**.
- Wren took wounded-2 (from the hounds). She Resisted on 9, paid 1 Sōma, and with Armour it cleared.
- Ilse took shaken-2 (Vale's surgery-room horror). She Resisted on 4, paid 2 Pneuma, and it cleared.
- The household's partial intent: Pell escapes with the donor ledger.

**Verdict:** Standard felt right. The fight took 3 exchanges and 7 volleys, and the PCs won while spending 2 Tychē and taking a Significant compromise.

### Test B — Hard: Ash Road vs the Deacon's Vault

- **Party:** Tin (Cyborg Hunter), Juno (Rider) and Oriel (Occultist). P = 11, so Hard = 14.
- **Opposition (Threat 14):** Iron Deacon 8 + two Sentry Turrets 3 + 3.
- **Woe:** 6 + 2 (Hard) = **8**.

**Disposition:** Tin rolled [4, 3] +4 = 11, halved to 6, +2 helpers = **8** (Tin 3, Juno 3, Oriel 2). The guardians had **14** (Deacon 8, Turret A 3, Turret B 3).

#### Exchange 1

| Volley | Ash Road | Guardians | Rolls | Result |
|---|---|---|---|---|
| 1 | Juno Maneuver +4 (Woe die) | Turret A Attack +5 (Dead Aim) | **24, doubles**, vs 19 | 3 Power: Gain Position for Oriel and for Tin, and Impede the Deacon. Ride-By also takes 1 off Turret A (→ 2) |
| 2 | Oriel Attack, Unleash +6 (Gain Position), vs 15 + Guard 2 = 17 | Deacon Attack with Suppressing Fire, +8 −3 Impeded (Woe die), vs 15 | 25 and 22 | Oriel: 3 Power +2 from Over-channel = 5. The Deacon takes 5 (8 → 3), and each turret takes 1 under the Area Rule. Deacon: 3 Power +1 Heavy Hitter = 4 on Tin, +1 on each other PC under the Area Rule. **Tin 3 → 0** before he acts, with 1 spilling to Juno, so Juno ends on 1 and Oriel on 1 |
| 3 | Juno takes Tin's Attack slot, +5 (Woe and Effort dice) | Turret B Attack +5 (Dead Aim and Woe die) | 18 and 25 | Juno 2 Power: **Turret B 2 → 0.** Turret B 4 Power: **Juno and Oriel 1 → 0. The guardians win** |

**Compromise:** the guardians kept 4 of 14 (Deacon 3, Turret A 1), so it was Significant.
- The Deacon took glitched-2 and cleared it with a free Shrug.
- Turret A took a cracked lens (damaged-2), and the GM paid 1 Woe to Shrug it.
- Ash Road's partial intent: they're thrown out of the vault but bring back the vault map. Oriel's Unleash has the Deacon's reactor running hot (its weakness tag is now Discovered).

**Verdict:** Hard was Hard. It was decided in a single exchange, partly because Ash Road rolled low for Disposition (8 against 14). One area Attack with Heavy Hitter took 6 Disposition across the party at once.

---

## Findings and Open Questions

1. **The budget is about right.** Standard (= P) gave a fight the PCs won at a real cost, and Hard (P + 3) beat a party that rolled low for Disposition. With fixed NPC Disposition, **the PCs' Disposition roll is the biggest swing in the fight**. Option: let the GM roll for NPC sides too, or give the PC side a floor (minimum 3 + party size).
2. **Area + Heavy Hitter + spill-over is the most dangerous combination.** It took 6 Disposition in one action. Option: Heavy Hitter's +1 doesn't apply to area Attacks, or area splash doesn't spill over.
3. **Killing strikes need a conflict line.** The great-axe, blade arm and fire need a tier-4+ physical status, but Disposition conflicts don't inflict statuses. I used "0 Disposition counts as tier 4+." This belongs in §5.2.
4. **Disarming an action that's already scripted:** removing an action type the NPC has already scripted forced a 3-Woe script change. I ruled that the action fails unless the GM pays. Worth writing down.
5. **An out member's scripted action:** I ruled that a teammate takes it if rotation allows. Without that, the side that loses a member mid-exchange loses tempo twice.
6. **Tier-2 compromise statuses are only a pool tax.** One Resist or Shrug always clears tier 2. So Significant compromises cost 0–3 pool points and nothing more. Option: Significant gives tier 3, Major gives tier 4.
7. **There's a lot of Woe.** Test A opened with 10 Woe, and it fed a Woe die on almost every NPC roll, a 2-Woe reinforcement and a 3-Woe script change. Session Woe (2 per PC) plus introduction Woe stack. Consider only paying introduction Woe when the vampire first appears in the campaign, not every scene.
8. **The Doctor and the Rider got more to do against NPCs.** Ilse's Maneuver drew Vale's Feint (and she lost to a critical). Juno's Ride-By and Gain Position set up the whole exchange. A Medicine Defend option for the Doctor is still worth adding.

