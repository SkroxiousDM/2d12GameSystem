# 2d12 System — Design Proposal (v0.2)

> Working title. 
> Generic, multi-genre, medium crunch.
> Combines: 
> **Fate** (skill pyramid, Fate Points) · 
> **Cypher** (pools, Edge, character sentence) · **Otherscape** (tags, effects) · 
> **Mouse Guard** (conflict system, Beliefs/Instincts/Goals) ·
> **Blades in the Dark** (playbooks, resistance & stress, clocks) ·
> **2d20** (Momentum, Threat, Truths)

### Changes in v0.2

| # | Decision | Where |
|---|---|---|
| 1 | Resolve is split into **Mind** and **Spirit** (four pools) | §3.2, §3.3, §6, §11 |
| 2 | Tag bonus cap is now **+2** per roll | §2.1, §3.4 |
| 3 | **Effort** can also buy **+1 Power** after a success | §2.4 |
| 4 | Full Mouse Guard scripting is used for **every big contest**; conflict types and gear added | §10 |
| 5 | **Fate Point refresh** is reduced by extra or powerful abilities (Fate Core style) | §4.1, §11, §12 |
| 6 | Optional modules drafted: **Cyphers & Artifacts**, **The Grind & Travel**, **Truth-Driven Sandbox** | Modules A–C |

---

## 1. Design Pillars

1. **One roll, many outputs.** A single 2d12 roll tells you whether you succeed, how well (Power), and whether something twists (doubles).
2. **Every currency has one job.** Four resources, each answering a different question:

| Resource | Owner | Job | Borrowed from |
|---|---|---|---|
| **Pools** (Vigor / Finesse / Mind / Spirit) | Each PC | Physical, mental and spiritual cost — Effort and Resistance | Cypher + Blades stress |
| **Fate Points** | Each PC | Narrative authority — invoke tags, accept compels | Fate |
| **Momentum** | The party (shared) | Tactical surplus from strong rolls | 2d20 |
| **Threat** | The GM | Mirror of Momentum — complications and escalation | 2d20 |

3. **Fiction is mechanical.** Tags (on characters and items) and Truths (on scenes and the world) are the only modifiers. No hidden situational math.
4. **Characters are driven, not just capable.** Beliefs, Goals, and Instincts are the primary engine for earning Fate Points and XP.

---

## 2. Core Resolution

### 2.1 The Roll

**Roll 2d12 + Skill + Modifiers vs. Difficulty.**

- **Skill:** +0 to +4 (from the skill pyramid; untrained = +0).
- **Tags:** +1 per relevant **power tag**, **maximum +2 per roll**. −1 per relevant **weakness tag** (no cap).
- **Statuses:** ± the tier of the highest relevant harmful status and the highest relevant helpful status.
- **Truths:** shift Difficulty by steps (§8), not the roll.

Why 2d12 summed: it produces a bell curve (2–24, average 13) — predictable for skilled characters, swingy at the extremes, and big enough that +1 modifiers matter without dominating.

### 2.2 Difficulty Ladder

| Difficulty | Target | Example |
|---|---|---|
| Routine | — | No roll; it happens |
| Easy | 12 | Climb a knotted rope |
| Standard | 15 | Pick a decent lock |
| Hard | 18 | Track someone over bare rock |
| Formidable | 21 | Talk down a warlord in front of his troops |
| Heroic | 24 | Things legends are made of |

### 2.3 Odds Reference

Chance to hit the number needed on the dice (after subtracting your bonuses):

| Need on dice | 2d12 | 3d12 keep 2 | 4d12 keep 2 |
|---|---|---|---|
| 7+ | 90% | 98% | 99% |
| 9+ | 81% | 94% | 98% |
| 11+ | 69% | 88% | 95% |
| 13+ | 54% | 78% | 89% |
| 15+ | 38% | 65% | 80% |
| 17+ | 25% | 48% | 66% |
| 19+ | 15% | 32% | 48% |
| 21+ | 7% | 17% | 28% |

Example: Skill +3 and one tag (+1) vs. Standard 15 → need 11+ → **69%**, or **88%** with one bonus die.

### 2.4 Bonus Dice and Effort

You can add d12s to the roll and **keep the best two**. Maximum **+2 bonus dice** (4d12 keep 2) from any combination of:

| Source | Cost |
|---|---|
| **Effort** (Cypher) | 3 points from the relevant pool, minus that pool's Edge (min 0) |
| **Momentum** (2d20) | 1 for the first die, 2 for the second |
| **Threat** (2d20) | Give the GM 1 Threat per die |
| **Help** | An ally spends 1 point from a pool and risks sharing the consequences |

**Effort (revised).** Each use of Effort costs 3 − Edge from the relevant pool. You may use Effort a number of times per roll equal to your **Effort Level** (1 at start; 2 and 3 are unlocked by advancement). Each use buys one of:

