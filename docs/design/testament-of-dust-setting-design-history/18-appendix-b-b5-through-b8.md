<!-- SETTING-SNAPSHOT-NAV-BEGIN -->
> **Status: Historical design snapshot — superseded in part. Not a current rules or canon authority.**
>
> This document preserves the setting-design checkpoint recorded as
> version 0.15, dated 16 October 2026. Its [CANON], [APPLIED], [PROPOSED]
> and [OPEN] labels describe decisions and implementation status at
> that checkpoint; they do not establish their current status.
>
> Source paths, replacement instructions, reproduced mechanics and
> references to “current” rules below are historical. In particular,
> the combined-master structure and reproduced recovery, Attack,
> killing-strike, Bled, Sun-Sick and Woe-spend procedures must not be
> copied into current source without checking subsequent decisions.
>
> For current rules, consult the active split-book Typst sources:
> `docs/2d12System/the-2d12-system-v2-core-rulebook.typ` and
> `docs/TestamentOfDust/testament-of-dust-v2-setting-book.typ`,
> together with their included chapters and fragments.
> Subsequent Phase 1 rulings and implementation status are recorded in
> `docs/design/rules-audit-phase1-decisions.md` and
> `docs/design/rules-audit-phase1-implementation.md`.
>
> The original text below is preserved as history. This classification
> does not independently adopt, revoke or resolve any individual lore
> decision, proposed mechanic or open question. It does not establish
> current-source clearance, build verification or playtest validation.

Designer/GM historical reference. Not a current rules or canon authority. A player-facing label within the preserved text does not make this whole file a player handout.

[Snapshot index](../testament-of-dust-setting-design-document.md) · [Original context](00-context-and-original-contents.md)

<!-- SETTING-SNAPSHOT-NAV-END -->
<!-- SETTING-SNAPSHOT-BODY-BEGIN -->
### B.5 Vampires

#### B.5.1 Threat Ranks **[CANON — Q34]**

Rank measures how dangerous a vampire is **now** — resources, supply, allies, and access to old works — **not** age. A Remembered vampire can be any rank; a vampire made last decade can be Paramount.

| Rank | Examples | Conflict Disposition bonus | Starting Woe when introduced |
|---|---|---|---|
| **Minor** | A starving fugitive; a household's newest; a vampire kept as a prisoner | +0 | 1 |
| **Established** | Head of a small household; a physician with a private clinic | +2 | 3 |
| **Great** | Head of a great house; a vampire whose bloodline opens a town's treatment works | +4 | 5 |
| **Paramount** | A founder whose bloodline controls a region | +6 | 8 (and a danger clock that can end the campaign) |

#### B.5.2 Hard to Kill (replaces Undying)

**Rules text**

Vampires survive wounds that would kill anyone else.

- A vampire's physical statuses **can't go above tier 5** unless the Attack uses a **killing method** (§8.1). At tier 5 the vampire is *broken*: it can still act, but at −2 on physical rolls.
- **Recovery needs blood.** A broken or wounded vampire that rests a full day **and** takes at least half a litre of blood recovers all physical statuses. Without blood, it recovers only 1 tier per day.
- **Wounds make it hungry.** Each time a vampire is *broken*, tick its **Blood Debt clock** (§5.4) by 1.
- In a scripted conflict, reducing a vampire's Disposition to 0 achieves the winning side's intent. If the intent is "destroy it," one PC must also make a **killing strike**: one roll vs. Hard 18 using a killing method. On a failure, the vampire escapes or recovers, and the compromise is at least Significant.

#### B.5.3 Vampire Traits

Each vampire has **3–5 power tags** and **at least 1 weakness tag**. Players can learn them with **Discover**.

- *Power examples:* *the old hospital opens for me*, *a hundred donors*, *remembers the founding*, *faster than you can see*, *the Assembly owes me*, *sees perfectly in the dark*.
- *Weakness examples:* *starving*, *the doors don't know me*, *obsessed with the past*, *proud beyond reason*, *my supply runs through one man*, *believes the old stories* (see §8.1).

