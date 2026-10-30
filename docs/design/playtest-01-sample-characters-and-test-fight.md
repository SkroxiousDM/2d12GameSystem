# Testament of Dust — Playtest 01: Six Sample Characters and a Test Fight

Pure mechanical test of the Fight conflict (Core Rules §10) with six starting Frontier characters. No story framing: two crews meet on an open test yard and each side's intent is "drive the other crew off the yard."

- **Rules source:** `SkroxiousDM/2d12GameSystem`, `docs/TestamentOfDust/testament-of-dust-2d12-v2-master-rulebook.typ`, main at commit `0582fbf` (2026-10-17).
- **Power level:** brand-new characters. 0 Advances, Effort Level 1, base Refresh 3.
- **Dice:** every roll was a real random roll (Python, seed `357185`), shown in full below. No roll was re-done.

---

## Test Rulings Used

The rulebook doesn't settle these points for a fight between two player-built teams. I made the rulings below so the test could run, and each one is also listed as an open question at the end.

| # | Situation | Ruling used |
|---|---|---|
| R1 | Who holds Woe when both sides are PCs | A neutral GM. Woe starts at **0** (no NPC side) and is gained normally. Each side has its **own Momentum** pool (max 6). |
| R2 | ★ ability taken as one of the two extra creation abilities | Costs **1 Refresh total**, not 2. |
| R3 | Who an Attack hits | In a **versus** roll, the opposing actor in that volley. In an **independent** roll, any opponent the attacker chooses. |
| R4 | Disposition damage beyond a member's share | **Spills over** to teammates of the damaged side's choice (Mouse Guard-style team Disposition). |
| R5 | Occultist workings in a Fight | A working inside the Domain may replace the action's listed skill (psychic force: mind blast = Attack). It costs the working's 1 pool point, and the Domain counts as a power tag. |
| R6 | ★ Unleash in a Disposition conflict | **Rules as written:** the full Power comes off every opposing member. That ended the fight in volley 3 (see Exchange 1). **Interim patch used to keep testing:** full Power to the target, plus **1 Disposition** to each other opposing member. |

---

## The Characters

All six use 42 pool points (playbook base 36 + 4 chosen + 2 from the Descriptor), 3 Edge, a 1/2/3/4 skill pyramid, and a Normal load (5).

### Team A — Iron Lantern

#### Bram Holloway

"I am a **Scarred Sellsword** who **Holds the Line Until Dawn**."

| | |
|---|---|
| **Pools (Sōm / Mēt / Psy / Pne)** | 16 / 10 / 6 / 10 |
| **Edge** | Sōma 2, Pneuma 1 |
| **Skills** | +4 Fight · +3 Athletics, Endure · +2 Brawl, Intimidate, Shoot · +1 Notice, Will, Frontier, Ride |
| **Power tags** | built like a wall, veteran of a dozen hunts (playbook) · survived worse than this (Descriptor) · stubborn as stone, I've seen the sun come up before (Focus) |
| **Weakness tags** | old wounds ache · won't retreat |
| **Abilities** | Juggernaut (free) · ★ Blood Fury (1 Refresh) · Bodyguard (1 Refresh) · Focus T1: Buy Time |
| **Refresh / Tychē** | 1 |
| **Load (5)** | Great-axe (2): +1 Attack, heavy enough to behead · leather and mail coat (1): Armour 1 · throwing stakes ×3 (1) · flask of Frontier whiskey (1) |
| **Always carried** | wooden stake, knuckle-wraps, a trophy from his first kill |
| **Belief / Instinct / Goal** | "A village that pays me gets my blood, not just my blade." / "Always stand between my friends and the door." / "Be the last one standing on the yard." |

#### Wren Asher

"I am a **Silent Stalker** who **Fights Dirty**."