- **+1 bonus die** — declared before rolling.
- **+1 Power** — declared **after** a Success or Success at a Cost (Cypher's "effort on damage"). It cannot turn a failure into a success.

Example: Effort Level 2 lets you buy one bonus die before the roll, then spend again for +1 Power if you succeed.

### 2.5 Outcomes 

|Result | Outcome |
|---|---|
| **Beat the target by 3+ per step** | Success with extra Power |
| **Meet the target** | **Success** — 1 Power |
| **Miss by 1–3** | **Success at a Cost** — 1 Power, but the GM adds a consequence or gains 1 Threat (player's choice of which) |
| **Miss by 4+** | **Failure** — the GM makes a move; GM gains 1 Threat |

**Power** = 1 for meeting the target, +1 for every full 3 points over it. Power is spent on **Effects** (§5). Any Power you don't spend becomes **Momentum** (party pool, max 6).

### 2.6 Doubles (Twists)

If your two **kept** dice show the same number:

- **On a success:** Critical — +1 Power and add a narrative flourish.
- **On a failure or cost:** Complication — the GM gains 2 Threat or introduces a complication right away.
- **Double 12s:** always a success with +2 Power. **Double 1s:** always a complication, even on a success.

Base chance of doubles on 2d12 is about 8% (1 in 12).

---
## 3. Character Creation

### 3.1 The Sentence

> **"I am a [Descriptor]  [Playbook] who [Focus]."**
>
> "I am a **Reckless** **Operator** who **Never Leaves Anyone Behind**."

| Part | Grammar | What it gives you |
|---|---|---|
| **Descriptor** | Adjective | +2 pool points to one pool, 1 power tag, 1 weakness tag, 1 suggested Instinct |
| **Playbook** | Noun | Starting pools and Edge, special abilities, XP trigger, load-out, an anchor skill |
| **Focus** | Verb phrase | A tag theme (2 power tags + 1 weakness), a Tier 1 Focus ability, and a link to another PC |

### 3.2 Pools and Edge

Four pools, each roughly 6–14:

| Pool | Covers | Resists |
|---|---|---|
| **Vigor** | Strength, endurance, toughness | Wounds, poison, exhaustion, cold |
| **Finesse** | Speed, precision, stealth, reflexes | Traps, falls, being caught or grabbed |
| **Mind** | Intellect, perception, memory, cunning | Confusion, illusion, deception, madness from knowledge |
| **Spirit** | Will, presence, faith, emotional core, the supernatural | Fear, despair, possession, corruption, social pressure |

- **Starting values:** the playbook sets the base (totals 36), plus 4 points to distribute and +2 from the Descriptor (42 total).
- **Edge:** the playbook gives **3 points of Edge**, maximum 2 in any one pool at creation. Edge reduces the cost of Effort and Resistance from that pool.
- Pools are spent on **Effort** (§2.4) and **Resistance** (§6). They are your stress tracks.

### 3.3 Skill Pyramid

Ten rated skills from a list of 20:

| Rating | Count |
|---|---|
| +4 Great | 1 |
| +3 Good | 2 |
| +2 Fair | 3 |
| +1 Average | 4 |

The playbook's anchor skill must sit at +3 or +4. The pyramid rule (each tier must have at least as many skills as the tier above it) still applies when you advance.

**Generic skill list by default pool:**

| Vigor | Finesse | Mind | Spirit |
|---|---|---|---|
| Athletics | Shoot | Notice | Will |
| Brawl | Stealth | Investigate | Persuade |
| Fight | Drive/Pilot | Lore | Intimidate |
| Endure | Craft | Tech | Empathy |
| Survival | | Medicine | Arcana* |
| | | Deceive | |

\*Arcana is renamed per setting: Mysticism, Faith, Psionics, Weirdness, or removed entirely in mundane games.

The default pool pays for Effort and Resistance. The GM can allow another pool when the fiction supports it (Intimidate with Vigor = looming; with Spirit = cold menace).

### 3.4 Tags

Characters carry 6–8 **character tags** from Descriptor, Focus, and Playbook:

- **Power tags** (e.g. *ex-navy marksman*, *silver tongue*, *grandfather's revolver*): +1 each when relevant, **max +2 per roll**.
- **Weakness tags** (e.g. *owes the wrong people*, *bad knee*): −1 when relevant, or compel for a Fate Point (§4).
- **Burning a tag:** mark a power tag as burned to gain an automatic +1 Power on a success. It stays unusable until you recover it (a downtime action or a milestone). Burning ignores the +2 cap.

With a +2 cap, a third relevant tag is best used for burning or as Fate Point invoke material.

### 3.5 Beliefs, Instincts, Goals

- **Belief** — a moral stance or conviction. "The law protects the powerful; I protect everyone else."
- **Instinct** — an if/then reflex. "Always check the exits when entering a room." Acting on an Instinct lets you take that action without spending time.
- **Goal** — a concrete objective for this session or mission. "Get Mara out of the precinct before dawn."

Goals are rewritten each session; Beliefs and Instincts can change at milestones.

### 3.6 Starting Resources

- **Fate Points:** start each session with Fate Points equal to your **Refresh** (base 3; see §4.1).
- **Load-out:** chosen during play from the playbook's gear list (Blades-style light/normal/heavy load), not bought in advance.

---

## 4. Fate Points

**Spend 1 Fate Point to:**
- **Invoke** — reroll all dice, or add +2 after rolling. This works with any tag or Truth you can justify, even one belonging to the scene or an enemy. Invokes are not limited by the tag cap.
- **Declare** — establish a minor fact about the scene. The GM may require it to tie to one of your tags.
- **Resist harder** — reduce one Resistance cost to 0 (§6).

**Earn Fate Points by:**
- **Compels** — the GM or another player offers a complication based on a weakness tag, Scar, Belief, or Instinct. Accept → +1 Fate Point. Refuse → pay 1 Fate Point.
- **Playing your Belief against your interests** (Mouse Guard): once per session, take +1 Fate Point when your Belief causes trouble for you.

### 4.1 Refresh

- **Base Refresh is 3.** At the start of each session, your Fate Points reset to your Refresh (if you have more, keep them).
- At creation you get **1 playbook ability and your Tier 1 Focus ability for free**.
- You may take **up to 2 additional playbook abilities at creation, at 1 Refresh each**.
- Abilities marked **★ (Major)** cost **1 Refresh** whenever you take them, including through advancement.
- An **attuned artifact** (Module A) costs 1 Refresh while you keep it.
- **Minimum Refresh is 1.** You can never trade away your last Fate Point.
- The advancement option "+1 Refresh" (§12) lets you buy Refresh back.

Design intent: power comes at the cost of narrative flexibility. A low-Refresh character is mechanically strong but has to accept compels to stay fuelled.

---

## 5. Effects

Each point of Power buys an Effect. Players choose Effects that fit what their character did in the fiction.

| Effect | Cost | What it does |
|---|---|---|
| **Attack** | 1 Power per tier | Inflict a **status** (e.g. *wounded-2*, *rattled-1*, *on fire-3*) |
| **Weaken** | 1 | Reduce one of the target's statuses by 1 tier, or **burn** one of its tags for the scene |
| **Create** | 2 | Create a **story tag** that lasts for the scene (*smoke cover*, *crowd on our side*). One extra Power makes it last until resolved |
| **Enhance** | 1 per tier | Give an ally a helpful status (*inspired-2*) |
| **Restore** | 1 per tier | Reduce a harmful status on yourself or an ally |
| **Discover** | 1 | Ask the GM one question; you get a true, useful answer |
| **Advance** | 1 per segment | Tick a **progress clock** (§7) |
| **Disrupt** | 2 | Cancel or delay an enemy's prepared action, or take 1 point off the GM's Threat |
| **Extra Feat** | 1 | Achieve a second, related goal with the same action |

Any unspent Power → **Momentum**.

### 5.1 Statuses

- Statuses have **tiers 1–6**.
- **Stacking:** a new status of the same kind raises the existing tier by the new tier minus 1 (minimum +1), so small hits accumulate slowly.
- **Tier 6:** the target is **Taken Out** of whatever that status represents (dead, unconscious, captured, convinced, routed).
- Statuses modify rolls by **± their tier** (use only the highest relevant harmful status and the highest relevant helpful status).

---

## 6. Resistance and Stress

When a consequence lands on you (a status, lost gear, a bad position), you may **Resist**:

1. Choose the pool that fits (see §3.2: Vigor for harm, Finesse to dodge, Mind against deception and confusion, Spirit against fear and the supernatural).
2. Roll **2d12** and look at the **highest die**.
3. Pay the cost in pool points, **minus that pool's Edge**:

| Highest die | Cost | Chance |
|---|---|---|
| 12 | 0 (and clear one tier-1 status) | 16% |
| 9–11 | 1 | 40% |
| 5–8 | 2 | 33% |
| 1–4 | 3 | 11% |

4. **Effect:** reduce the incoming status by **2 tiers** (to 0 if that brings it below 1), or turn a severe consequence into a lesser one.

**Running dry (Trauma):** if a pool hits 0, you are **Taken Out** of the current scene or conflict. You recover with that pool at half its maximum and gain a permanent **Scar** — a weakness tag flavoured by the pool:

| Pool | Example Scars |
|---|---|
| Vigor | *bad lungs*, *old wound*, *shaking hands* |
| Finesse | *flinches*, *hesitant*, *jumpy* |
| Mind | *paranoid*, *obsessed*, *fractured memory* |
| Spirit | *haunted*, *hollow*, *marked by the Other* |

Scars can be compelled for Fate Points. Your fourth Scar retires the character.

**Rest and Recovery**

There's no separate "short rest" / "full rest" split. Instead, resting escalates through the day — the longer you take, the more you recover:

| Rest \# (per day) | Time required | Recovery die |
| :-- | :-- | :-- |
| 1st | A few seconds; 1 action if taken mid-encounter | 1d6 |
| 2nd | 10 minutes | 1d8 |
| 3rd | 1 hour | 1d10 |
| 4th | 10 hours (usually overnight) | Restore all four pools to full |

- Roll the listed die and **divide the result among Sōma, Akmē, Psychē, and Pneuma however you like** — it doesn't have to go to whichever pool was drained most recently.
- **Edge does not affect this roll.** Edge only reduces Effort and Resistance cost (§2.4, §6); recovery stays flat so it can't stack with Edge's other benefits.
- After the 4th rest, the cycle resets — your next rest that day (or the start of a new day) is a 1d6 again.
- Each PC rests and rolls independently. If two of five party members stop for 10 minutes to recover, the other three don't have to stop or roll.
- **Trauma recovery is separate.** Hitting 0 in a pool (§6, running dry) still recovers at half max plus a permanent Scar — that's not a normal recovery roll.

**Advance option — Hardened** *(6 XP, one-time)*Your recovery die steps up one size at every stage, permanently: 1d6→1d8, 1d8→1d10, 1d10→1d12. The 4th rest of the day remains a full restore. This is a flat, single bump — it does not scale further and doesn't interact with Edge, Effort Level, or pool growth from other Advances.

-----


## 7. Progress Clocks

- **Sizes:** 4 (simple), 6 (complex), 8 (daunting), 12 (epic).
- **Player clocks** tick with the **Advance** effect (1 Power = 1 segment).
- **Danger clocks** tick when the GM spends Threat (1 Threat = 1 segment) or on failures.
- **Racing clocks:** two clocks run together (e.g. *Crack the vault 8* vs. *Guards arrive 6*).
- **Linked clocks:** filling one opens or unlocks another.
- **Downtime projects** use 8- or 12-segment clocks.

---

## 8. Truths (2d20)

**Truths** are tags that describe the scene, location, faction, or campaign.

- **Scene Truths:** *Pitch Dark*, *Knee-Deep Water*, *Hostile Crowd*. Each relevant Truth raises or lowers Difficulty by one step (±3), makes an action impossible or possible, or can be invoked with a Fate Point.
- **Campaign Truths:** 3–5 world statements agreed at session zero (*Magic is real but feared*, *The Corporation owns the police*).
- **Creating Truths:** players use the **Create** effect or spend **2 Momentum**; the GM spends **2 Threat**.
- **Removing Truths:** use the Weaken or Create effect as a counter ("I kill the lights" removes *Brightly Lit*), at GM discretion.

See **Module C** for using Truths to drive a sandbox campaign.

---

## 9. Momentum and Threat (2d20)

### 9.1 Momentum (shared by the party, max 6)

**Gain:** unspent Power from rolls. **Decay:** lose 1 Momentum at the end of each scene.

| Spend | Cost |
|---|---|
| Add a bonus die | 1 (first) / 2 (second) |
| +1 Power on a success | 2 |
| Ask the GM a question (Discover) | 1 |
| Create a Truth | 2 |
| Seize the initiative / change your scripted action in a conflict | 2 |
| Reduce Threat by 1 | 2 |

### 9.2 Threat (the GM's pool)

**Starting Threat:** 2 per PC at the start of a session.
**GM gains Threat from:** players buying dice with Threat, Success at a Cost (if chosen), failures (+1), complications from doubles (+2), refused compels, and dangerous scene Truths (+1 per scene).

| GM spend | Cost |
|---|---|
| Complication or minor twist | 1 |
| Tick a danger clock | 1 per segment |
| NPC bonus die | 1 per die |
| Activate an NPC/monster special ability | 1–3 |
| Create a Truth | 2 |
| Reinforcements | 1 per minion, 3 for a significant NPC |
| Interrupt in a conflict (change an NPC's scripted action) | 3 |

---

## 10. Conflict System

**Every big contest uses full scripting.** Small obstacles are handled with a single roll; anything that meets the conflict test below becomes a scripted conflict.

### 10.1 When It's a Conflict

Use a conflict when **any two** of these are true:
- Both sides have a clear **intent** that excludes the other's.
- The opposition is a **named NPC, a group, or a significant force** (not a single guard or a locked door).
- The outcome would **change the story** (a relationship, a location, a faction, someone's life).
- A single roll would feel **anticlimactic** to the table.

### 10.2 Setup

1. **Declare intent:** each side states what it wants if it wins.
2. **Choose the conflict type** (§10.3), which sets the skill for each action.
3. **Disposition:** the leader of each side rolls **2d12 + the type's Disposition skill + the highest Edge in that skill's pool**, halves the result (round up), and adds +1 per helper. That is the side's **Disposition** (usually 7–12), divided among team members as the side chooses.
4. **Track** Disposition as a number or a clock.

### 10.3 Conflict Types

| Type | Disposition | Attack | Defend | Feint | Maneuver |
|---|---|---|---|---|---|
| **Fight** | Fight or Brawl | Fight / Brawl / Shoot | Athletics / Endure | Deceive | Notice / Stealth |
| **Chase** | Athletics or Drive/Pilot | Athletics / Drive | Athletics / Drive | Stealth | Notice / Survival |
| **Argument** | Persuade | Persuade | Will | Deceive | Empathy |
| **Negotiation** | Persuade | Persuade | Empathy | Deceive | Investigate |
| **Infiltration** | Stealth | Stealth / Tech | Deceive | Craft | Investigate |
| **Battle** (armies) | Lore (tactics) | Fight | Endure | Deceive | Lore |
| **Spirit Duel** | Arcana | Arcana | Will | Deceive | Lore |
| **Hack / Netwar** | Tech | Tech | Tech | Deceive | Investigate |
| **Survive the Wild** | Survival | Survival | Endure | — | Notice |

Settings can add types; each type needs one skill per action and a Disposition skill. A dash (—) means that action isn't available in that type.

### 10.4 Scripting and Volleys

Each **exchange** is three **volleys**. Each side secretly **scripts** three actions in order, then they are revealed one volley at a time.

- **Rotation:** every team member must act once in an exchange before anyone acts twice (Mouse Guard rule).
- **Changing your script:** spend 2 Momentum (players) or 3 Threat (GM) to swap one unrevealed action.

| | Attack | Defend | Feint | Maneuver |
|---|---|---|---|---|
| **Attack** | Both roll independently | Versus | Attack independent; Feint does nothing | Versus |
| **Defend** | Versus | Both roll independently | Feint independent; Defend does nothing | Versus |
| **Feint** | Attack independent; Feint does nothing | Feint independent; Defend does nothing | Versus | Versus |
| **Maneuver** | Versus | Versus | Versus | Both roll independently |

- **Independent:** roll against Standard 15 (adjusted by Truths and the opposition's tags).
- **Versus:** both sides roll; the higher total wins, and the margin over the loser's total decides Power (meet = 1, +1 per full 3).

### 10.5 Actions and Effects

| Action | Default effect of Power |
|---|---|
| **Attack** | Each Power removes 1 Disposition from the opponent |
| **Defend** | Each Power restores 1 Disposition (up to the starting value) |
| **Feint** | Each Power removes 1 Disposition; the Feint ignores Defend |
| **Maneuver** | Spend Power on: **Impede** (1: opponent −3 on next roll), **Gain Position** (1: +1 bonus die on next roll), **Disarm** (3: remove an action type or burn a key tag for the rest of the conflict), or **Create a Truth** (2) |

Effort (including Effort for +1 Power), Momentum, Threat, Fate Points, tags, and Truths all work normally. A PC who hits 0 Disposition is out of the conflict but not necessarily harmed; harm comes from compromise.

### 10.6 Conflict Gear

Gear in conflicts is written as an **action tag** that only applies to the listed action(s). It counts toward the +2 tag cap.

| Example gear | Tag |
|---|---|
| Sword, knife | +1 Attack |
| Shield, cover | +1 Defend |
| Spear, polearm, rifle with scope | +1 Maneuver |
| Smoke grenade, false papers | +1 Feint |
| Damning evidence (Argument) | +1 Attack |
| Signed treaty draft (Negotiation) | +1 Maneuver |

### 10.7 Compromise

When one side hits 0 Disposition, the conflict ends. The winner gets their intent but **pays a compromise** based on how much Disposition they have left:

| Winner's Disposition left | Compromise |
|---|---|
| Full or nearly full | None or trivial |
| More than half | Minor — loser gets a small concession; winner takes a tier-1 status |
| Less than half | Significant — loser gets part of its intent; winner takes tier-2 statuses or loses gear |
| 1–2 points | Major — near pyrrhic victory; heavy statuses, a lost ally, or a new danger clock |

Players may **Resist** compromise statuses as usual (§6).

### 10.8 Keeping It Fast

- Disposition of 7–12 should resolve in one or two exchanges.
- NPC sides script on index cards; minions act as a single group with one script.
- Table guideline: about 15–20 minutes per conflict.

---

## 11. Playbooks

> **Full playbooks** (eight abilities, capstone, and Fantasy/Modern/Sci-Fi equipment for each), load rules, and sample Focuses are in **playbooks.md**. The version there replaces the example abilities in §11.2.

Each playbook is a one-page sheet with:

- **Base pools and Edge**
- **Anchor skill** (must be +3 or +4)
- **Special abilities:** 1 free at start (6–8 options); more cost Refresh at creation or come from advancement. Major abilities are marked ★.
- **XP trigger:** one playbook-specific behaviour that earns XP
- **Load-out list:** playbook items plus generic items, Blades-style light/normal/heavy load
- **Relationship prompts:** 1 ally and 1 rival

### 11.1 Generic Core Playbooks

| Playbook | Anchor | Base pools (V/F/M/S) | XP trigger | Concept |
|---|---|---|---|---|
| **Bruiser** | Fight or Brawl | 12/10/6/8 | Address a challenge with force or threats | Front-line muscle |
| **Operator** | Stealth | 8/12/8/8 | Address a challenge with stealth or precision | Infiltrator, scout, thief |
| **Sage** | Lore or Investigate | 7/8/13/8 | Address a challenge with knowledge or insight | Scholar, detective, scientist |
| **Face** | Persuade | 7/9/9/11 | Address a challenge with charm, lies, or bargaining | Diplomat, con artist, leader |
| **Wayfarer** | Survival | 11/11/7/7 | Address a challenge with endurance or the land | Ranger, pilot, explorer |
| **Adept** | Arcana or Tech | 7/8/9/12 | Address a challenge with your powers or gadgets | Mage, psychic, hacker |

Settings rename and reskin playbooks (Adept becomes "Hedge Witch" in fantasy, "Netrunner" in cyberpunk) but keep the structure.

### 11.2 Example Abilities (Operator)

> **Ghost.** When you spend Effort on a Stealth roll, your first use of Effort costs 0 pool points. Once per scene, when spotted, you may spend 1 Momentum to declare you were never seen; you're in a nearby hidden position.

> **★ Shadow Step.** Once per scene, move from one shadow to another you can see as if you had walked there unseen. No roll needed unless the destination is guarded. *(Major: costs 1 Refresh.)*

---

## 12. Advancement

### 12.1 Earning XP (end of session)

1 XP per "yes" unless noted:

- Did you hit your **playbook XP trigger**? (1, or 2 if it happened in a desperate scene)
- Did you **accomplish your Goal**? (+2)
- Did your **Belief** drive a meaningful decision?
- Did your **Instinct** get you into trouble or save the day?
- Did you face consequences from a **weakness tag or Scar**?

**MVP vote:** the table votes on one standout moment each session; that player gets +1 Fate Point at the next session (above Refresh).

### 12.2 Spending XP (every 6 XP = 1 Advance)

- +1 to a skill (following the pyramid rule)
- +3 to one pool, or +1 Edge (max 3 Edge per pool)
- A new playbook special ability (★ abilities also cost 1 Refresh)
- A new power tag, or rewrite a weakness tag into a power tag
- **+1 Refresh** (buys back Refresh spent on abilities or artifacts; max base 3 + 1 per 3 Advances)
- A Focus ability from the next tier (requires 3 Advances per tier)
- **+1 Effort Level** (to Level 2 after 3 Advances; Level 3 after 9 Advances)

---

## 13. Example of Play

**Kade**, a *Reckless Operator who Never Leaves Anyone Behind* (Finesse Edge 1, Effort Level 2), is creeping through a warehouse to free a captured friend. Scene Truths: *Dim Lighting*, *Patrolling Guards*.

- **Roll:** Stealth +3, power tag *quiet boots* +1, power tag *knows this district* +1 (tags capped at +2). The GM sets Hard 18 but *Dim Lighting* lowers it to Standard 15. Kade needs 10+ on the dice.
- **Effort, part 1:** Kade spends 3 − 1 Edge = 2 Finesse for a bonus die → 3d12 keep 2.
- **Result:** dice show 9, 9, 4 → keep 9 + 9 = 18, +5 = 23. That's 8 over → **3 Power**, plus **doubles on a success → +1 = 4 Power**.
- **Effort, part 2:** Kade spends another 2 Finesse for **+1 Power → 5 Power**.
- **Spend:** Advance the *Reach the Cell* clock by 3 (3 Power), Discover (1 Power): "Where is the key?" — "On the sergeant's belt." 1 Power left → **+1 Momentum**.
- **Later:** the sergeant's dread patron, a bound spirit, lashes out with *terror-3*. Kade Resists with **Spirit** (Edge 0): highest die 7 → cost 2 Spirit. The status drops to *terror-1*.
- **Compel:** the GM compels *Reckless*: "You can't wait for backup; you go in now." Kade accepts and gains +1 Fate Point.

---

## 14. Design Notes — What Was Kept, Changed, Cut

| Source | Kept | Changed | Cut |
|---|---|---|---|
| **Fate** | Skill pyramid, Fate Points, invoke/compel, Refresh as cost of power | Aspects are replaced by tags and Truths | Fudge dice, stress boxes |
| **Cypher** | Pools, Edge, the sentence, Effort on rolls and on Power, cyphers and artifacts (Module A) | Four pools instead of three; Effort buys bonus dice instead of lowering difficulty | d20 task levels, GM intrusions (replaced by compels and Threat) |
| **:Otherscape** | Power/weakness tags, statuses with tiers, effects, burning tags | Power comes from roll margin; tag cap +2 | Themebooks, Improve/Abandon tracks |
| **Mouse Guard** | Full conflict scripting, Disposition, compromise, BIG, weapons as action bonuses, the Grind (Module B) | Disposition from 2d12; actions spend Power | Nature, Persona |
| **Blades** | Playbooks, resistance, stress-as-currency, clocks, load-out | Stress tracks are the four pools | Action dice pools, Position/Effect grid, crew sheets |
| **2d20** | Momentum, Threat, Truths, sandbox Truth tools (Module C) | Momentum from unspent Power; Truths shift Difficulty | d20 roll-under, complication range |

### 14.1 Known Risks

- **Currency load:** pools + Fate + Momentum + Threat is the upper limit for medium crunch. Keep spend menus short on the sheet.
- **Modifier range (revised):** max is skill +4, tags +2, helpful status up to +6, Fate invoke +2. Statuses are now the largest swing. Playtest a ±3 status cap.
- **Effort for Power** may make high-Edge characters very efficient. Watch Edge-3 pools where Effort is free; consider a minimum cost of 1.
- **Four pools** means more pool points to track. The sheet should put all four in one row with Edge beside each.
- **Conflict length:** with scripting used for every big contest, the conflict test (§10.1) is what stops overuse.

---

# Optional Modules

---

## Module A — Cyphers & Artifacts (Cypher)

Cyphers are frequent, disposable power-ups that encourage players to use them rather than hoard them. Artifacts are rare, reusable items that may run out.

### A.1 Cyphers

- **What they are:** one-use items or effects — potions, grenades, scrolls, nanite injectors, blessed relics, strange tech. Each has a **tier (1–6)**.
- **Using one:** an action, usually with **no roll**. The cypher generates **Power equal to its tier**, spent only on the Effects listed on the cypher. Some create a Truth or a story tag instead.
- **Cypher Limit:** each PC can carry **2** cyphers (some playbooks or Focuses grant 3).
- **Over the limit:** at the end of each scene, the GM gains 1 Threat per extra cypher and may trigger a **Volatile** result (roll d12: 1–4 one cypher fires randomly; 5–8 one cypher is ruined; 9–12 nothing happens yet).
- **Subtle cyphers** (setting option): instead of physical objects, cyphers are luck, insights, or favours ("a contact owes you", "a flash of insight"). They work the same way and fit low-magic or modern games.
- **GM pacing:** give out 1–2 cyphers per PC per session. They should feel like loot that gets spent.

**Cypher format:**

> **Flashbang** (Tier 3) — *Effects:* Attack (dazed), Weaken. *Form:* palm-sized canister.
> **Draught of Iron Skin** (Tier 2) — *Effects:* Enhance (armoured), Restore. Lasts one scene.

**Sample cypher table (d12):**

| d12 | Cypher | Tier | Effects |
|---|---|---|---|
| 1 | Healing salve / med-gel | 2 | Restore |
| 2 | Smoke charge | 2 | Create (*smoke cover*) |
| 3 | Flashbang / thunderstone | 3 | Attack (dazed), Weaken |
| 4 | Truth serum / mind-read charm | 2 | Discover ×2 |
| 5 | Adrenal shot | 3 | Enhance (surging), restore 3 Vigor |
| 6 | Lockbreaker | 3 | Advance (any lock or security clock) |
| 7 | Ward token | 3 | Negate one incoming status of tier 3 or less |
| 8 | Phase key | 4 | Create Truth (*passage through the wall*) for one scene |
| 9 | Courage draught | 2 | Restore (fear), restore 2 Spirit |
| 10 | Seeker | 2 | Discover (location of one person or object) |
| 11 | Firebomb | 4 | Attack (on fire), Create (*burning*) |
| 12 | Wild card | d6 | Player names a reasonable Effect; GM sets the form |

### A.2 Artifacts

- **What they are:** reusable items of real power — a flaming sword, a psychic amplifier, a starship's AI core.
- **Tags:** an artifact has 1–2 power tags (counting toward the +2 cap) and usually a special ability.
- **Depletion:** each artifact has a depletion rating, e.g. **1 in d12**. After each use, roll d12; on that number or lower, it is **depleted** (broken, drained, or needs a downtime clock to restore).
- **Attunement:** powerful artifacts (marked ★) must be attuned and **cost 1 Refresh** while attuned (§4.1). A PC can attune to a maximum of 2 artifacts.
- **Artifact quirks:** each artifact has a weakness tag that can be compelled for Fate Points (*thirsts for blood*, *talks too much*, *draws the Hunters*).

**Artifact format:**

> **★ Ember-Brand** (longsword) — *Tags:* blade of living flame, +1 Attack (conflict gear). *Ability:* spend 1 Power to add *burning* to any status you inflict. *Depletion:* 1 in d12 (goes cold until bathed in a forge). *Quirk:* *cannot be hidden*.

---

## Module B — The Grind & Travel (Mouse Guard)

The Grind turns time, distance, and hardship into slow, steady pressure. It pairs with Mouse Guard's GM's Turn / Players' Turn structure.

### B.1 Session Structure

| Phase | What happens |
|---|---|
| **GM's Turn** | The mission. The GM presents obstacles; every roll counts as a **turn** on the Grind clock. |
| **Players' Turn** | Downtime after the mission. Players spend **Checks** to take actions: recover, research, craft, pursue Goals. |

### B.2 The Grind Clock

- During the GM's Turn, the GM keeps a **Grind clock** visible to the table.
- **Each roll** (including conflict actions as a group = 1 tick per exchange) ticks it by 1.
- **Size by hostility:** 4 (harsh: desert, deep winter, the underworld), 6 (normal wilderness or dangerous city), 8 (gentle or well-supplied).
- **When it fills:** every PC gains the next **Grind condition** they don't have yet, then the clock resets. The GM may also spend 2 Threat to tick it.

### B.3 Grind Conditions (taken in order)

| Order | Condition | Effect | Cleared by |
|---|---|---|---|
| 1 | **Hungry & Thirsty** | Short rests restore nothing | A meal, a Survival roll (Restore) |
| 2 | **Weary** | Effort costs +1 | A full night's rest |
| 3 | **Exposed** (cold, heat, wet) | −1 Vigor Edge | Shelter and a recovery roll |
| 4 | **Shaken** | −1 Spirit Edge; Fear statuses +1 tier | A Will or Empathy recovery roll, or a Belief moment |
| 5 | **Sick** | −1 to all rolls; can't recover pools | Medicine roll (Hard) + rest |
| 6 | **Broken** | Taken Out of the mission; gain a Scar | Players' Turn only |

Grind conditions are statuses for Restore, but **they don't stack** — each is a separate condition.

### B.4 Checks (Players' Turn)

- **Earn Checks** during the GM's Turn by **applying one of your weakness tags or Scars to your own roll** (−1). You earn 1 Check, or 2 if the penalty makes the roll fail.
- **Everyone gets 1 free Check** in the Players' Turn.
- **Spend 1 Check** for one Players' Turn action: a recovery roll against a Grind condition or status, a downtime clock roll, a research or crafting roll, restoring a burned tag, attuning an artifact, or a scene that pursues your Goal.
- **Sharing:** you can give a Check to another PC whose scene you take part in.

This makes weaknesses a deliberate resource: hurt yourself now to earn recovery and downtime later.

### B.5 Travel

A journey is a **Journey clock** (6 for a short trip, 8 for a hard trip, 12 for an expedition). Each **leg** (a day or a stage), the party assigns **roles**; each role makes one roll:

| Role | Skill | On success, spend Power on |
|---|---|---|
| **Guide** | Survival or Drive/Pilot | **Make Time** — Advance the Journey clock |
| **Scout** | Notice or Stealth | **Spot Trouble** — Discover, or cancel one encounter the GM has prepared |
| **Quartermaster** | Survival or Craft | **Forage / Ration** — clear Hungry for the party, or +1 Supplies |
| **Lookout** | Notice or Will | **Keep Watch** — the party isn't surprised; Restore Shaken |

- **Supplies:** the party has **Supplies** as a status (start at 3–6). Lose 1 per leg. At 0, everyone becomes Hungry & Thirsty automatically and the Grind clock size drops by 2.
- **Terrain and weather** are Truths that set Difficulty (*Muskeg*, *Whiteout*, *Rapids*, *Washed-out Road*).
- **Encounters:** the GM spends Threat (1 for a minor encounter, 3 for a major one), or uses the Scout's failed roll.
- **Portages and hard stretches:** a special leg (Endure or Athletics roll for every PC); failure ticks the Grind clock twice.

---

## Module C — Truth-Driven Sandbox (2d20)

Truths become the backbone of an open-world campaign: regions, sites, and factions are defined by Truths that players can discover, exploit, and change.

### C.1 Truth Layers

| Layer | Example | Lifespan |
|---|---|---|
| **Campaign** | *The old empire's roads still hold its magic* | Changes only through major arcs |
| **Region** | *Lawless borderland*, *Endless rain* | Changes through faction clocks |
| **Site** | *Flooded lower levels*, *Ghosts guard the vault* | Changes when PCs act on them |
| **Scene** | *Pitch Dark*, *Hostile Crowd* | One scene |

### C.2 Site Sheets

Each location gets a short sheet:

- **3 Truths** (at least one hidden)
- **A Threat seed:** 1–3 Threat the GM adds when the party arrives
- **A danger clock** (what happens if the party lingers)
- **A secret** (something worth discovering)
- **Rumours** (see C.4)

### C.3 Truth Generator Tables (d12)

Roll once per column or pick.

| d12 | Terrain / Feature | Atmosphere | Hazard | Secret |
|---|---|---|---|---|
| 1 | Ruined fortification | Eerie silence | Unstable ground | Hidden passage |
| 2 | Dense forest | Constant rain | Disease | A traitor among allies |
| 3 | Flooded lowland | Oppressive heat | Predators | Buried treasure |
| 4 | Market town | Festival crowds | Watchful authorities | A forgotten god sleeps here |
| 5 | Mountain pass | Biting wind | Rockfall | Smuggling route |
| 6 | Abandoned facility | Flickering lights | Toxic air | Experiment gone wrong |
| 7 | River crossing | Thick fog | Rapids | Drowned village below |
| 8 | Sacred grove | Watched by unseen eyes | Spirit anger | A pact with the old powers |
| 9 | Frontier camp | Desperation | Bandits | Someone is not who they claim |
| 10 | Underground ways | Echoes | Collapse | Lost civilisation |
| 11 | Noble estate | Hollow luxury | Political danger | Blackmail ledger |
| 12 | Wasteland | Unnatural stillness | Exposure | Gateway to elsewhere |

### C.4 Rumours

A **rumour** is an unconfirmed Truth. When players confirm it (Discover, investigation, or arriving), the GM rolls d12:

| d12 | Result |
|---|---|
| 1–4 | **False** — and someone benefits from spreading it |
| 5–8 | **Twisted** — partly true, with a dangerous difference |
| 9–12 | **True** — becomes a Truth |

### C.5 Faction Turns

Between sessions (or each in-world week), the GM takes a **World Turn**:

1. Each active faction rolls **2d12 + its rating (+1 to +4)** vs. Standard 15 for its current project.
2. Power ticks the faction's **project clock** (6 or 8 segments).
3. When a clock fills, the faction **creates, removes, or changes a Region or Campaign Truth** (e.g. *The Guild controls the river* replaces *The river is free*).
4. PCs who hear about it can respond; PC actions can tick faction clocks forward or back using Advance.

### C.6 Player Influence on Truths

- **Discover** effects and Momentum spends reveal hidden Truths.
- **Create** effects and 2 Momentum create Scene Truths; bigger changes need a progress clock (8 segments for a Site Truth, 12 for a Region Truth).
- Major arcs can rewrite Campaign Truths. These are the "legacy" moments of the campaign.