**Pride (unchanged mechanics):** once per scene, a PC may compel a vampire's pride (spend 1 Tychē Point or 1 Momentum): it accepts a duel, gives a warning before striking, or lets an insult distract it. The GM gains 1 Woe.

#### B.5.4 Blood Debt clock (GM tool)

Every vampire NPC has a **Blood Debt clock of 6**, one segment per week since its last adequate feeding (half a litre).

| Segments | Visible to players as |
|---|---|
| 0–1 | Nothing |
| 2–3 | Pallor, irritability, unusual interest in blood (Notice, Empathy) |
| 4 | Pain, slowness, enhancements failing: −1 on all its rolls; it takes risks to feed |
| 5 | Desperate: −2 on all its rolls; survival impulses intrude (it may break its own rules) |
| 6 | **Husk:** the vampire dries out and goes dormant (§5.5) |

- Being *broken* ticks the clock (§5.2). A full feeding clears it. A partial feeding (less than half a litre) stops it from ticking that week but doesn't clear it.
- **Animal blood** counts for half: a litre of animal blood does what half a litre of human blood does (Q28).

**GM notes:** the clock models canon blood debt (§5.4 of the design document). The amount needed to clear segment *n* follows the doubling schedule — narrate it; don't show players the numbers.

#### B.5.5 Husks

**Rules text**

> Sometimes a starved vampire is found dried, light, and rigid — like a corpse a century dead. Stories say such bodies can wake. Stories also say they burn like kindling.

- A husk is **unconscious and helpless**. Any killing strike succeeds automatically; **fire destroys it at once**.
- Waking one takes about three people's worth of blood, absorbed over hours to days. It wakes at Blood Debt 5.

### B.6 The Bled (replaces the Kiss)

**Rules text**

When a vampire feeds on someone — or anyone loses a great deal of blood — the victim gains the harmful status ***Bled***.

| Bled tier | Effect |
|---|---|
| **1** | A donation's worth. Pale and tired. No roll penalty; clears after a night's rest with food and water |
| **2** | Light-headed: −1 on Sōma and Akmē rolls |
| **3** | Weak: −2 on Sōma and Akmē rolls; gain *Weary* |
| **4** | Critical: the next harm of any kind Takes you Out. Needs a Medicine roll to stabilise |
| **5** | Dying: Taken Out. Dies at the end of the scene unless stabilised (Medicine vs. Hard 18) or given a transfusion |
| **6** | **Drained.** Dead — unless someone has both the reason and the means to make you one of them |

- **Gaining tiers:** a measured feeding inflicts Bled-1. A hard feeding is an Attack (+2 or more). Stacking rules apply.
- **Resisting:** Resist with **Sōma** when the blood is taken.
- **Recovery:** 1 tier per full day of rest with food and water.
- **Transfusion:** with a willing donor and equipment, a Medicine roll vs. Standard 15 lowers Bled by 1 tier per Power. The donor gains Bled-1.
- **Frontier law:** where optional Truth 8 is in play, anyone known to be bled is examined, confined, or exiled. Hiding the marks is a common compel.
- A PC who reaches **Drained** and is made a vampire leaves player control (no vampire PCs).

**GM notes:** the Bled table never mentions turning, and player text should never promise either way. Conversion is only ever a deliberate procedure on a Drained victim (§5.7 of the design document). Many NPCs believe bites turn people; let them.

### B.7 Afflicted Blood: Sunlight Syndrome and the Thirst

Use **Appendix A.3** (now canon) for dhampirs. Add vampire NPC sun rules:

#### B.7.1 Sunlight Syndrome — vampires

| Condition | Sun-Sick gained |
|---|---|
| Direct sun, per scene | +2 (dhampirs +1) |
| *Merciless Sun* | +3 (dhampirs +2) |
| Heavy overcast | +1 (dhampirs +0) |
| *Sunlit* room or *False Dawn* (§13), per exchange | +1 |