| | |
|---|---|
| **Pools** | 10 / 15 / 9 / 8 |
| **Edge** | Mētis 2, Psychē 1 |
| **Skills** | +4 Stealth · +3 Notice, Fight · +2 Athletics, Deceive, Shoot · +1 Craft, Science, Investigate, Old Lore |
| **Power tags** | light on my feet, eyes in the back of my head · says nothing, sees everything · no rules in a fight, eye for a cheap shot |
| **Weakness tags** | people don't know where they stand · no one trusts me in a fair fight |
| **Abilities** | Ghost (free) · Quick Reflexes (1 Refresh) · Focus T1: Cheap Shot |
| **Refresh / Tychē** | 2 |
| **Load (4)** | Wooden throwing needles (1): +1 Attack (range), silent · long knives and garrotte (1): +1 Attack, +1 Feint · smoke pellets ×2 (1): +1 Feint · padded dark jacket (1): Armour 1 |
| **Always carried** | wooden stake, soft-soled boots, a lucky coin |
| **Belief / Instinct / Goal** | "Winning is the only fair fight." / "Always find three ways out." / "Set up Bram's killing blow." |

#### Dr. Ilse Marrow

"I am a **Gentle Frontier Doctor** who **Heals the Bled**."

| | |
|---|---|
| **Pools** | 9 / 9 / 13 / 11 |
| **Edge** | Psychē 2, Pneuma 1 |
| **Skills** | +4 Medicine · +3 Old Lore, Notice · +2 Investigate, Empathy, Endure · +1 Science, Will, Shoot, Deceive |
| **Power tags** | steady surgeon's hands, calm in a crisis · people open up to me · the bled trust me, knows every stage of blood loss |
| **Weakness tags** | can't kill without cause · can't abandon a patient |
| **Abilities** | Field Surgeon (free) · Anatomy of Monsters (1 Refresh) · Focus T1: Blood Specialist |
| **Refresh / Tychē** | 2 |
| **Load (4)** | Doctor's bag (1): surgeon's tools · bandages, splints and morphine (1) · revolver (1): +1 Attack (range) · transfusion kit (1) |
| **Always carried** | scalpel, spectacles, a small cross |
| **Belief / Instinct / Goal** | "Every life is worth saving, even a mutant's." / "Always check the wound before the fight." / "Nobody on either side dies today." |

### Team B — Ash Road

#### Cassius "Tin" Varga

"I am a **Vengeful Cyborg Hunter** who **Never Misses**."

| | |
|---|---|
| **Pools** | 14 / 11 / 9 / 8 |
| **Edge** | Sōma 1, Psychē 1, Mētis 1 |
| **Skills** | +4 Shoot · +3 Fight, Science · +2 Endure, Notice, Intimidate · +1 Athletics, Ride, Investigate, Medicine |
| **Implants** | Arm cannon (built-in gun: +1 Attack range, can't be disarmed) · Targeting eye (locks on: free bonus die on a Shoot roll once per scene) |
| **Power tags** | steel where bone used to be, ex-militia soldier · I don't forget · steady breath, eye like a hawk |
| **Weakness tags** | will drop anything for revenge · clumsy up close |
| **Abilities** | Overclock (free) · ★ Combat Mode (1 Refresh) · Focus T1: Called Shot |
| **Refresh / Tychē** | 2 |
| **Load (5)** | Old-world laser rifle (2) · ballistic coat (1): Armour 1 · flash grenades ×2 (1) · combat knife (1) |
| **Always carried** | built-in steel neck guard, a photo of who he was |
| **Belief / Instinct / Goal** | "Whatever's left of me is still human." / "Always scan the room for heartbeats." / "Put the big one down first." |

#### Juno Reyes

"I am a **Feral Rider** who **Rides a Cyborg Horse**."

| | |
|---|---|
| **Pools** | 12 / 14 / 8 / 8 |
| **Edge** | Sōma 1, Mētis 2 |
| **Skills** | +4 Frontier · +3 Ride, Shoot · +2 Notice, Athletics, Fight · +1 Stealth, Endure, Medicine, Old Lore |
| **Power tags** | dead-eye, one with my horse · senses of a beast · my horse knows the way, faster than anything on the Frontier |
| **Weakness tags** | forgets my manners · can't leave the horse behind |
| **Mount** | Cinder, cyborg horse (never tires, armoured flank). Free Help once per scene on Ride, Frontier or Fight. |
| **Abilities** | Ride-By (free) · Long Shot (1 Refresh) · Focus T1: Cyborg Steed |
| **Refresh / Tychē** | 2 |
| **Load (4)** | Long rifle with scope (2): +1 Attack (range), +1 Maneuver · long duster and wide hat (1): Armour 1 · binoculars (1) |
| **Always carried** | knife, flint striker, compass |
| **Belief / Instinct / Goal** | "A horse is worth more than most men." / "Always water the horse first." / "Keep them off balance while Tin works." |

#### Sister Oriel Vane

"I am a **Doomed Occultist** who **Made a Bargain With Something Old**."

| | |
|---|---|
| **Pools** | 9 / 9 / 10 / 14 |
| **Edge** | Pneuma 2, Mētis 1 |
| **Domain** | psychic force (Occult; each working costs 1 Pneuma) |
| **Skills** | +4 Occult · +3 Old Lore, Will · +2 Notice, Deceive, Persuade · +1 Investigate, Empathy, Endure, Athletics |
| **Power tags** | disciplined mind, sees what others can't · nothing left to lose · patron's gift (extra Domain tag from Focus T1), knows the old names |
| **Weakness tags** | death rides beside me · the debt comes due |
| **Abilities** | Focused Channel (free) · Over-channel (1 Refresh) · ★ Unleash (1 Refresh) · Focus T1: Patron's Gift |
| **Refresh / Tychē** | 1 |
| **Load (3)** | Charm-bag of bones and hair (0): focus for my workings · pistol (1): +1 Attack (range) · herbs, garlic and wolfsbane (1) · grimoire (1) |
| **Always carried** | a tattoo that marks what she is |
| **Belief / Instinct / Goal** | "I'm already paid for; I may as well spend it." / "Always speak the old name before a working." / "End it in one breath." |

### Team Comparison

| | Iron Lantern (A) | Ash Road (B) |
|---|---|---|
| **Style** | Close in, hit hard, hold the line | Ranged pressure, implants, one big working |
| **Total Tychē** | 5 | 5 |
| **Best attack bonus** | Bram +6 (Fight) | Tin +6 (Shoot), Oriel +6 (Occult) |
| **Free bonus dice available** | Blood Fury (scene), Ghost (Stealth Effort) | Combat Mode (scene), Targeting eye (once) |

---

## Conflict Setup

- **Type:** Fight (Core §10.4). Attack: Fight / Brawl / Shoot · Defend: Athletics / Endure · Feint: Deceive · Maneuver: Notice / Stealth.
- **Scene Truths:** none (flat baseline).
- **Starting Woe:** 0 (R1). **Momentum:** A 0, B 0.

### Disposition

The leader rolls 2d12 + Disposition skill + highest Edge in that skill's pool, halves it (round up), then adds +1 per helper.

| Side | Leader | Roll | Calculation | Disposition | Split |
|---|---|---|---|---|---|
| A | Bram (Fight +4, Sōma Edge 2) | [6, 6] = 12 +6 = **18** | 18 ÷ 2 = 9, +2 helpers | **11** | Bram 5 · Wren 3 · Ilse 3 |
| B | Tin (Fight +3, Sōma Edge 1) | [5, 10] = 15 +4 = **19** | 19 ÷ 2 = 10, +2 helpers | **12** | Tin 5 · Juno 4 · Oriel 3 |

Bram rolled doubles on the Disposition roll. The rules don't say whether doubles count there, so they had no effect.

---

## Exchange 1

### Scripts (revealed one volley at a time)

| Volley | Iron Lantern | Ash Road |
|---|---|---|
| 1 | Wren — Maneuver | Tin — Attack |
| 2 | Bram — Attack | Juno — Maneuver |
| 3 | Ilse — Defend | Oriel — Attack (★ Unleash) |

### Volley 1 — Wren Maneuver vs Tin Attack (versus)

- **Wren:** Stealth +4, light on my feet +1, says nothing, sees everything +1 = **+6**. Ghost makes her first Stealth Effort free, so she gets a bonus die for 0 Mētis.
  - 3d12 [12, 3, 11] → keep 12 + 11 + 6 = **29**
- **Tin:** Shoot +4, arm cannon +1, steady breath +1 = **+6**. He switches on ★ Combat Mode (free die for the scene) and fires the Targeting eye (free die, once per scene).
  - 4d12 [11, 8, 9, 5] → keep 11 + 9 + 6 = **26**
- **Result:** Wren wins by 3, for **2 Power**. She spends it on **Gain Position**, giving Bram +1 die on his next roll, and **Impede**, giving Juno −3 on her next roll. Smoke and a low sprint put Tin's shots into empty dust.

### Volley 2 — Bram Attack vs Juno Maneuver (versus)

- **Bram:** Fight +4, great-axe +1, built like a wall +1 = **+6**. He enters ★ Blood Fury (free die for the scene, and he can't script Defend for the rest of it), and Wren's Gain Position adds another die.
  - 4d12 [9, 3, 10, 8] → keep 10 + 9 + 6 = **25**
- **Juno:** Notice +2, long rifle +1 Maneuver, senses of a beast +1 = +4, −3 Impeded = **+1**. She buys a die from the GM (**Woe 1**).
  - 3d12 [11, 5, 9] → keep 11 + 9 + 1 = **21**
- **Result:** Bram wins by 4, for 2 Power. Effort for +1 Power costs 1 Sōma (16 → 15), making **3 Power**. **Juno 4 → 1.** Cinder takes the axe on its armoured flank and Juno nearly comes out of the saddle.

### Volley 3 — Oriel Attack (★ Unleash) vs Ilse Defend (versus)

- **Oriel:** Occult +4, psychic force (Domain) +1, patron's gift +1 = **+6** (R5). She buys a die from the GM (**Woe 2**).
  - 3d12 [4, 10, 10] → keep 10 + 10 + 6 = **26, DOUBLES**
- **Ilse:** Endure +2, calm in a crisis +1 = **+3**. She buys a die from the GM (**Woe 3**).
  - 3d12 [12, 1, 5] → keep 12 + 5 + 3 = 20. She spends 1 Tychē to invoke calm in a crisis for +2 (Tychē 2 → 1), making **22**.
- **Result:** Oriel wins by 4, for 2 Power, +1 for a critical (doubles on a success), so 3 Power.
  - **Over-channel:** her Effort for Power gives +2, making **5 Power**, and she takes strained-1.
  - **Costs:** using Effort means Focused Channel doesn't apply, so she pays 1 Pneuma for Effort and 1 for the working (14 → 12). ★ Unleash then costs 3 Pneuma (12 → 9).

#### The Unleash problem

- **Rules as written (R6):** Unleash says each target "receives the full Attack effects you buy." In a Disposition conflict, that means 5 Disposition off **each** of Bram, Wren and Ilse: 15 damage against a side with 11.
- **Result as written:** **Iron Lantern is wiped out in volley 3 of the first exchange.** Ash Road wins with full Disposition and pays no compromise. Even a bare 1-Power success would have taken 3 Disposition off the team; 3 Power would have taken out Wren and Ilse by themselves.
- **Interim patch (to keep testing):** 5 to Ilse (3 → 0, so she's out) and 2 spills over to Bram. Then 1 splash each to Bram and Wren.

| After Exchange 1 | Bram | Wren | Ilse | **A total** | Tin | Juno | Oriel | **B total** |
|---|---|---|---|---|---|---|---|---|
| Disposition | 2 | 2 | 0 (out) | **4 / 11** | 5 | 1 | 3 | **9 / 12** |

Woe 3 · Momentum A 0, B 0.

---

## Exchange 2

Ilse is out, so Iron Lantern has two actors. Under the rotation rule both must act before either acts twice.

### Scripts

| Volley | Iron Lantern | Ash Road |
|---|---|---|
| 1 | Bram — Attack | Juno — Defend |
| 2 | Wren — Feint | Tin — Attack |
| 3 | Bram — Attack | Oriel — Attack |

### Volley 1 — Bram Attack vs Juno Defend (versus)

- **Bram:** **+6**. Blood Fury gives a free die, and Effort buys another for 1 Sōma (15 → 14).
  - 4d12 [11, 11, 12, 7] → keep 12 + 11 + 6 = **29**
- **Juno:** Athletics +2, faster than anything on the Frontier +1 = **+3**. Effort buys a die for 2 Sōma (12 → 10). Cinder's free Help doesn't apply, because it only covers Ride, Frontier or Fight.
  - 3d12 [8, 2, 6] → keep 8 + 6 + 3 = **17**
- **Result:** Bram wins by 12, for **5 Power**.
  - **Juno 1 → 0, out.** The other 4 spill over (R4); Ash Road puts 3 on Tin (5 → 2) and 1 on Oriel (3 → 2).
  - The axe goes through Cinder's guard. Juno is thrown and doesn't get up.

### Volley 2 — Wren Feint vs Tin Attack (Attack rolls independently; the Feint does nothing)

- **Tin:** **+6** with the arm cannon. Combat Mode gives a free die. He rolls against Standard 15.
  - 3d12 [9, 7, 4] → keep 9 + 7 + 6 = **22** vs 15: 7 over, for **3 Power**.
  - **Overclock:** Effort for Power on an implant roll gives +2 for 2 Mētis (11 → 9), making **5 Power**, and he takes glitched-1.
  - **Called Shot:** a free Weaken burns Bram's great-axe tag for the scene.
- **Targets:** Tin picks Bram (R3), 2 → 0. The other 3 spill over to Wren, 2 → 0.
- **Iron Lantern is at 0 Disposition, and the conflict ends.** Wren's Feint was scripted into an Attack, so it did nothing, which is exactly how the matrix is meant to work. The arm cannon puts a round through the axe haft, then sweeps Wren out of the smoke.

Volley 3 is not played.

---

## Outcome

**Ash Road wins** with 4 of 12 Disposition left (Tin 2, Oriel 2).

### Compromise (Core §10.12)

Less than half Disposition left means a **Significant** compromise: the loser gets part of its intent, and the winner takes tier-2 statuses or loses gear.

- **Iron Lantern's partial intent:** they leave the yard on their own feet, with all their gear. Bram's axe tag comes back next scene.
- **Ash Road's statuses:**

| Character | Status | Resist roll | Cost | Result |
|---|---|---|---|---|
| Juno | wounded-2 (Bram's axe) | Sōma, 2d12 [6, 12] → 12 | 0 | −2 tiers, −1 more for Armour 1 → **cleared** |
| Tin | glitched-2, stacked onto glitched-1 from Overclock → glitched-2 | Sōma, 2d12 [1, 12] → 12 | 0 | −2 tiers → **cleared** |
| Oriel | strained-1 (Over-channel) | Pneuma, 2d12 [12, 11] → 12 | 0 | **cleared** |

All three Resist rolls came up 12. Each has a 16% chance, so all three together is about 1 in 250. The compromise turned out free, but only because of the dice; it doesn't show a flaw in the rules.

**Scene end:** Blood Fury ends, and Bram takes the 2 Sōma loss rather than Weary (14 → 12). Momentum decays for both sides (already 0).

### Character State After the Fight

| Character | Sōm / Mēt / Psy / Pne | Tychē | Notes |
|---|---|---|---|
| Bram | 12 / 10 / 6 / 10 | 1 | great-axe tag burned for the scene |
| Wren | 10 / 15 / 9 / 8 | 2 | Ghost made her Effort free |
| Ilse | 9 / 9 / 13 / 11 | 1 | — |
| Tin | 14 / 9 / 9 / 8 | 2 | Combat Mode and Targeting eye spent for the scene |
| Juno | 10 / 14 / 8 / 8 | 2 | Cinder thrown; free Help never used |
| Oriel | 9 / 9 / 10 / 9 | 1 | Unleash spent for the scene |

GM Woe at the end: **3**, all bought by players for bonus dice.

---

## Findings

### Problems the test exposed

1. **★ Unleash breaks Disposition conflicts.** As written it multiplies an Attack's Power by the number of opponents. One roll ended a three-person fight in its first exchange. It needs a conflict-specific line. For example:
   - Unleash Power is **divided** among targets as the caster likes, or
   - each extra target loses **1 Disposition**, which is the patch used here, or
   - Unleash works only against **minion groups**.
2. **Over-channel and Overclock are the strongest buttons on the table.** Each one turns a single use of Effort into +2 Power, and the price is a tier-1 status that a normal Resist (two tiers off) clears at once. Combined with Unleash, Oriel's +2 grew to +6 total damage as written. Possible fixes:
   - make the status tier 2, or
   - make the status impossible to Resist until the scene ends.
3. **Spill-over is undefined, and it decides how fast a fight goes.** With spill-over (R4), two 5-Power hits each took out a whole side. Without it, extra Power would become Momentum (or be lost), and the fight would run about one more exchange. This needs an explicit rule in §10.5.
4. **Called Shot is a free Disarm.** It burns one target tag for the scene on every Shoot roll at no Power cost, while Disarm costs 3 Power (2 with Disarming Master). It should either cost 1 Power in conflicts or work once per scene.
5. **Free bonus dice stack fast.** Tin rolled 4d12 in volley 1 for nothing (Combat Mode plus the Targeting eye), and Bram did the same with Blood Fury plus Gain Position. The +2 cap holds, but scene-long free dice mean an Effort die is rarely needed for the roll itself.
6. **The tag cap is always full.** Every main attacker sat at skill +4 with exactly 2 relevant tags, so +6. In practice the +2 cap works as a flat bonus that combat characters always have.

### Rules gaps (no rule existed)

7. **Fights between two PC teams:** who holds Woe, and whether each side has its own Momentum (R1).
8. **Attack targeting:** in a versus roll, is the target the opposing actor? In an independent roll, can the attacker choose any target (R3)?
9. **Occultist workings inside a Fight conflict:** can Occult replace Fight or Shoot (R5)? The Domain rules suggest yes, but §10.4 lists fixed skills.
10. **Doubles on Disposition rolls:** do they have any effect?
11. **★ abilities taken at creation:** does a ★ ability taken as one of the two extra creation abilities cost 1 Refresh or 2 (R2)?

### Playbook observations

12. **The Frontier Doctor has little to do in a Fight.** Medicine isn't a Fight skill. Defend uses Endure, and her Effort there costs 3 Sōma because she has no Sōma Edge. Neither Field Surgeon nor Anatomy of Monsters came up. A Defend option using Medicine (patching people up mid-fight to restore Disposition) would give her a role.
13. **The Rider barely registers in a Fight.** Ride isn't a Fight-conflict skill, Ride-By needs a mounted Maneuver (which uses Notice or Stealth), and Cinder's free Help covers Ride, Frontier or Fight but not Shoot, Notice or Athletics. Juno never used her mount. This could be fixed by:
    - letting Ride stand in for Maneuver when mounted, or
    - widening Cinder's Help to any mounted roll.
14. **The scripting matrix worked as intended.** Wren's Maneuver beat Tin's Attack, her Impede hurt Juno's very next roll, and her Feint was wasted against an Attack. The rock-paper-scissors decisions mattered.
15. **Pace was on target, apart from Unleash.** Two exchanges and five volleys sits inside the historical "one or two exchanges" goal; current pacing guidance is in Core §10.15.

### Suggested next tests

- Rerun the same teams with no spill-over (excess Power becomes Momentum) to compare pace.
- Rerun with Unleash restricted to minion groups.
- Rerun with Scene Truths (Dusk, Scattered Cover) to test how Truths shift Difficulty in independent rolls.
- Try the same six characters in a Chase and a Siege Until Dawn, where the Rider and Doctor should do more.