- Resist with **Sōma**; cloaks and wide hats give +1 Sōma Edge (unchanged).
- While a vampire is Sun-Sick at tier 1+, it **can't recover** physical statuses (§5.2).
- At tier 4+, the vampire also gains *burning-1* each scene in the sun.
- At tier 6 the vampire collapses. **[CANON — Q33]** A collapsed vampire left in direct sun for a full day is destroyed.

### B.8 How the Afflicted Die, and Hunter's Gear (replaces Banes)

#### B.8.1 Killing methods and folklore

**Rules text**

A **killing method** is a tag that lets an Attack take a vampire to tier 6: *destroyed*.

| Method | Effect | Notes |
|---|---|---|
| **Beheading** | Killing method | The one sure way. The blade must cut through (a heavy or fine blade, or a dhampir's strength) |
| **Fire** (sustained) | Killing method against a vampire at physical tier 4+; destroys a husk at once | A burning house, a pyre |
| **Sunlight** | No killing strike, but stops recovery and burns over time (§7.1) | A collapsed vampire left in direct sun for a full day is destroyed |
| **Stake through the heart** | Not a killing method. Inflicts *staked*: the vampire can't act or recover while the stake stays in | Finish it with beheading or fire — or bargain with it while it's helpless |
| **Silver** | Not a killing method. Wounds from *silvered* weapons can't be recovered until the next full day | An old custom; no one remembers why it works |
| **Crosses, garlic, running water, invitations** | No physical effect | Folk practice. Some vampires believe them anyway (below) |

**Believers:** a vampire may carry the weakness tag *believes the old stories* (or a specific one: *won't cross running water*, *can't bear the cross*). For that vampire, the folk remedy imposes its Truth as a **compel**, not a law of nature: the vampire must accept the compel (GM gains 1 Woe) or pay to defy it (spend 1 Woe).

**Upgrading weaknesses (unchanged mechanic):** any personal weakness tag of a vampire can be upgraded to a killing method with 3 Power from Discover and Create effects, or a downtime clock (8 segments).

**GM notes:** stake = circulation stopped, nanites can't distribute; silver = preserved procedure that slows repair; beheading = brain not repairable; fire = damage too widespread; folk remedies follow the categories in §5.10 of the design document.

#### B.8.2 Currency **[CANON — Q31]**

Replace the *dala* (a franchise-specific term) with the **mark**. Wealth tags: *broke*, *a few marks*, *a fat purse*, *a lord's bounty* (was *a Noble's bounty*).

#### B.8.3 Setting Gear (revised rows)

| Load | Item | Tags |
|---|---|---|
| 0 | Wooden stake, belt knife, flint striker, water skin | *stake* (inflicts *staked*) |
| 1 | Silver-edged knife or blade **[new]** | *silvered* |
| 1 | Charms: garlic bundle, cross, saint's medal | *steadies the nerves* (+1 Pneuma Edge vs. fear); affects *believers* only (§8.1) |
| 1 | Steel neck guard | *Armour 1* against bites; Bled from bites gains 1 fewer tier |
| 1 | Crossbow and wooden bolts | *+1 Attack* (range); *bolts are stakes* (*staked* at range, Hard 18) |
| 1 | Revolver or rifle | *+1 Attack* (range) |
| 2 | Laser rifle (rare, old-world) | Unchanged |
| 1 | Long cloak and wide hat | Unchanged |
| 1 | Signal mirrors **[new]** | By day, create *Sunlit* in a room with a window or opening for one scene (2 Power) |
| 1 | True-light lamp (rare relic) | Was *sun-lamps*. Create *False Dawn* for one exchange (2 Power); depletion 1 in d12 |
| 1 | Flares | Light only; ends darkness Truths for one exchange |
| 1 | Transfusion kit **[new]** | Required for transfusion (§6); *+1* on Medicine vs. Bled |
| 0 | Cyborg horse; normal horse or mule | Unchanged |

<!-- SETTING-SNAPSHOT-BODY-END -->
