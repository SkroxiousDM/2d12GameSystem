# Hollow Frontier — Setting Design Document

> Roads through a broken world. Blood behind every bargain.

| Field | Value |
|---|---|
| Project | *Hollow Frontier* (working title) setting for the 2d12 System. Internal codename: Hollow World. Publishable title to be chosen later |
| Repository | `SkroxiousDM/2d12GameSystem` — current source `docs/HollowFrontier/vampire-hunter-d-2d12-v2-master-rulebook.typ`; design documents in `docs/HollowFrontier/design/` |
| Document version | 0.12 — field-guide names finalised; Order Sidearm and Passenger range confirmed; the moving lights added (Q42) |
| Compiled | 2026-10-16 (v0.1); revised 2026-10-16 (v0.2–v0.12) |
| Purpose | Replace the *Vampire Hunter D* adaptation layer with an original setting while preserving the 2d12 engine and all character options |
| Audience | Designer and GM. Sections marked **Player** may be adapted for player-facing chapters; everything marked **GM-only** must stay behind the screen |

---

## Contents

1. [How to Read This Document](#1-how-to-read-this-document)
2. [Design Pillars](#2-design-pillars)
3. [Tone and Literary References](#3-tone-and-literary-references)
4. [World-Building Lore](#4-world-building-lore)
5. [Hidden Mechanics (GM-only)](#5-hidden-mechanics-gm-only)
6. [Player-Facing Truths](#6-player-facing-truths)
7. [Setting Rules](#7-setting-rules)
8. [Starting Region: The Vesper March](#8-starting-region-the-vesper-march)
9. [Adventure Seeds](#9-adventure-seeds)
10. [Rulebook Revision Plan](#10-rulebook-revision-plan)
11. [Open Questions](#11-open-questions)
12. [Superseded Concepts Archive](#12-superseded-concepts-archive)
13. [Decision Log](#13-decision-log)
14. [Sources](#14-sources)
15. [Appendix A. Dhampir Focus Rework](#appendix-a-dhampir-focus-rework-canon--q19)
16. [Appendix B. Revised Frontier Rules](#appendix-b-revised-frontier-rules-draft--resolves-q26)

---

## 1. How to Read This Document

### 1.1 Status tags

Every substantive element carries one status tag.

| Tag | Meaning |
|---|---|
| **[CANON]** | Decided by the designer. Change only by explicit revision and log entry in §13 |
| **[PROPOSED]** | Developed during refinement but not yet approved. Usable for playtesting; expect revision |
| **[SUPERSEDED]** | Earlier direction replaced by a later decision. Kept in §12 for reference only |
| **[OPEN]** / **[NOT CANON]** | Under active consideration; do not use as fact |

### 1.2 Visibility tags

| Tag | Meaning |
|---|---|
| **Player** | Safe for player-facing chapters, character options, and table handouts |
| **Discoverable** | Specific findings players can earn through investigation, restricted records, or knowledgeable witnesses |
| **GM-only** | The true foundation. Never stated in player materials, never confirmed wholesale at the table |

### 1.3 The governing principle

> The GM has a consistent explanation; the players have a world worth investigating.

The setting runs on a technological foundation, but **players never receive that foundation as exposition**. They encounter blood, ritual, relics, and contradictory testimony. Whatever they come to understand, they earn piece by piece — and no single discovery reveals the whole.

---

## 2. Design Pillars

### 2.1 Central theme: Legitimacy **[CANON direction]**

Who has the right to rule, to interpret the past, to control the machinery that sustains a community — or to demand another person's blood?

### 2.2 Five pillars **[PROPOSED]**

1. **A misremembered past.** The present lives inside the ruins of a civilisation it can no longer explain. Every claim to authority rests on a history that cannot all be true.
2. **Blood as institution.** Vampires need blood regularly, not occasionally. Their hunger is a matter of supply chains, ledgers, levies, and households — not just midnight attacks.
3. **Mystery with political weight.** Solving how something happened never settles who should benefit from the answer.
4. **Apparent supernatural, hidden mechanism.** What looks like curse, miracle, or haunting has a material cause the GM knows and the characters must uncover.
5. **No clean hands.** Rulers, healers, priests, and monsters all have reasons. Many arrangements are exploitative and necessary at once.

### 2.3 Principal play activities **[CANON]**

- Investigating gothic mysteries.
- Navigating politics.

Travel, ruin exploration, and combat remain available but serve these two activities rather than competing with them.

### 2.4 Preservation scope **[CANON]**

- Preserve the 2d12 engine, resources, and all character options.
- Rewrite setting history, institutions, and the vampire origin.
- Targeted revision: keep existing material wherever it fits; replace only franchise-dependent elements.

---

## 3. Tone and Literary References

### 3.1 Inspirations **[CANON]**

The designer has named two inspirations:

- Mark Lawrence, **The Broken Empire** trilogy (and, by extension, the companion **Red Queen's War** trilogy set in the same world).
- Gene Wolfe, **The Book of the New Sun**.

These guide **atmosphere, narrative method, and the relationship between technology and belief**. They do not supply institutions, names, histories, or specific devices (see §3.5).

### 3.2 What the Broken Empire contributes

| Observed in Lawrence's work | Hollow Frontier application |
|---|---|
| Relentlessly grimdark: reviewers describe a protagonist who is a "remorseless killer" and violence that is "frequent and unflinchingly graphic" ([The Grimoire](https://thegrimoire.co/books/prince-of-thorns/)) | Violence is consequential and unglamorous. Blood spent is never trivial — mechanically or morally |
| Dark humour makes the darkness readable; readers find the voice "darkly comic" ([Grimdark Magazine](https://www.grimdarkmagazine.com/review-prince-of-thorns-by-mark-lawrence/)) and use "dark humor to make the 'evil' … more palatable" ([Tenacious Reader](https://tenaciousreader.com/2013/12/05/prince-of-thorns-the-broken-empire-1-by-mark-lawrence-mild-spoilers/?ak_action=reject_mobile)) | NPCs can be wry, cynical, and funny about terrible arrangements. Gallows humour is a survival trait, not a tonal break |
| Cold, precise prose rather than warm lyricism ([LitLoop](https://www.litloop.co/blog/prince-of-thorns-review/)) | Rulebook narration is lean and exact. Describe a blood ledger, not a "crimson tide" |
| A world that reads as medieval and slowly reveals itself as a far-future Earth where "what looks like magic is the residue of science" ([Editors Reads](https://www.editorsreads.com/books/prince-of-thorns/)) | The technological truth surfaces by degrees across a campaign. It is never announced up front |
| Worldbuilding limited by the narrator's "tunnel vision" ([Grimdark Magazine](https://www.grimdarkmagazine.com/review-prince-of-thorns-by-mark-lawrence/)); sparse description shrouds the world "in a dark fog" ([The Fantasy Reviews](https://thefantasyreviews.com/2024/02/15/book-review-prince-of-thorns-by-mark-lawrence/)) | Player chapters describe the world as people experience it. Gaps are deliberate |
| Ruins of the old civilisation are everywhere; the setting is Earth roughly a thousand years after a nuclear war ([The Grimoire reading order](https://thegrimoire.co/reading-orders/mark-lawrence/)) | Old-world remains are pervasive and ordinary — roads, foundations, sealed rooms — not just rare treasure vaults |
| Surviving relics are exceptional; possessing one weapon is not possessing the industry to make more | A working relic is a political asset precisely because no one can reproduce it |
| Survivors name old materials by appearance and origin, not chemistry | In-world vocabulary describes what things look like or do. No one in the setting says "nanite," "polymer," or "server" (see §7.6) |
| A "neo-feudal" land with "layers of political intrigue" ([Grimdark Magazine](https://www.grimdarkmagazine.com/review-prince-of-thorns-by-mark-lawrence/)) | Fragmented sovereignties, contested successions, and inherited grievances drive play |

### 3.3 What the Book of the New Sun contributes

| Observed in Wolfe's work | Hollow Frontier application |
|---|---|
| A far-future Earth where remnants of advanced technology coexist with medieval social structures ([Scifi Dimensions](https://www.scifidimensions.com/the-book-of-the-new-sun-gene-wolfe-a-journey-into-dying-light/)) | Courts, guilds, and religious houses sit atop infrastructure they cannot build |
| An unreliable narrator who claims perfect memory yet contradicts himself ([Catholic Culture](https://www.catholicculture.org/commentary/catholic-sci-fi-classic-gene-wolfes-book-new-sun/)) | The Remembered — vampires who lived before the collapse — are witnesses, not authorities. Their memory is long; their testimony is not reliable |
| Characters with "only fantasy-novel vocabulary" to describe technology; deliberate ambiguity over whether events are miracle or lost technology ([TV Tropes](https://tvtropes.org/pmwiki/pmwiki.php/Literature/BookOfTheNewSun)) | Narration attributes claims to speakers. Text never adjudicates between the religious, folkloric, and technical accounts |
| Common people living "in the shadow of incomprehensible machines they worship as relics" ([SpacePunk Press](https://spacepunkpress.com/news/book-of-the-new-sun)) | Religious houses curate and venerate devices. Their rites may preserve correct procedures for the wrong reasons |
| High technology available mainly to the upper classes ([TV Tropes](https://tvtropes.org/pmwiki/pmwiki.php/Literature/BookOfTheNewSun)) | Access to relic medicine, treatment works, and transfusion apparatus is a marker of rank — and a lever of power |

### 3.4 Combined tonal rules **[PROPOSED]**

1. **Grim, not nihilistic.** Cruelty is common; it is never the only choice. Players can act decently and pay for it.
2. **The world is old and tired.** Things work because they were built to last, not because anyone maintains them well.
3. **Intimate horror over spectacle.** The monster knows every family in town and remembers why their grandparents invited it in.
4. **Clinical truth, gothic surface.** The hidden explanation may involve medical apparatus; the scene still involves grief, coercion, murder, and betrayal.
5. **Every witness is partial.** Including the oldest one. Including the rulebook's in-world voice.
6. **Short, hard sentences for violence; longer ones for memory.**

### 3.5 Originality guardrails **[CANON intent — supports commercial clearance]**

The literary references are tonal. To keep Hollow Frontier independently expressed — the reason for this rebrand — do **not** import:

- Proper names, places, factions, or characters from either series.
- Distinctive named concepts: the Builders, builder-stone, the Thousand Suns, the term "data echoes" (Hollow Frontier has its own Digital Facsimiles, §5.15, under its own name and rules), view-rings, the Wheel of Osheim, the -sworn magic schools, Urth, the Autarch, the Claw, guilds of torturers, and similar.
- Lawrence's specific premise that ancient science made reality respond to belief. **Hollow Frontier differs here:** belief does not alter physics. Belief alters behaviour, institutions, and interpretation — the mechanism stays material (§7.1).
- Any Vampire Hunter D material: Nobility as a unified vampire civilisation, D or any D-analogue, dhampir framing carried over unchanged, Noble science, or franchise history.

- **[CANON — Q37–Q41]** Stephen King's *Dark Tower* is a **supplementary** reference for situations and atmosphere only. Its names, terms, signature phrases, the Tower and Beams, travel between worlds, fate as a real force, and a single dark lord are excluded. The full clearance list is §5 of the companion *Dark Tower Elements Review*.

Generic genre elements — far-future collapse, lost technology mistaken for magic, gothic vampires, feudal fragmentation, unreliable testimony — are shared territory and remain fully available.

### 3.6 Content and safety dial **[PROPOSED]**

The tone sits at grimdark-gothic, but table content is the group's choice. The rulebook should include a short safety section recommending lines and veils, with likely topics to discuss: coerced blood-taking, bodily autonomy, torture, violence against children, and sexual violence. Recommend that sexual violence default to off-screen or excluded. Hollow Frontier's horror comes from dependence and compromise, not from atrocity for its own sake.

---

## 4. World-Building Lore

This section describes the world as it is. Material here is broadly **Player**-visible unless marked otherwise; the underlying causes live in §5.

### 4.1 The old world **[CANON principle / PROPOSED details]**

- The old world was not unified. It contained competing states, corporations, research institutions, military programmes, and private interests.
- Their surviving technologies have different purposes and incompatible safeguards.
- No single system explains every ruin, mutation, or apparent miracle.
- Ancient people were not omniscient or uniformly more capable than their descendants.
- A functioning relic may be operating exactly as intended. The problem is whose interests it was built to serve.

### 4.2 The collapse **[PROPOSED]**

The collapse was not one night of fire. It was a prolonged unravelling: wars, supply failures, ecological damage, abandoned regions, and the loss of the institutions needed to maintain complex systems.

People disagree about where the old world ended. Chronicles variously date the collapse from:

- the last continental war;
- the failure of the communication networks;
- the abandonment of the high stations (orbital, in GM terms);
- the death of a particular ruler.

**That disagreement matters because dates establish claims.** A dynasty insists its charter predates the collapse. A religious house counts its founding from an event surviving records describe very differently. A vampire holds a valid deed from a government no one now recognises.

### 4.3 The present world **[PROPOSED]**

The present is not empty wilderness dotted with helpless villages. It contains productive farms, market towns, ambitious courts, religious houses, workshops, armies, and rival centres of learning.

Its fragmentation comes from **uneven access**:

- One city manufactures reliable firearms but cannot make the medicines its rulers need.
- Another controls an ancient water-treatment plant but lacks the expertise to expand it.
- A rural principality has few relics but excellent roads, disciplined administration, and a dependable food surplus.
- A fortified monastery preserves surgical procedures its practitioners understand only in part.

### 4.4 What the names mean **[PROPOSED]**

- **Frontier** — the places where jurisdiction, knowledge, and dependable infrastructure break down. Not a single uninhabited edge, but a condition that can exist three streets from a palace.
- **Hollow** — both the buried remains beneath the landscape and the gap between what institutions claim to understand and what they actually know.
- **Hollow Frontier** (working title) — the setting as a whole: a world living inside its own misremembered past. Internal codename: Hollow World.

### 4.5 Technology baseline **[PROPOSED]**

Following the "surviving relic, no supply chain" principle:

| Tier | Examples | Availability |
|---|---|---|
| Contemporary craft | Hand weapons, armour, fortifications, animal transport, sailing vessels, black-powder firearms in some regions, printed books, basic surgery | Common, locally variable |
| Recovered and maintained | Old-world water works, treatment works, lighting circuits, sealed doors, pumps, preserved transfusion apparatus | Controlled by whoever holds and can operate them |
| Exceptional relics | Working advanced weapons, diagnostic instruments, recording and speaking devices, preservation chambers | Rare; politically decisive; irreproducible |
| Afflicted-responsive systems | Doors, chambers, and instruments that respond only to certain bloodlines or to the afflicted | Discoverable; cause is GM-only (§5.9) |

### 4.6 Vampires as the world sees them **[CANON — player framing]**

Vampires — called by many local names (see §7.6) — are people who must take blood to live. They are long-lived, hard to kill, and capable of surviving injuries that would end anyone else.

- They need blood regularly. A restrained vampire survives on comparatively modest amounts.
- Prolonged deprivation produces a far greater hunger.
- Blood need not be taken by a bite. Accounts describe drinking, blood anointing, and introduction directly into the veins.
- Some vampires claim to remember the world before its fall.
- Stories disagree about how vampires are made and which protections work.

### 4.7 Two vampire cultures **[CANON split / PROPOSED names]**

The divide is cultural and political, not biological. It is not a reliable measure of power or intelligence.

#### The Remembered

Vampires who claim to have lived before the collapse.

- They remember artificial lighting, functioning hospitals, crowded cities, ordinary bureaucracy, and technologies their descendants consider miraculous.
- **Memory is not expertise.** A Remembered vampire may have been an accountant, soldier, entertainer, administrator, or wealthy patient. They may recognise a machine without knowing how to repair it.
- Their recollections can be selective, self-serving, or distorted by centuries.
- **Advantage:** continuity. They remember how an institution acquired its authority, where a family's wealth came from, what lies beneath a saint's tomb.
- **Temptation:** to treat later generations as temporary occupants of a world that still belongs to them.
- **Rarity [CANON]:** very rare — a handful per region and a few hundred worldwide at most. The Afterborn far outnumber them.

#### The Afterborn

Vampires made after the collapse.

- Many understand their condition through inherited folklore: the maker as sire, deprivation as curse, transformation as death and return.
- Some cultivate the mythology deliberately as an instrument of power. Others sincerely believe it.
- An Afterborn ruler may insist on sleeping in a sealed coffin because their maker did. The original "coffin" may have been a medical isolation chamber; the replacement may do nothing at all.
- **Advantage:** they understand the present — its kinship networks, religious expectations, customary law, and political realities — better than any ancient survivor.

#### The divide is porous

- A Remembered vampire may embrace religious explanation after losing faith in the old world.
- An Afterborn scholar may investigate the affliction systematically.
- A survivor may pretend to be recently made to hide involvement in historical crimes.
- A younger vampire may claim old-world memories to support a fabricated title.

**Age is something people contest, not a character level.**

#### Lineages **[CANON]**

Vampires trace descent from maker to made. Many lineages claim an old-world founder, and some old doors, chambers, and instruments open for one lineage and not another. In public this is spoken of as *blood* or *bloodline*; the mechanism is GM-only (§5.9).

#### Agelessness **[CANON]**

Vampires do not visibly age. They keep the apparent age they had when afflicted. Those afflicted as children are said to grow into early adulthood — around their mid-twenties — and then stop.

### 4.8 Blood as institution **[PROPOSED]**

Because vampires need blood on a schedule, their politics are built on recurring arrangements. Three common systems exist, with heavy local variation. None automatically marks a settlement as good or evil.

| System | How it works | Typical pressures |
|---|---|---|
| **The Household** | A network of relatives, servants, retainers, and donors | Secrecy, intimacy, suspicion from outsiders; affection, transaction, and exploitation all at once |
| **The Levy** | A ruler claims blood as tax | Who is exempt? Who bears the burden? Is collection competent? Does the amount match the ruler's real need — or conceal a growing court, secret conversions, or blood sold abroad? |
| **The Exchange** | Paid or contracted donation | Poverty, debt, fraudulent contracts, adulteration, monopolies |

#### Feeding as social meaning **[CANON methods / PROPOSED meanings]**

| Method | Everyday practice | Gothic and political significance |
|---|---|---|
| Through the skin | Contact with exposed blood, a soaked dressing, a shallow vessel | Feeding resembles anointing, an intimate rite, or tending a wound rather than a bite |
| By drinking | Blood drunk or taken in a preparation | The root of cup rituals, ceremonial vessels, and predatory imagery |
| Into the veins | Cannulas, preserved apparatus, locally made equipment | Associated with treatment, controlled supply, and surviving old-world practice |

These are cultural tendencies, not rules. A Remembered vampire may drink because it is convenient; an Afterborn aristocrat may insist on the veins as a mark of refinement.

> Signature image: a vampire resting one hand in a porcelain bowl while conducting an otherwise ordinary political interview.

#### Blood records as evidence **[PROPOSED]**

Household accounts, collection registers, delivery receipts, and treatment logs can establish:

- whether a vampire was adequately supplied before an alleged attack;
- whether a household contains more vampires than it admits;
- whether a supposedly dead ruler is still being maintained;
- whether a levy exceeds its stated purpose;
- whether someone has been deliberately kept unstable.

**A missing ledger can matter as much as a missing weapon.**

### 4.9 Five foundations of authority **[PROPOSED]**

Vampires are influential without owning every institution. A strong region contains overlapping authorities:

| Authority | Basis |
|---|---|
| Landed | Families and rulers controlling farms, towns, and armed retainers |
| Chartered | Councils, guilds, and cities claiming privileges under inherited agreements |
| Religious | Meaning, education, welfare, burial, and moral legitimacy |
| Technical | The ability to maintain indispensable equipment or interpret surviving records |
| Personal | Reputation, patronage, or exceptional capability |

A vampire can hold any combination. So can an ordinary human. This prevents a simple vampire-overlord / human-subject split, and gives the Broker, Occultist, Frontier Doctor, and Savant consequential work.

### 4.10 Folklore that grows from the facts **[PROPOSED]**

| Tradition | Origin in practice |
|---|---|
| Blood anointing | Skin absorption, ritualised as renewal, allegiance, or mourning |
| The ancestral cup | Oral feeding as household rite, with rules about vessels and witnesses |
| The sealed coffin | A distorted memory of isolation beds or preservation chambers |
| The ravenous elder | Age conflated with the enormous demand of a vampire recovered after long deprivation |
| The faithful attendant | Whoever controls a ruler's feeding schedule gains unusual intimacy and leverage |
| "The beast waking" | Afterborn term for the progression of deprivation (§5.6) |
| Burning the dry dead | A starved vampire's husk burns fiercely; communities that find one burn it at once (§5.8) |

---

## 5. Hidden Mechanics (GM-only)

> **Everything in this section is GM-only.** Do not reproduce it in player chapters, character options, or handouts. Individual facts may become **Discoverable** through play (§6.4), but the complete explanation is never delivered as exposition.

### 5.1 The origin of vampirism **[CANON]**

Before the collapse, researchers developed a **blood-borne nanite longevity treatment** intended to extend healthy human life.

The treatment worked. It maintained tissue, suppressed many diseases, and repaired damage an untreated body could not survive.

It also created permanent dependence.

Vampires are therefore neither resurrected corpses nor a separate species. They are living people altered by a technology that makes their continued survival someone else's problem.

### 5.2 Why they need blood **[PROPOSED rationale]**

The nanites can maintain their host but cannot manufacture every biological component their work requires. Fresh donor blood supplies what the system cannot replenish. When supply fails, the nanites begin consuming the host's own reserves and deferring repairs.

This gives the requirement a concrete cause without demanding biomedical exposition at the table.

> **A vampire needs blood. They do not necessarily need to kill.**

### 5.3 The maintenance requirement **[CANON]**

- A stable vampire requires approximately **0.5 L of blood per week**.
- Blood can be absorbed **through the skin**, **through the intestinal lining**, or **by direct transfusion**. All three satisfy the same need.

**Knowledge distribution:** the half-litre figure is practical knowledge among vampires, experienced attendants, and specialist physicians. It is not universal public knowledge.

### 5.4 Blood debt **[CANON]**

**[CANON]** When feedings are stretched past the weekly interval, the amount required to restore stability rises **exponentially**, not merely by accumulating missed portions.

**[CANON]** Doubling schedule — total blood needed at that point to restore stability, not additional amounts:

| Time since last adequate feeding | Blood required to restore stability |
|---|---:|
| 1 week | ≈ 0.5 L |
| 2 weeks | ≈ 1 L |
| 3 weeks | ≈ 2 L |
| 4 weeks | ≈ 4 L |
| 5 weeks | ≈ 8 L |
| 6 weeks | ≈ 16 L (husk dormancy likely — §5.8) |

Formula: \( B(w) = 0.5 \times 2^{\,w-1} \) litres, where \( w \) is weeks since the last adequate feeding.

**Reference point:** an adult human holds roughly 5 L of blood. By week four, restoring a vampire approaches the volume of one entire person; by week five, more than one. A deprived vampire is a mass-casualty risk, or a demand no single donor can meet without dying.

**Why it escalates:** restoring the body requires blood both for ordinary maintenance and to reverse the damage done during deprivation. The longer the deficit, the more damage, the more expensive the repair.

**Endpoint [CANON]:** the curve does not run forever. Extreme deprivation ends in **husk dormancy** (§5.8), not death or endless frenzy.

**Visibility:** the exponential schedule is GM-only. Players may recognise that an imprisoned vampire is *dangerously hungry* without knowing numbers — unless a character has specific reason to have studied it (a Frontier Doctor with treatment-works training, a long-serving attendant, a dhampir raised in a vampire household).

### 5.5 Partial feeding **[PROPOSED]**

- An inadequate feeding slows deterioration or reduces outstanding debt.
- It does **not** reset the weekly cycle.
- Otherwise a few drops could erase weeks of deprivation.

> **A starving vampire may be kept alive on very little without ever being restored to stability.**

Captors exploit this. So do rulers claiming a prisoner is being "properly maintained."

### 5.6 Deprivation progression **[PROPOSED]**

Hunger does not automatically remove agency. Deprivation progressively introduces:

1. Difficulty maintaining damaged tissue.
2. Heightened awareness of nearby blood.
3. Pain, fatigue, and impaired concentration.
4. Failure of normally reliable enhancements.
5. Increasingly intrusive survival impulses.
6. **Husk dormancy** — the body dries, stiffens, and shuts down (§5.8). **[CANON]**

Responses vary. Some vampires seek help early; some conceal their condition; some become coercive while fully understanding what they are doing.

**Hunger can explain a crime without excusing it.**

The Remembered may call this a "maintenance crisis." The Afterborn say "the beast is waking." Neither description determines how responsibly the person behaves.

### 5.7 Conversion **[CANON method / PROPOSED complications]**

**[CANON]** Creating a vampire requires:

1. Draining a recipient to a critical state.
2. Transfusing blood carrying an existing vampire's nanites into the drained body.
3. The nanites attempting to stabilise and reconstruct the recipient.

**[PROPOSED]** The procedure is dangerous, not automatic. It can:

- fail outright and kill the recipient;
- cause lasting alterations;
- produce a vampire whose maintenance needs differ from their maker's.

**[CANON] What decides success:** the maker, the recipient, and the equipment all matter. **Equipment matters most.** Old-world treatment apparatus makes success far more likely than an improvised transfusion — one more reason the treatment works are fought over.

**[CANON] Why there are not more vampires:** conversion is dangerous, blood is expensive, and established vampires restrict new conversions to protect their own supply.

**[CANON] Lineage inheritance:** a converted vampire carries their maker's nanites — and with them the maker's identity tag (§5.9). Every vampire descended from one treated patient belongs to that patient's lineage.

**Feeding is not conversion.** **[PROPOSED, strongly recommended]**

- A donor does not become a vampire by supplying blood.
- Touching a vampire, sharing a cup, or incidental exposure does not convert.
- A bite is a means of obtaining blood, not of reproduction.
- A supposed "accidental turning" deserves investigation — someone may be concealing a deliberate procedure.

Conversion requires an intervention — deliberate, coerced, improvised, or desperate. That makes consent, inheritance, and responsibility central questions without requiring any supernatural maker–recipient bond.

### 5.8 Husk dormancy and preservation **[CANON]**

**[CANON]** A vampire pushed to the end of blood debt does not die. The nanites shut the body down into a **dried-out husk**: desiccated, light, rigid, apparently a long-dead corpse.

**[CANON]** A husk is **extra flammable**. Dry tissue and the nanites' stored reserves make it burn fast and hot. Fire is the surest way to end a dormant vampire.

**[CANON] Onset (Q18):** typically between weeks 5 and 7 of deprivation, earlier for injured or old vampires.

**[CANON] Revival cost (Q17):** reviving a husk takes **about three adult humans' worth of blood — roughly 15 L**. Blood debt stops compounding at onset, so the cost is the same whether the husk has lain a month or three centuries.

**[PROPOSED] Revival process:** blood must be absorbed in quantity, ideally through the skin. The signature image is a husk laid in a trough or bath of blood until it softens. Revival takes hours to days, and the waking vampire is in the worst state of hunger described in §5.6.

**[PROPOSED] Awareness:** the husk is unconscious. A revived vampire has no memory of the dormant years.

**What 15 L means in practice:** three people bled to death, or a large organised collection. A town's Exchange might gather that much from dozens of donors over a week or two; a levy could raise it faster. Either way, waking a husk cannot be done quietly. Stored blood, collection records, and missing people all leave evidence.

**Preservation equipment** is different. A vampire in a working old-world preservation chamber stays stable and intact — not a husk — and may wake after centuries with memories of a world that no longer exists.

**Play consequences**

- A "mummified saint," "dried corpse," or "relic body" may be a dormant vampire.
- A sealed chamber is not a vault with a sleeping guardian. Opening it and spilling blood nearby can be catastrophic.
- Anyone who wants a husk revived needs a great deal of blood, and therefore a great deal of power, money, or victims.
- Anyone who wants it gone needs only fire.

### 5.9 Why the old world answers to the afflicted **[CANON core / PROPOSED details]**

The player-facing premise says sealed chambers "open for certain bloodlines" and instruments "respond to the afflicted." The GM-side explanation:

**[CANON]** The treatment nanites carry an **identity tag** that works much like an RFID tag. It identified the treated patient to old-world medical, research, and secure facilities.

**[CANON]** Conversion copies the maker's nanites, so the tag passes down. Vampires form **lineages linked to a pre-collapse identity**: everyone descended from one treated patient reads, to old-world systems, as some version of that patient.

**Consequences**

- An Afterborn vampire may hold access rights earned by someone dead for centuries — a physician's clinic keys, a magistrate's archive, an executive's vault.
- Lineage is political capital. A lineage linked to a facility's original owner can claim the facility; whoever controls that lineage controls the doors.
- Two lineages may hold conflicting authorisations for the same facility.
- A Remembered founder and their own Afterborn descendants are indistinguishable to many systems — useful for impostors.
- Facilities can treat an unrecognised, degraded, or revoked tag as an intruder or a patient in distress.
- Dhampirs carry a fragment of their mother's tag (§5.12). Some systems half-recognise them.

#### Tag logs **[CANON]**

**[CANON] (Q23):** old-world systems keep logs of the tags they read. Those logs can prove a lineage — or expose a false one. **The difficulty is getting at them.**

**[CANON] Why access is hard (Q24):**

- **Authority:** reading a log may need a stronger tag or higher clearance than opening the door that recorded it. The vampire who could read the log may be the one it incriminates.
- **Location:** logs sit in deep control rooms, sealed archives, or central machinery far from the door that wrote them.
- **Broken interfaces:** screens, printers, and readouts have failed. The log exists; nothing will show it.
- **Language and format:** entries are codes, numbers, and old-world names that only a Remembered vampire, a Digital Facsimile, or a skilled specialist can interpret — each with their own motives.
- **Ownership:** whoever controls the facility controls the evidence, and may edit, hide, or sell it.

Getting at a log is therefore a full investigation: find the record, earn or steal access, find a reader, then decide whether to trust the reading.

#### Tag degradation **[CANON (Q22)]**

**Ruling:** tag degradation depends on **how a conversion is done**, not on how many generations separate a vampire from the founder.

- A conversion performed on working old-world treatment apparatus copies the maker's tag cleanly.
- An improvised conversion — makeshift transfusion, poor equipment, desperate conditions — damages the copied tag.
- Damage is irregular. Two vampires made the same way may read differently, and a fifth-generation vampire made properly can out-read a second-generation one made in a cellar.
- Damage carries forward: a vampire with a damaged tag passes on, at best, that damaged tag.
- Generation count is never a rank. Old-world access is a fact about each vampire's history, which must be investigated.

**What follows from the ruling**

- **Treatment works control inheritance.** Whoever holds working conversion apparatus decides who receives clean lineage access. This strengthens the equipment ruling (§5.7) and makes the treatment works the setting's most contested sites.
- **Founders still matter,** for memory, legitimacy, and the original clean tag — but a cleanly made descendant can stand in for them at the door.
- **Status stays contestable.** A weak tag reading proves only that a conversion went badly somewhere in the chain, not that a vampire is young or lying about their age.
- **Lineages carry hidden histories.** A badly damaged tag in a proud house suggests a crisis conversion someone would rather not explain.
- **The Afterborn in general** read poorly because most post-collapse conversions were improvised, not because of their distance from the founder.
- **Dhampirs** remain a separate case: an inherited fragment (§5.12), not a damaged copy.

**[CANON] Tag repair (Q25): unknown.** Whether a working facility can repair or re-register a damaged tag is deliberately left undefined, like the cure (§5.16).

#### Background: options considered

The question is whether a tag weakens each time it passes to a new vampire. This changes several established parts of the setting.

**If tags weaken with each generation**

| Area | Consequence |
|---|---|
| Hierarchy | Distance from the founder becomes a measurable rank. Lineages turn into rigid pecking orders that mirror feudal precedence |
| Founders | Remembered founders become extremely valuable. Being converted directly by a founder is a prize; founders become targets for capture, bargaining, and hoarding |
| Age claims | A vampire who claims to be Remembered but can only open half a lineage's doors is exposed. This weakens "age is contested" (§4.7) — unless logs and readers are hard to reach (Q23), which they are |
| Long-term trend | After a thousand years, distant descendants barely register. That explains why most Afterborn have little old-world access and still depend on the Remembered |
| Dhampirs | Fit naturally as the extreme case: a fragment of a fragment |
| Risk | Generation count becomes a character level — the thing the setting tries to avoid |

**If tags do not weaken**

| Area | Consequence |
|---|---|
| Equality | Every member of a lineage reads the same. Access is decided by politics, force, and possession, not biology |
| Founders | Less special. A founder matters for memory and legitimacy, not for access |
| Impostors | Easier. Any descendant can pass as the founder to a machine |
| Long-term trend | Lineages could grow large and powerful indefinitely; mass conversion becomes a strategy, held back only by danger and blood cost (§5.7) |

**Middle option: weakening depends on how the conversion was done**

- A conversion on working old-world apparatus copies the tag cleanly; an improvised transfusion damages it.
- Degradation is irregular, not a fixed step per generation, so it doesn't become a rank.
- It reinforces the equipment ruling (Q6, §5.7): controlling treatment works also means controlling who inherits clean access.
- It raises the question of whether a working facility could repair a damaged tag (Q25 — ruled unknown).

**Adopted:** the middle option (see ruling above). The other two options are kept here for reference only.

**[CANON] Shed blood (Q32):** a vampire's blood outside the body still carries its tag for a limited time. A vial can open the bloodline's doors until the blood spoils — which makes stored blood, ledgers, and collection cellars a security problem as well as a supply.

Use this to explain why a prisoner is kept alive, why an estate needs its vampire, or why a reliquary opens for a girl no one suspects.

### 5.10 Folklore truth table **[CANON]**

For every alleged vampire weakness or protection, the GM decides which category it belongs to — and whether it varies by individual or region.

| Category | Meaning | Example |
|---|---|---|
| Technical vulnerability | A real interaction with the altered body or nanites | A particular radiation source disrupts tissue maintenance |
| Preserved procedure | Ritual that retains part of a useful practice | A burial preparation includes a compound that inhibits nanite activity |
| Local custom | A social rule now associated with vampires | A household never admits visitors after the evening bell |
| Deliberate deception | Someone benefits from a false belief | A vampire encourages faith in a harmless protective charm |
| Mistaken explanation | Correct observation, wrong cause | A "haunting" near a damaged sensory interface |

Do not make sunlight, garlic, running water, invitations, and holy symbols universally effective. Decide which effects exist, what causes them, and how they vary — then let players investigate and learn. Explanations can be hard to find; they must never be arbitrary.

#### Assigned protections **[CANON]**

| Protection | Category | Effect |
|---|---|---|
| Sunlight | Technical vulnerability | Slow burns and impaired repair; not instant destruction. **Cause: ultraviolet light inhibits the nanites (Q27).** Cloud reduces it; window glass blocks most of it; old-world UV lamps reproduce it |
| Fire | Technical vulnerability | Damage too widespread and fast to repair; catastrophic for a husk (§5.8) |
| Beheading | Technical vulnerability | The one reliable kill |
| Stake through the heart | Mistaken explanation | Stops circulation and incapacitates; removing the stake allows revival |
| Silver | Preserved procedure | Slows repair; the custom works for reasons no one remembers |
| Garlic | Local custom | No physical effect |
| Running water | Local custom | No physical effect |
| Invitation | Local custom / deliberate deception | No physical compulsion; some vampires encourage the belief |
| Holy symbols | Mistaken explanation | The symbol does nothing; certain reliquaries contain old-world devices that do |
| Mirrors | Mistaken explanation | No effect; some old-world instruments behave oddly around the afflicted, and mirrors took the blame |

### 5.11 What the Remembered actually know **[PROPOSED]**

A typical Remembered vampire's knowledge sounds like this:

> "There were appointments. They tested my blood. The treatment was expensive, and they assured me the dependency would eventually be corrected."

That is very different from knowing what the treatment contained or how to reproduce it. A few Remembered may possess real technical knowledge; most remember procedures, brand names, reassuring explanations, or deliberate lies.

**Their testimony is evidence, not authoritative exposition.** GMs should decide, for each Remembered NPC:

- what they were before the collapse;
- what they genuinely know;
- what they believe but is wrong;
- what they conceal and why.

### 5.12 Dhampirs (GM notes) **[CANON]**

**[CANON]** The term **dhampir** stays. It is a widely used folkloric term, not specific to any single publication. The Focus's abilities and text must still be written independently (§3.5).

**[CANON]** No full vampire player characters exist (§6.6). The dhampir is the only afflicted player option.

**[CANON] Origin:** a dhampir is the child of a vampire mother who passed part of her nanite population to the child in the womb (§5.13). The partial population never fully integrates.

| Aspect | Hidden explanation | Player-facing expression |
|---|---|---|
| Resilience | Partial nanite repair | Unusual toughness and recovery |
| Blood sensitivity | Inherited nanite chemistry | Can sense or is unsettled by fresh blood |
| Old-world access | Fragment of the mother's identity tag (§5.9) | Some sealed things respond to them, unreliably |
| Ageing | Partial maintenance | Slowed ageing after maturity (Appendix A.4) |
| Blood need | Partial population draws on the dhampir's own blood | No weekly need; Thirst rises from strain (Appendix A.3) |
| Children | Fragment too weak to transmit | A dhampir's children are fully human (Q29) |

**[CANON — Q37] Failed-conversion survivors are not dhampirs.** The dhampir origin stays mother-only (§5.13). Survivors of a failed conversion (§5.7) are a separate condition:

| Aspect | GM truth |
|---|---|
| Cause | A transfused nanite population that never integrated; the conversion's "lasting alterations" (§5.7) |
| Body | Unusual strength and rapid growth; most die young, typically before thirty, as the population consumes its host |
| Mind | Thinking is often impaired: slow, literal, or fragmented. Severity varies by survivor |
| Blood need | No weekly need |
| Tag | Carries a degraded fragment of the **maker lineage's** tag (Q22: poor conversion, poor tag). Old-world systems may misread or log them, so a survivor is evidence of who converted them |
| Children | Assume none; sterility is common. Leave it undefined unless play requires a ruling |
| Folklore | Communities often call them dhampirs, "the returned," or cursed. That is a **mistaken explanation** (§5.10) |
| Player option | **Not a player option at launch.** NPC only |

Primary use: the *Long Levy* seed (§9, from the *Dark Tower* review D2, mechanism option A — conversion trials on levied children). Option B (donor selection) is retired.

**Full reworked Focus and Thirst rules:** Appendix A.

Player text describes capabilities, needs, and costs only. Never the microscopic cause.

### 5.13 Reproduction **[CANON — tentative]**

- A female vampire can conceive and may pass some of her nanites to the child.
- **Miscarriage is frequent.** A successful pregnancy is rare, dangerous, and politically significant.
- A surviving child is a dhampir (§5.12), not a full vampire.
- **[CANON] (Q20):** male vampires can sometimes father children, but their sperm count is low. **They pass on no nanites.** A child with a vampire father and human mother is fully human.
- Dhampirs therefore come only from vampire mothers.

**Play consequences:** an heir with a vampire mother is an uncommon and valuable claimant. An heir claiming a vampire father is a different problem: such children are rare, fully human, and carry no tag, so the claim cannot be proven through old-world systems — only through records, witnesses, and politics. They may carry a lineage's identity tag, and with it its old-world access. Repeated miscarriages in a vampire household are evidence an investigator can read.

### 5.14 Age **[CANON]**

- A vampire keeps the physical age they had when treated or converted.
- Those treated or converted before maturity keep developing until about their mid-twenties, then stop.
- There are therefore no permanently child-bodied vampires. A vampire who appears twenty-five may have been afflicted at six.

### 5.15 Digital Facsimiles **[CANON]**

**[CANON]** Old-world systems contain **Digital Facsimiles**: machine-held reconstructions of specific people that can speak and respond. They are **never called "data echoes."** The GM term is *Digital Facsimile*; in-world names vary.

**[CANON] Nature (Q21):**

- **Bound to hardware:** a facsimile exists only where its machinery survives — a shrine, archive, hospital, or vault. It cannot travel.
- **[CANON — Q38] No portable facsimiles.** No implant, relic, or carried device holds a facsimile. A facsimile may live in **fixed-route machinery** (a transit line, a canal-lock system) because it never leaves its installation. A facsimile may **speak at a distance** through surviving relays, such as an earpiece relic, a speaker grille, or a wall terminal, but only within range of its home site. Out of range, it goes quiet.
- **[CANON — Q42] The moving lights.** A handful of old-world satellites (GM term; in-world *the moving lights*) survive from the abandonment of the high stations (§4.2). Most are dead. A few communication relays still answer from orbit. Under open sky, a facsimile's voice can reach a bearer through one while it is overhead: in play, **9+ on a d12 at the start of a scene**. Roofs, earth, deep canyons, thick forest and storms block it. Traffic through them can be **overheard** by anyone holding a working ground receiver, and a few households do. Who owns the receivers, and what they have heard, is a political question (P1). The facsimile is still hardware-bound: only its voice travels. Optional Truth 11 (*the lights in the sky still move*) adds that something up there is also **watching**: at least one surviving work is an observation platform still recording the ground. Who, if anyone, still reads its records is the GM's to decide.
- **Built from records:** it holds what was recorded, not a living memory. It is confident, articulate, and incomplete.
- **Out of date:** most do not know how much time has passed, and some refuse to believe it.
- **Unreliable in the Wolfe sense:** a facsimile is a witness, like the Remembered (§5.11). It can be wrong, edited, or built to persuade.
- **In-world perception:** a voice from a reliquary, a speaking saint, an oracle, a ghost in the walls.

**Strong hooks**

- A Remembered vampire and the facsimile of their pre-collapse self disagree about what happened.
- A facsimile recognises a lineage's identity tag (§5.9) and addresses an Afterborn vampire by the founder's name.
- A religious house's revelations come from a facsimile its priests only partly understand.

Keep facsimiles distinct from Lawrence's concept in name, rules, and role: they are evidence and institutions in Hollow Frontier, not manipulators of world history.

### 5.16 Cure **[CANON]**

**Unknown.** The setting does not define whether vampirism can be cured, and this document provides no answer. The old-world promise that "the dependency would eventually be corrected" (§5.11) stays unresolved. Individual GMs may decide for their own campaigns; published material must not.

## 6. Player-Facing Truths

### 6.1 Player premise **[PROPOSED — current draft]**

> The old world is buried beneath the present, but it has not fallen silent.
>
> Its sealed chambers still open for certain bloodlines. Its instruments pronounce judgments no living scholar can explain. Some of its inhabitants remain among the living, sustained by blood and memories they will not willingly share.
>
> Across the Hollow Frontier, towns bargain with ancient households, physicians dispute the teachings of religious orders, and rulers build their authority on histories that cannot all be true.
>
> A death behind a locked door, a disputed inheritance, a saint who speaks again: each can draw investigators into secrets whose discovery threatens more than their lives.

### 6.2 What players can know **[CANON]**

- Vampires require blood regularly.
- A restrained vampire survives on relatively modest quantities.
- Prolonged deprivation produces a much greater hunger.
- Blood need not be taken by a bite: drinking, anointing, and direct introduction into the veins are all described.
- Some vampires claim to remember the world before its fall.
- Stories disagree about how vampires are made and which protections work.
- Vampires and dhampirs see in the dark. Sunlight harms them; experience says sunlight through glass does little.
- The old world left wonders whose workings are disputed.

### 6.3 What players must not be told **[CANON]**

- That vampirism is caused by nanites.
- That vampirism was a pre-collapse longevity treatment (this may be rumoured or claimed in-world; never confirmed by narration).
- That every apparent miracle or haunting is misunderstood technology.
- The exponential blood-debt schedule (unless a character has specific reason to know it).
- The mechanism by which old-world systems recognise the afflicted (identity tags, §5.9).
- That speaking saints, oracles, and voices from reliquaries may be Digital Facsimiles (§5.15).
- Whether a cure exists (§5.16).

### 6.4 Three knowledge layers **[CANON]**

| Layer | Contents | Example |
|---|---|---|
| Player-facing setting | What people observe, believe, fear, and publicly acknowledge | "The Lady of Veyr has not been seen by daylight in living memory." |
| Discoverable knowledge | Specific findings earned through investigation | A treatment log shows the Lady receives blood through a valve in a locked old-world chair |
| GM-only foundation | The actual mechanism | Her nanites require the chair's filtration because her conversion was flawed |

**Discoveries connect; they do not explain.** Finding that an ancient apparatus sustains a vampire establishes a link, not the full nature of vampirism.

### 6.5 Approved phrasing patterns **[PROPOSED]**

Attribute claims; never adjudicate them.

| Use | Avoid |
|---|---|
| "The old world left wonders whose workings are disputed." | "The old world's technology seems like magic." |
| "Some scholars believe the blood curse began before the fall." | "Vampirism was an old-world medical treatment." |
| "Ancient instruments sometimes respond to the afflicted." | "Machines detect vampire biology." |
| "Religious houses, physicians, and vampires offer incompatible accounts." | "The Church is wrong about vampires." |
| "The House of Mercy teaches that…" / "Physicians of the Survey claim…" | Unattributed statements of cause |

### 6.6 Afflicted character options — player text rules **[CANON]**

**There are no full vampire player characters.** Vampires are NPCs. The only afflicted player option is the **dhampir** (§5.12, §7.8).

A player choosing the dhampir must know its **meaningful costs and constraints**: what it can do, what it needs, how it ages, and what social risks it carries. They do not need — and must not receive — the hidden cause.

**[PROPOSED] In-world explanation of vampire feeding** — what a physician, attendant, or vampire might tell a party. Suitable as a handout once the party earns it (**Discoverable**):

> They must take blood to live. About half a litre each week keeps them steady. Blood can be drunk, taken in through broken skin, or put straight into the veins — the method matters to the people around them more than it matters to their bodies.
>
> Every week they go without, the hunger grows sharply worse. Small amounts hold them together but will not make them whole. Wait long enough and no single person can give them what they need. Wait longer, and they dry to a husk — and a husk burns like kindling. Waking one takes three people's worth of blood.
>
> Feeding does not make others like them. Whatever made them was done deliberately, and someone was responsible.

## 7. Setting Rules

These are the binding rules for writers and GMs. Numbered for reference in review notes.

### 7.1 Foundation rules

| # | Rule | Status |
|---|---|---|
| F1 | The setting has a technological foundation. Apparently supernatural phenomena arise from ancient science | **[CANON]** |
| F2 | The foundation is never stated in player-facing material | **[CANON]** |
| F3 | Belief does not change physics. It changes behaviour, institutions, and interpretation | **[PROPOSED]** |
| F4 | No single old-world system explains everything. Origins are plural and sometimes incompatible | **[PROPOSED]** |
| F5 | Folklore can be wrong about mechanism and right about observation | **[PROPOSED]** |
| F6 | Every hidden mechanism must be internally consistent and investigable. No arbitrary mysteries | **[PROPOSED]** |
| F7 | Digital Facsimiles exist and are never called "data echoes" | **[CANON]** |

### 7.2 Vampire rules

| # | Rule | Status |
|---|---|---|
| V1 | Vampirism originates in a pre-collapse blood-nanite longevity treatment (GM-only) | **[CANON]** |
| V2 | A stable vampire needs ≈ 0.5 L of blood per week | **[CANON]** |
| V3 | Delayed feeding raises the requirement exponentially | **[CANON]** |
| V4 | Blood may be absorbed through skin, through the intestinal lining, or by transfusion | **[CANON]** |
| V5 | Conversion requires transfusing an existing vampire's nanite-bearing blood into a drained body | **[CANON]** |
| V6 | Many vampires remember the pre-collapse world; those made later lean heavily on folklore | **[CANON]** |
| V7 | Feeding does not convert. Conversion is always an intervention | **[PROPOSED]** |
| V8 | Conversion can fail, alter, or produce different maintenance needs | **[PROPOSED]** |
| V9 | Partial feeding slows debt but does not reset the cycle | **[PROPOSED]** |
| V10 | Extreme deprivation ends in husk dormancy; only working preservation equipment keeps a vampire stable and intact | **[CANON]** |
| V11 | Hunger erodes control progressively; it never removes moral responsibility outright | **[PROPOSED]** |
| V12 | No universal vampire nation, court, or ancestral lineage exists | **[PROPOSED]** |
| V13 | Folklore protections are categorised as in §5.10 | **[CANON]** |
| V14 | Blood debt follows the doubling schedule (§5.4) | **[CANON]** |
| V15 | A husk is extra flammable | **[CANON]** |
| V16 | Conversion success depends on maker, recipient, and equipment; equipment weighs most | **[CANON]** |
| V17 | Nanites carry an identity tag; lineages link to a pre-collapse identity | **[CANON]** |
| V18 | Female vampires may pass nanites to a child; miscarriage is frequent; survivors are dhampirs | **[CANON — tentative]** |
| V19 | Vampires keep their age at affliction; those afflicted young mature to about mid-twenties, then stop | **[CANON]** |
| V20 | The Remembered are very rare; the Afterborn far outnumber them | **[CANON]** |
| V21 | Whether a cure exists is unknown and will not be defined | **[CANON]** |
| V22 | No full vampire player characters | **[CANON]** |
| V23 | Husk dormancy begins around weeks 5–7; revival takes ≈ 15 L (three adults' worth), regardless of time dormant | **[CANON]** |
| V24 | Male vampires can sometimes father children (low sperm count) but pass on no nanites | **[CANON]** |
| V25 | Old-world systems log tag reads; accessing the logs is the hard part | **[CANON]** |
| V26 | Tag degradation depends on conversion quality, not generation count; old-world apparatus copies cleanly, improvised conversions damage the tag | **[CANON]** |
| V27 | Whether damaged tags can be repaired is unknown and will not be defined | **[CANON]** |
| V28 | Vampires see in the dark | **[CANON]** |
| V29 | Ultraviolet light inhibits the nanites; this is the cause of sunlight harm (GM-only) | **[CANON]** |
| V30 | Animal blood partially sustains vampires and dhampirs (proposed rate: half value for vampires; Thirst −1 for dhampirs) | **[CANON]** |
| V31 | A female dhampir passes nothing to her children | **[CANON]** |
| V32 | Dhampir Focus as in Appendix A | **[CANON]** |
| V33 | Frontier Rules as revised in Appendix B; remaining [PROPOSED] items await approval | **[DRAFT]** |
| V34 | Currency is the mark | **[CANON]** |
| V35 | Shed blood carries the vampire's identity tag for a limited time | **[CANON]** |
| V36 | A collapsed vampire left in direct sun for a full day is destroyed | **[CANON]** |
| V37 | Vampire threat ranks (Minor, Established, Great, Paramount) measure current power, not age | **[CANON]** |

### 7.3 Political rules

| # | Rule | Status |
|---|---|---|
| P1 | Legitimacy is the central contested resource | **[CANON direction]** |
| P2 | Dates establish claims; the collapse has no agreed date | **[PROPOSED]** |
| P3 | Authority has five foundations (§4.9); vampires never hold all of them by default | **[PROPOSED]** |
| P4 | Blood supply is political infrastructure; disrupting it is a weapon | **[PROPOSED]** |
| P5 | No blood system (household, levy, exchange) is inherently good or evil | **[PROPOSED]** |
| P6 | Factions are regional, not world-spanning, unless a later decision changes this | **[PROPOSED]** |
| P7 | Binding instruments (charters, testaments, compacts, levy agreements) must be written or sworn in the formal register (§7.6). An error in the register is **grounds to challenge**; it does not void the instrument automatically. Whether it does is a dispute (I2) | **[CANON — Q39]** |

### 7.4 Investigation rules

| # | Rule | Status |
|---|---|---|
| I1 | Every major mystery has three layers: the **apparent event**, the **material mechanism**, the **political consequence** | **[PROPOSED]** |
| I2 | Solving the mechanism does not settle the dispute | **[PROPOSED]** |
| I3 | Every clue in published adventures specifies what it actually demonstrates, what witnesses believe it demonstrates, and what remains uncertain | **[PROPOSED]** |
| I4 | Killing a vampire is always possible and rarely equivalent to solving the problem | **[PROPOSED]** |
| I5 | Discovering a vampire begins an investigation; it does not conclude one | **[PROPOSED]** |

### 7.5 Default campaign frame **[PROPOSED]**

The party is a small company hired to resolve matters local authorities cannot — or will not — investigate openly. They may hold a letter of commission, work through a patron, or simply have a reputation for discretion. **There is no universal hunters' or investigators' guild.**

Typical assignments:

- Was a death murder, maintenance failure, or sabotage?
- Is an heir the person their documents claim?
- Is a miracle genuine before a religious dispute becomes a succession crisis?
- Where is the missing donor whose disappearance threatens a treaty?
- Can a record that overturns a land claim be recovered?
- Can a community and the vampire it depends on reach a new arrangement?

### 7.6 Language and vocabulary rules **[PROPOSED]**

Following the Broken Empire and New Sun lesson that survivors name things by appearance, function, or origin:

- **Never** use in-world: nanite, nanotechnology, computer, software, polymer, satellite, gene, cell, virus, server.
- In-world terms describe what is seen or done. Candidates for review:
  - *the affliction*, *the blood curse*, *the long sickness* — vampirism
  - **[CANON] Vesper March:** *the Kept* — polite term for vampires (kept by households; kept alive by them); *leeches* — vulgar term. Other regions use other words.
  - *the afflicted*, *the long-lived* — general terms elsewhere
  - *dhampir* — child of a vampire mother **[CANON]**
  - *husk*, *the dry dead* — a dormant vampire
  - *bloodline* — public word for a lineage
  - *the maintenance*, *the steadying* — Remembered terms for regular feeding
  - *blood debt*, *the arrears* — deprivation
  - *the beast waking* — Afterborn term for deprivation symptoms
  - *old-work*, *fallen-age glass*, *sleeping iron* — old-world materials and devices
  - *treatment works* — old-world medical and water installations
  - *speaking saint*, *oracle*, *wall-ghost* — in-world terms for Digital Facsimiles **[CANON]**
  - **[CANON — Q39] The formal register.** An archaic legal and liturgical form of speech and writing, used for binding instruments (P7). Notaries, clergy, Survey Office clerks, and some Remembered can compose it. Most people can only recognise it. Vesper March working name: *charter-speech*; other regions use other words. Build its vocabulary from scratch; **no** words adapted from *Dark Tower* High Speech or dialect
- The rulebook's GM chapter may use technical terms. Player chapters may not.

### 7.7 Core mechanics integration **[CANON — engine preserved]**

No change to the resolution system or resource economy.

| Element | Role in Hollow Frontier |
|---|---|
| Sōma, Akmē, Psychē, Pneuma | Unchanged attribute functions |
| Tychē | Personal narrative currency; rewards Beliefs, Goals, and Instincts that force characters to take a position in political and moral disputes |
| Momentum | Shared tactical resource; supports coordinated action when the party finds a way through |
| Woe | Escalating pressure and consequence — failing systems, exposed secrets, frightened crowds, hungry predators, delay. **Not** a measure of supernatural evil |
| Truths | Establish local realities: *the pumps cannot stop*; *the compact forbids forced feeding*; *the Lady's ledger is missing* |
| Clocks | Concrete developments: a vampire's blood debt, a reservoir's contamination, a council preparing to revoke a charter |

**[PROPOSED] Blood debt as a Clock:** represent an NPC vampire's deprivation as a six-segment clock, one segment per week overdue. The final segment is husk dormancy (§5.8). The GM tracks the schedule (§5.4); players see only the escalating symptoms.

### 7.8 Character options mapping **[CANON — options preserved / PROPOSED framing]**

Generic playbooks — **Bellator, Furcifer, Savant, Interlocutor, Explorator, Adept** — remain the setting-neutral foundation.

| Playbook / Option | Hollow Frontier basis |
|---|---|
| Sellsword | Retainer, veteran, militia captain, hired enforcer in succession disputes |
| Stalker | Tracker of predators, fugitives, missing donors, and lost expeditions |
| Frontier Doctor | Medicine, transfusion practice, inherited procedures, dangerous diagnostic equipment; the most likely class to learn blood-debt specifics |
| Broker | Negotiator of access, passage, levies, debts, and protection arrangements |
| Rider | Courier, outrider, scout; carries letters, ledgers, and blood across contested ground |
| Occultist | Student of apparently supernatural phenomena through ritual tradition, observation, and fragmentary old knowledge |
| Mutant | Inherited modification, environmental adaptation, or unstable treatment |
| Cyborg Hunter | Integrated machinery, specialist maintenance, scarce components, institutional ties |
| Warden | Bound to a locality, household, institution, or agreement |
| Dhampir (Focus: *Carries Her Mother's Blood*) | Child of a vampire mother carrying a partial nanite population (§5.12, Appendix A). The only afflicted player option — **no full vampire PCs** |

---

## 8. Starting Region: The Vesper March

> **Working name.** "Vesper March" overlaps with the *BattleTech* faction the Vesper Marches; rename before publication (§10.4, Q36).

**[PROPOSED]** A fertile river corridor divided among a city, several landed houses, religious estates, and declining industrial districts. Its defining feature is a chain of ancient **treatment works** providing uneven access to clean water, medicine, and blood-processing equipment. **No faction controls the whole chain.**

### 8.1 Local powers

| Power | Public claim | Leverage | Internal problem |
|---|---|---|---|
| **The March Assembly** | The towns must govern themselves | Revenue, trade, civic militias | Members cannot agree on who deserves citizenship |
| **House Veyr** | Its ancient stewardship guarantees stability | Estates, retainers, infrastructure access | Its vampire head remembers less than the household admits |
| **The House of Mercy** | Treatment should not depend on rank | Clinics, trained attendants, public trust | Its blood service supports arrangements some members condemn |
| **The Survey Office** | Boundaries and obligations must follow the records | Maps, archives, inspections, legal recognition | Its oldest records contradict one another |

These are local institutions, not world-spanning factions. Names may change without disturbing the structure.

### 8.2 GM-only notes for the March **[PROPOSED]**

- House Veyr's head is a Remembered vampire whose pre-collapse role was administrative, not technical. The household's "ancient stewardship" rests partly on the head's ability to open one treatment work (§5.9).
- The House of Mercy runs the region's largest Exchange. Some of its collected blood leaves the March under contract.
- The Survey Office holds at least one old-world record that names the treatment works' original owners — none of whom is House Veyr.
- **[CANON — Q40] The Order of the Last Guns** (working name) was a regional order of armed charter-enforcers in a **neighbouring province**, not the March. It was destroyed in a succession war there. The March receives only its aftermath: refugees, claimants, and a few of its irreproducible relic sidearms. Each sidearm is a proof of claim. Some carry their own biometric locks (separate from nanite tags) and fire only for people registered in the order's armoury log. The order's full history stays offstage until a supplement covers that province (*Dark Tower* review D4).

---

## 9. Adventure Seeds

### 9.1 The Second Testament **[PROPOSED — primary opening mystery]**

A vampire landholder announces a new will after three centuries of refusing to name an heir. Before it can be witnessed, they apparently die in a locked chamber. Their latest blood supply has vanished. Two heirs produce different testaments, and a nearby town claims the death ends its obligations to the estate.

The body shows advanced deprivation — and evidence of a recent attempt to create another vampire.

**Questions driving the investigation**

- Is the landholder actually dead? (If the body has dried to a husk, the answer is no — and someone may be about to burn it.)
- Who was the intended recipient of the conversion?
- Which testament, if either, reflects a voluntary decision?
- Does an agreement with one person survive that person's transformation, incapacitation, or death?
- What happens to the estate's dependants if the town wins its freedom?

**Three-layer structure (I1)**

| Layer | Content |
|---|---|
| Apparent event | A curse or murder has killed an ancient lord in a sealed room |
| Material mechanism | GM to decide: deliberate deprivation, sabotage of supply, failed conversion, or staged death inside a preservation chamber |
| Political consequence | Succession, the town's charter, the dependants' welfare, and who gets to declare the lord dead |

This introduces blood dependence, historical uncertainty, conversion, and contested authority through one manageable case — without ever stating the word "nanite."

### 9.2 The Town That Paid Twice **[PROPOSED — adapted from superseded concept]**

Originally written for the Continuance concept (§12). Adapted to current canon:

The party escorts replacement parts to a failing treatment work. At their destination, the town has doubled its blood levy. Its vampire physician claims the extra blood is needed to treat a spreading illness.

The illness is real. So is the physician's attempt to treat it. But the infection originates in the water supply, and the treatment apparatus is quietly worsening the physician's own maintenance needs. The treatment work's controls refuse a shutdown, and only the physician can operate them.

Killing the vampire is possible. It is not equivalent to solving the crisis.

### 9.3 Quick seeds **[PROPOSED]**

- A sealed chamber opens for a village girl with no known vampire relatives.
- A saint's reliquary begins speaking again, in a language only one Remembered vampire claims to understand.
- A levy collector is found drained; the household's ledger shows its vampire was fully fed that week.
- A besieged lord's vampire ally has been cut off from supply for four weeks. The siege lifts tomorrow.
- An Afterborn ruler insists on a coffin rite; the old physician who knew why it worked has just died.

---

## 10. Rulebook Revision Plan

### 10.1 Element-by-element treatment **[PROPOSED]**

| Existing element | Treatment |
|---|---|
| Frontier settlements and dangerous travel | Retain; tie survival to routes, charters, treatment works, and blood supply |
| Vampire antagonists | Retain; give distinct origins, needs, and political positions |
| Unified vampire "Nobility" | Replace with independent households, individuals, and local blood arrangements |
| "Noble science" | Divide into old-world technology, later human engineering, and vampire-specific practice |
| Ancient castles | Retain selectively; mix with fortified hospitals, treatment-work keeps, industrial estates, inhabited ruins |
| Franchise protagonist references | Remove entirely; distribute narrative weight among local figures and PCs |
| Dhampir option | Keep the term; give it a new origin (§5.12) and independently written abilities and text |
| Bounties | Retain alongside investigations, recovery contracts, escort work, and succession disputes |
| Descriptors, playbooks, Foci | Preserve; review wording and provenance separately |
| Franchise history and lore | Replace with Hollow Frontier history (§4) |

### 10.2 Chapter-level rules

- **Introduction and setting chapters:** observable conditions and attributed beliefs only.
- **Character options:** capabilities, needs, and limits — never microscopic causes.
- **Vampire feeding rules:** what a vampire character experiences and manages.
- **GM setting chapter:** the longevity treatment, nanites, conversion, blood debt, afflicted-responsive systems, and limits of surviving knowledge.
- **Adventures:** every clue states what it shows, what people believe it shows, and what remains uncertain.
- **[CANON — Q41] Hunters' field guide handout.** The **Stalker** chapter includes an in-world hunters' classification of vampires (**Winterers**, **Strays**, **Tapsters**) as a player-facing handout. The **Occultist** chapter cross-references it. It is written entirely in-world, accurate about what hunters observed and wrong about causes. It never states the GM truth (§5.10, F5). Threat ranks (B.5.1) stay the GM's actual measure. The GM key is in the *Dark Tower* review, D8.

### 10.3 Clearance checklist (carried forward from the copyright review)

- [ ] Remove "inspired by Vampire Hunter D" from the cover tagline.
- [ ] Remove the "unofficial fan adaptation" colophon and replace with original credits.
- [ ] Remove every reference to D and franchise setting material.
- [x] Rename the `docs/VampireHunterD/` folder (now `docs/HollowFrontier/`, v0.11).
- [ ] Rename the `.typ` file, the `vhd-*.md` files and the remaining *Vampire Hunter D* file names (waiting on the publishable title, Q16).
- [ ] Build a provenance ledger for borrowed mechanics (Fate, Cypher, 2d20, Blades in the Dark, others) and confirm licence compliance against the official SRDs.
- [ ] Apply the originality guardrails in §3.5 to all new setting text.
- [ ] Choose and clear a publishable title (Q16). Neither working name is recommended for sale: "Hollow World" is a 1990 TSR *D&D* setting still in print, and "Hollow Frontier" is an existing post-collapse game on Steam.
- [ ] Obtain U.S. IP attorney review before commercial release.

---

### 10.4 Title and naming screen **[PROPOSED — Q16, Q36]**

A quick web screen run on 2026-10-16 to look for existing games, tools, and books using each candidate name. **This is not trademark clearance.** The final choice still needs a USPTO search and the attorney review in §10.3.

#### Brainstormed candidates

| Theme | Candidates |
|---|---|
| The vampires and their names | Afterborn, The Kept, The Long-Lived, The Remembered, The Dry Dead |
| Blood and debt | Blood Debt, Half a Litre, The Levy, The Arrears, Red Ledger, Tithe of Veins |
| Inheritance and legitimacy | Testament, Second Testament, Writ of Blood, Disputed Blood, Claimant, Blood Charter |
| Investigation | Blood Inquest, Inquest, Locked Rooms and Long Lives |
| The buried old world | The Unremembered, Old-Work, Sleeping Iron, Buried Light, What the Old World Kept |

Suggested format: **Title: Subtitle**, with the existing tagline *"Roads through a broken world. Blood behind every bargain."*

#### Conflicts found — avoid

| Candidate | Conflict |
|---|---|
| Hollow World | TSR *D&D* campaign setting (1990), still sold as a reprint |
| Hollow Frontier | Existing post-collapse survival game on Steam |
| The Kept | *KEPT*, a horror visual novel; *The Well Kept*, a dark-fantasy game |
| Blood Debt | Several existing games, including a cyberpunk roguelite |
| Blood Ledger | A *Vampire: The Masquerade* character tool — bad confusion in the vampire genre |
| The Arrears | *ARREARS*, a debt-themed action game |
| The Unremembered | *THE UNREMEMBERED*, a dark-fantasy game about rival houses and succession — very close to this premise |
| Vein … | *VEIN*, a post-apocalyptic survival game |
| Red Tithe | Too close to Sine Nomine's *Red Tide* RPG setting |
| Sealed in Blood | A cult ability in *Blades in the Dark*, already a mechanics source for this game |
| Writ of Blood | Close to a *Vampire: The Masquerade* ritual name |
| Second Testament | An existing New Testament edition |
| Blood Inquest | Partial overlap with *Blood of Inquisition* (Steam) and an *Inquest* detective app |

#### Shortlist

| Rank | Title | Strengths | Weaknesses |
|---|---|---|---|
| 1 | **Afterborn** *(recommended)* | No conflicts found; a term the setting invented; suggests both post-collapse life and vampires | Names the newer vampires, not the PCs; faint echo of "afterbirth" |
| 2 | **Blood Inquest** | Signals investigation and legitimacy; "inquest" has the legal edge of disputed wills and deaths | Moderate overlap (see above) |
| 3 | **Testament** + qualifier | Ties to *The Second Testament* opening mystery and to inheritance | Too common alone; qualifier not yet screened |
| 4 | **Half a Litre** *(wild card)* | Darkly comic in the Lawrence manner; memorable; specific to the rules | May read as too light for a cover |
| 5 | **The Long-Lived** | Plainly describes the setting; no game conflicts found | An ordinary phrase; hard to protect as a trademark |

**Recommended direction:** *Afterborn*, with a subtitle that brings in investigation — for example *Afterborn: Blood, Inheritance, and the Old World*.

#### Starting region name

**Vesper March** overlaps with the **Vesper Marches**, an established *BattleTech* faction. A region inside the book carries less risk than a cover title, but renaming it before publication avoids the overlap. Until then, *Vesper March* stays the working name (Q36).

## 11. Open Questions

### 11.1 Resolved

| # | Question | Ruling | See |
|---|---|---|---|
| Q1 | Title | Keep *Hollow Frontier* as working title; brainstorm a publishable title later | §10.3, Q16 |
| Q2 | Blood-debt curve | Doubling schedule approved | §5.4 |
| Q3 | Collective names | "Remembered" and "Afterborn" approved | §4.7 |
| Q4 | Folklore protections | Assignment table approved | §5.10 |
| Q5 | Rarity of the Remembered | Very rare; Afterborn far outnumber them | §4.7 |
| Q6 | Conversion success | Maker, recipient, and equipment; equipment weighs most | §5.7 |
| Q7 | Cure | Unknown; deliberately left undefined | §5.16 |
| Q8 | Dhampir naming | Keep "dhampir" — a widely used folkloric term | §5.12 |
| Q9 | Afflicted-responsive systems | Approved; RFID-like identity tag in the nanites; lineages linked to a pre-collapse identity | §5.9 |
| Q10 | Vampire PCs | No full vampire player characters | §6.6 |
| Q11 | Vesper March common name | "The Kept" (polite) and "leeches" (vulgar) approved | §7.6 |
| Q12 | Other old-world survivals | Digital Facsimiles exist; never call them data echoes | §5.15 |
| Q13 | Extreme deprivation | Dormancy as a dried-out husk; extra flammable | §5.8 |
| Q14 | Reproduction | Tentative yes: female vampires may pass nanites to a child; miscarriage frequent | §5.13 |
| Q15 | Age | Age at treatment kept; those treated young mature to about mid-twenties, then stop | §5.14 |
| Q17 | Husk revival | About three adult humans' worth of blood (≈ 15 L); debt stops compounding at onset | §5.8 |
| Q18 | Husk onset | Weeks 5–7, earlier for injured or old vampires | §5.8 |
| Q20 | Vampire fathers | Can sometimes father children; low sperm count; no nanite transmission | §5.13 |
| Q21 | Digital Facsimiles | Proposal accepted: hardware-bound, record-built, unreliable; speaking saints, oracles, wall-ghosts | §5.15 |
| Q23 | Tag logs | Yes, logs exist; the difficulty is accessing them | §5.9 |
| Q22 | Tag degradation | Middle option: depends on conversion quality, not generation count | §5.9 |
| Q24 | Tag log access | Proposal accepted: authority, location, broken interfaces, format, ownership | §5.9 |
| Q25 | Tag repair | Unknown; deliberately left undefined | §5.9 |
| Q19 | Dhampir Focus rework | Appendix A accepted | Appendix A |
| Q26 | Frontier Rules conflicts | Revised in Appendix B | Appendix B |
| Q27 | Vampire night vision | Yes; ultraviolet light also inhibits the nanites | §5.10, B.4 |
| Q28 | Animal blood | Partially sustains (half value) | B.5.4, A.3 |
| Q29 | Dhampir children | Nothing passed on | §5.12 |
| Q31 | Currency | The mark | B.8.2 |
| Q32 | Shed blood and tags | Yes, for a limited time; a vial opens the bloodline's doors | §5.9, B.9 |
| Q33 | Sun and collapsed vampires | A full day in direct sun destroys a collapsed vampire | B.7.1, B.8.1 |
| Q34 | Threat ranks | Minor / Established / Great / Paramount, by power not age | B.5.1 |
| Q35 | Apply Appendices A and B to the repository | Applied on branch `feat/hollow-frontier-frontier-rules`, [PR #19](https://github.com/SkroxiousDM/2d12GameSystem/pull/19); awaiting review and merge | B.19 |
| Q37 | Long Levy returnees | Not dhampirs; separate failed-conversion condition; carry a degraded maker-lineage tag; NPC only | §5.12 |
| Q38 | Portable facsimiles | No. Fixed-route hardware allowed; speech at a distance only through relays in range of the home site | §5.15 |
| Q39 | Formal legal register | Adopted as P7; register errors are grounds to challenge, not automatic voiding | §7.3, §7.6 |
| Q40 | Order of the Last Guns | Neighbouring province; the March gets claimants, refugees, and relic sidearms | §8.2 |
| Q41 | Hunters' taxonomy handout | Yes; Stalker chapter, cross-referenced in Occultist; in-world only. Classes: Winterers, Strays, Tapsters | §10.2 |
| Q42 | Satellite coverage under open sky | The moving lights: surviving orbital relays carry a Passenger's voice under open sky on 9+ on a d12 per scene; traffic can be overheard; Truth 11 adds a watcher | §5.15; rulebook Frontier Rules §9.3 |

### 11.2 Still open

| # | Question | Current proposal |
|---|---|---|
| Q16 | Publishable title | Shortlist in §10.4: Afterborn (recommended), Blood Inquest, Testament + qualifier, Half a Litre, The Long-Lived. Needs USPTO search and attorney review |
| Q36 | Rename the Vesper March? | Overlaps with *BattleTech*'s Vesper Marches; keep as working name, rename before publication |
| Q30 | Psychic and possession Focuses (*Sends the Mind Abroad*, *Carries a Passenger*) need a material basis or reframing to fit the technological foundation | **Partly resolved by Q38, and applied to the rulebook (B.20):** *Carries a Passenger* must use a relay-linked facsimile with a range limit (the Tethered Voice), not a carried one. *Sends the Mind Abroad* is still open; the *Dark Tower* review §4 recommends the Relay-Sense (an implant reading surviving old-world networks). Consider whether the Relay-Sense can also reach through the moving lights (Q42); if it does, give it the same open-sky limit and overhearing risk |

## 12. Superseded Concepts Archive

Retained for reference. **Do not use** without re-approval.

### 12.1 The Continuance **[SUPERSEDED]**

A single world-spanning preservation network — buried engines, biological archives, climate works, and AIs — that fractured and now enforces conflicting instructions. **Replaced because** it explained too much through one origin and made malfunctioning infrastructure the main antagonist. Its core image (a world endangered by its own attempts to save itself) survives in smaller, plural forms.

### 12.2 The Red Inheritance and lineages **[SUPERSEDED]**

Vampirism as a failed Continuance life-preservation branch, with lineages: the Remembering, Rootbound, Glassblooded, Borrowers, and Wakeful. **Replaced by** the nanite longevity treatment and the Remembered/Afterborn cultural divide. Individual lineage ideas could return as rare conversion variants (§5.7, V8).

### 12.3 Lantern March **[SUPERSEDED]**

A chain of settlements along a maintenance route lit by failing signal towers. **Replaced by** the Vesper March, which is more politically concentrated.

### 12.4 Earlier institutions **[SUPERSEDED / available for reuse]**

Charter Towns, Custodians, Blood Compacts, Passage Houses, and the Unregistered. Not adopted as canon. Blood Compacts in particular could return as the formal name for a negotiated Household or Levy arrangement; Passage Houses suit Rider and Broker play.

---

## 13. Decision Log

| Date | Decision | Status |
|---|---|---|
| 2026-10-15 | Copyright/trademark review finds the master rulebook high-risk for U.S. commercial sale due to explicit Vampire Hunter D adaptation | Finding |
| 2026-10-16 | Rebrand: preserve 2d12 engine, attributes, Tychē, Momentum, Woe; targeted revision; develop new setting concept | **[CANON]** |
| 2026-10-16 | Continuance concept drafted | **[SUPERSEDED]** |
| 2026-10-16 | Inspirations: Mark Lawrence's Broken Empire and Gene Wolfe's Book of the New Sun | **[CANON]** |
| 2026-10-16 | Technological foundation; supernatural phenomena arise from ancient science | **[CANON]** |
| 2026-10-16 | Vampires from a pre-collapse blood-nanite longevity experiment; many remember the pre-collapse world; later vampires lean into folklore; conversion by nanite transfusion into a drained body | **[CANON]** |
| 2026-10-16 | Focus on gothic mysteries and politics; preserve mechanics and character options | **[CANON]** |
| 2026-10-16 | ≈ 0.5 L weekly; exponential increase when stretched; absorption through skin, gut, or transfusion | **[CANON]** |
| 2026-10-16 | Nanites are not player-facing knowledge | **[CANON]** |
| 2026-10-16 | Compile all refinement notes into this Hollow World setting design document | v0.1 |
| 2026-10-16 | Keep *Hollow Frontier* as working title; publishable title later | **[CANON]** |
| 2026-10-16 | Approve doubling blood-debt schedule, Remembered/Afterborn names, folklore protection table, Remembered rarity, conversion success factors | **[CANON]** |
| 2026-10-16 | Cure: unknown, deliberately undefined | **[CANON]** |
| 2026-10-16 | Keep the term "dhampir" | **[CANON]** |
| 2026-10-16 | Nanites carry an RFID-like identity tag; vampire lineages link to a pre-collapse identity | **[CANON]** |
| 2026-10-16 | No full vampire player characters | **[CANON]** |
| 2026-10-16 | Vesper March terms: "the Kept" and "leeches" | **[CANON]** |
| 2026-10-16 | Digital Facsimiles exist; never called data echoes | **[CANON]** |
| 2026-10-16 | Extreme deprivation ends in husk dormancy; husks are extra flammable | **[CANON]** |
| 2026-10-16 | Female vampires may pass nanites to a child; miscarriage frequent | **[CANON — tentative]** |
| 2026-10-16 | Age kept at treatment; those treated young mature to about mid-twenties | **[CANON]** |
| 2026-10-16 | Husk revival ≈ 15 L (three adults' worth); onset weeks 5–7 | **[CANON]** |
| 2026-10-16 | Male vampires: occasional fertility, low sperm count, no nanite transmission | **[CANON]** |
| 2026-10-16 | Digital Facsimile proposal accepted | **[CANON]** |
| 2026-10-16 | Tag logs exist; access is the obstacle | **[CANON]** |
| 2026-10-16 | Tag degradation: implications to be considered; not canon | **[SUPERSEDED]** |
| 2026-10-16 | Tag degradation depends on conversion quality (middle option) | **[CANON]** |
| 2026-10-16 | Tag log access obstacles accepted | **[CANON]** |
| 2026-10-16 | Tag repair: unknown | **[CANON]** |
| 2026-10-16 | Dhampir Focus rework drafted (Appendix A) | **[PROPOSED]** |
| 2026-10-16 | Dhampir Focus rework accepted | **[CANON]** |
| 2026-10-16 | Vampires see in the dark; UV inhibits the nanites | **[CANON]** |
| 2026-10-16 | Animal blood partially sustains; dhampirs pass nothing to children | **[CANON]** |
| 2026-10-16 | Frontier Rules revised to match canon (Appendix B) | **[DRAFT]** |
| 2026-10-16 | Approved: the mark (currency), shed blood carries tags, full-day sun destroys a collapsed vampire, threat ranks | **[CANON]** |
| 2026-10-16 | Title shortlist and Vesper March naming issue recorded (§10.4) | **[PROPOSED]** |
| 2026-10-16 | Appendices A and B applied to the master rulebook, character sheet and `vhd-*.md` files; [PR #19](https://github.com/SkroxiousDM/2d12GameSystem/pull/19) opened against `main` | **[APPLIED — pending merge]** |
| 2026-10-16 | *Dark Tower* elements review compiled (companion document); King's *Dark Tower* is a supplementary reference for situations and atmosphere only, with its clearance list added to §3.5 | **[CANON]** |
| 2026-10-16 | Q37: failed-conversion survivors are not dhampirs; separate NPC-only condition with a degraded maker-lineage tag; dhampir origin stays mother-only; Long Levy mechanism option A adopted, option B retired | **[CANON]** |
| 2026-10-16 | Q38: no portable Digital Facsimiles; fixed-route hardware and relay speech within range allowed | **[CANON]** |
| 2026-10-16 | Q30 partly resolved: *Carries a Passenger* uses the Tethered Voice; *Sends the Mind Abroad* still open | **[CANON — partial]** |
| 2026-10-16 | Q39: formal register for binding instruments adopted as political rule P7; errors are grounds to challenge | **[CANON]** |
| 2026-10-16 | Q40: Order of the Last Guns placed in a neighbouring province; the March receives its claimants and relic sidearms | **[CANON]** |
| 2026-10-16 | Q41: in-world hunters' field guide handout goes in the Stalker chapter, cross-referenced in Occultist | **[CANON]** |
| 2026-10-16 | Q37–Q41 applied to the master rulebook; *Carries a Passenger* rewritten as the Tethered Voice and moved to Old-World Focuses (B.20) | **[APPLIED — review]** |
| 2026-10-16 | Q41 amended: field-guide classes renamed **Winterers**, **Strays**, **Tapsters** | **[CANON]** |
| 2026-10-16 | Order Sidearm numbers and the Passenger's default range confirmed as written in B.20 | **[CANON]** |
| 2026-10-16 | Q42: the moving lights (surviving orbital relays) carry a Passenger's voice under open sky, 9+ on a d12 per scene, with an overhearing risk; Truth 11 adds an observation platform; rulebook Frontier Rules §9.3 added | **[CANON]** |
| 2026-10-16 | Folder `docs/VampireHunterD/` renamed `docs/HollowFrontier/`; design documents moved to `docs/HollowFrontier/design/`. File names unchanged pending Q16 | **[APPLIED — review]** |

---

## 14. Sources

Literary reference material used in §3:

- The Grimoire — *Prince of Thorns* review: https://thegrimoire.co/books/prince-of-thorns/
- The Grimoire — Mark Lawrence reading order and setting overview: https://thegrimoire.co/reading-orders/mark-lawrence/
- Grimdark Magazine — Review of *Prince of Thorns*: https://www.grimdarkmagazine.com/review-prince-of-thorns-by-mark-lawrence/
- Editors Reads — *Prince of Thorns* review and summary: https://www.editorsreads.com/books/prince-of-thorns/
- LitLoop — *Prince of Thorns* review: https://www.litloop.co/blog/prince-of-thorns-review/
- The Fantasy Reviews — *Prince of Thorns* review: https://thefantasyreviews.com/2024/02/15/book-review-prince-of-thorns-by-mark-lawrence/
- Tenacious Reader — *Prince of Thorns* review: https://tenaciousreader.com/2013/12/05/prince-of-thorns-the-broken-empire-1-by-mark-lawrence-mild-spoilers/?ak_action=reject_mobile
- Scifi Dimensions — *The Book of the New Sun*: https://www.scifidimensions.com/the-book-of-the-new-sun-gene-wolfe-a-journey-into-dying-light/
- Catholic Culture — *Book of the New Sun* commentary: https://www.catholicculture.org/commentary/catholic-sci-fi-classic-gene-wolfes-book-new-sun/
- SpacePunk Press — *The Book of the New Sun*: https://spacepunkpress.com/news/book-of-the-new-sun
- TV Tropes — *The Book of the New Sun*: https://tvtropes.org/pmwiki/pmwiki.php/Literature/BookOfTheNewSun

Title conflicts noted in §10.3 and Q16:

- Wikipedia — *Hollow World Campaign Set* (TSR, 1990): https://en.wikipedia.org/wiki/Hollow_World_Campaign_Set
- Wayne's Books — *Hollow World* reprint availability: https://waynesbooks.games/2020/12/03/hollow-world-a-dd-pulp-fantasy-campaign-setting-1990/
- Steam — *Hollow Frontier* (video game): https://store.steampowered.com/app/3479240/Hollow_Frontier/

Title and naming screen (§10.4):

- SteamPeek — *KEPT*: https://steampeek.hu/?appid=4950870
- SteamDB — *The Well Kept*: https://steamdb.info/app/4985850/
- itch.io — *Blood Debt*: https://radsi-jay.itch.io/blood-debt
- Blood Ledger (VtM 5E tool): https://blood-ledger.online/en
- itch.io — *ARREARS*: https://hollowsoftwares.itch.io/arrears
- Steam — *THE UNREMEMBERED*: https://store.steampowered.com/app/4919460/THE_UNREMEMBERED/
- SteamDB — *VEIN*: https://steamdb.info/app/1857950/charts/
- *Red Tide* review (Sine Nomine): https://www.scribd.com/document/404055078/Scarlet-Hero-and-Red-Tide-Duet-RPG-Info
- Reddit — *Blades in the Dark* "Sealed in Blood": https://www.reddit.com/r/bladesinthedark/comments/1k01dif/sealed_in_blood_question/
- White Wolf Wiki — Thaumaturgy rituals: https://whitewolf.fandom.com/wiki/List_of_Thaumaturgy_Rituals
- Olive Tree — *The Second Testament*: https://www.olivetree.com/store/product/33291
- Steam — *Blood of Inquisition*: https://store.steampowered.com/app/3121330/Blood_of_Inquisition/
- Google Play — *Inquest* detective game: https://play.google.com/store/apps/details?id=com.inquest.app&hl=en_US
- Sarna.net — Vesper Marches: https://www.sarna.net/wiki/Vesper_Marches
- BattleTech — Vesper Marches faction: https://battletech.com/factions/vesper-marches/

Supplementary reference (*Dark Tower* elements review, Q37–Q41):

- Wikipedia — Roland Deschain: https://en.wikipedia.org/wiki/Roland_Deschain
- Wikipedia — *The Dark Tower V: Wolves of the Calla*: https://en.wikipedia.org/wiki/The_Dark_Tower_V:_Wolves_of_the_Calla
- Wikipedia — *The Little Sisters of Eluria*: https://en.wikipedia.org/wiki/The_Little_Sisters_of_Eluria
- Reactor — *Wolves of the Calla*, "The Priest's Tale": https://reactormag.com/a-read-of-the-dark-tower-constant-reader-tackles-wolves-of-the-calla-part-2-qtelling-talesq-chapter-3-qthe-priests-tale-new-yorkq-sections-1-9/
- Dark Tower Wiki — Vampires: https://darktower.fandom.com/wiki/Vampires
- Dark Tower Wiki — Blaine the Mono: https://darktower.fandom.com/wiki/Blaine_the_Mono
- Full source list: companion *Dark Tower Elements Review*, §7

Repository files reviewed for Appendix A (then in `docs/VampireHunterD/`, now `docs/HollowFrontier/`): `vampire-hunter-d-2d12-v2-master-rulebook.typ`, `vhd-focuses.md`, `vhd-setting-rules.md` in `SkroxiousDM/2d12GameSystem`.

Internal sources: Hollow Frontier refinement sessions of 2026-10-15 and 2026-10-16 (copyright review, rebrand concept, setting refinement, feeding rules, knowledge-layer decision), the open-question rulings of 2026-10-16, and the Broken Empire / Red Queen's War technology inventory session of 2026-10-16.

---

## Appendix A. Dhampir Focus Rework **[CANON — Q19]**

Source reviewed: *Carries the Blood of the Nobility* ◈ and Frontier Rules §7 (Sunlight Syndrome, the Thirst) in `vampire-hunter-d-2d12-v2-master-rulebook.typ`, mirrored in `vhd-focuses.md` and `vhd-setting-rules.md`.

### A.1 Impact audit

| Current element | Conflict with Hollow Frontier canon | Proposed treatment |
|---|---|---|
| Name and quote: "half-human, half-Noble" | No Nobility (§10.1). A dhampir is a human carrying part of their mother's affliction (§5.12, §5.13); the father contributes nothing | Rename the Focus; rewrite the quote |
| *the strength of the Nobility* | Nobility reference | *stronger than I look* |
| *eyes that see in the dark*; ignore darkness Truths | Confirmed: vampires see in the dark (Q27) | Keep |
| Sense any Noble within sight | No mechanism in canon. Canon gives dhampirs **blood sensitivity** | Replace with sensing blood and telling afflicted blood from ordinary |
| Can't be *Kissed* or Turned | Canon: feeding never converts (V7), so the Kiss as written contradicts canon. A partial inheritance plausibly makes conversion **easier**, not impossible | Remove the immunity. Make dhampirs desirable conversion subjects — a weakness, not a shield |
| *half-blood* → *Feared and Despised* | Still valid among commoners, but canon also makes a dhampir a valuable heir and a partial key to old-world systems (§5.9, §5.13) | Two-sided weakness: feared by commoners, coveted by vampire households |
| Sunlight Syndrome | Consistent: sunlight is a real weakness that impairs repair (§5.10) | Keep. Add: no regeneration bonuses in direct sun |
| The Thirst (status 0–6) | Mostly consistent. Two conflicts: feeding methods should follow canon (drunk, through skin, transfusion); tier 6 Bloodlust hands control to the GM, contradicting V11 (hunger never removes responsibility outright) | Keep the status; trigger feeding by amount rather than willingness; replace Bloodlust with a player choice |
| No weekly blood need stated | Q19 asked whether dhampirs need regular blood | **No calendar requirement.** Thirst rises from strain, injury, and blood nearby only (see A.3) |
| 2a Dhampir Regeneration | Consistent with partial repair | Keep; blocked in direct sun |
| 2b The Noble Gaze | Hypnotic gaze has no material basis in canon | Replace with **Read the Blood** — an investigative ability tied to blood sensitivity and lineage (§5.9) |
| 3a Night Walker | Night is not a power source in canon; it is only the absence of sun | Replace with **Mother's Key** — use of the inherited tag fragment. Combat variant kept as an optional swap |
| 3b ★ Awaken the Blood | Consistent: the partial affliction pushed past its limits | Keep; witnesses now treat you as one of the Kept |
| Table option *Rare blood* | Canon makes dhampirs genuinely rare (frequent miscarriage, mother-only transmission) | Recommend as the default |
| Ageing | Not addressed | Slowed ageing after maturity (A.5) |

### A.2 Reworked Focus — player-facing text

> Contains no hidden-lore terms. Safe for the player chapter.

#### Carries Her Mother's Blood ◈

> Dhampir. Born to one of the Kept, and carrying a little of what she is. Tougher than you should be, slower to age, never easy in the sun — and worth more to certain people than you'd like.

- **Power tags:** *stronger than I look*, *eyes that see in the dark*
- **Weakness tag:** *my mother's blood* — when recognised, the scene gains *Feared and Despised* among common folk, **or** draws the interest of a vampire household that wants you as an heir, a key, or something worse (GM's choice; compel normally)
- **PC link:** "[PC] knows who my mother was. I've never asked how."

| Tier | Ability | Effect |
|---|---|---|
| 1 | **Mother's Blood** | You notice fresh blood anywhere in the scene, and by scent or taste you can tell the blood of the afflicted from ordinary blood. A short rest restores **2 + Edge** Sōma (not in direct sunlight). Some old-world doors and instruments respond to you: when you try to make one work, *my mother's blood* counts as a tag, and works best on things tied to her line. You're subject to **Sunlight Syndrome** and **the Thirst** (Frontier Rules §7). |
| 2a | **Dhampir Regeneration** | Once per scene, lower one physical status by **2 tiers** (no roll). Not in direct sunlight. Thirst +1. |
| 2b | **Read the Blood** | Touch or taste a blood sample (a scene, no roll) to learn: whether it is afflicted, a dhampir's, or ordinary; whether the afflicted person it came from was well fed or starving; and roughly how long ago it was shed. With **1 Power** from a Discover effect, also learn whether two afflicted samples share a bloodline. Thirst +1 each time. |
| 3a | **Mother's Key** | Old-world systems tied to your mother's line accept you as one of her line. **Once per session**, make one such system open, start, stop, or show its records — no roll. On systems of other lines, *my mother's blood* gives a free bonus die. The GM may spend **2 Woe** to have the system note your visit somewhere someone will notice. |
| 3b | **★ Awaken the Blood** | Once per scene, let your mother's blood rise (*Thirst*): until the scene ends, you get **+2 bonus dice** free on physical rolls, your Attacks inflict **+1 tier**, and your physical statuses can't go above tier 5. Afterwards, Thirst +2, and anyone who saw it treats you as one of the Kept. |

**Optional swap for combat-focused tables** — replace 3a with:

| Tier | Ability | Effect |
|---|---|---|
| 3a (alt) | **Knows How They Die** | Your Attacks against the afflicted inflict **+1 tier** when they are *Sun-Sick*, *starving*, or *broken*, and your blade counts as the beheading bane against an afflicted target with a tier-4+ physical status. |

**Table options (choose at session zero):**

- **Rare blood** *(recommended default)*: only one PC in the party can take this Focus.
- **Costly blood:** this Focus costs **1 Refresh** at creation.
- **The sun is merciless:** Sun-Sick gains +2 per scene instead of +1.
- **Known mother:** your mother is alive and identified at creation. She is an NPC with her own household and agenda. Gain a free bonus die on your first Mother's Key or Read the Blood roll involving her line each session; the GM gains 1 Woe at the start of each session she is involved.
- **Unknown mother:** you don't know who she was. Finding out is a Goal; the GM secretly decides her line.

### A.3 Reworked Frontier Rules §7 — Afflicted Blood

Rename §7 from "Noble Blood" to **"Afflicted Blood: Sunlight Syndrome and the Thirst."** It applies to dhampirs and, if retained, to mutants and cyborgs built with afflicted parts.

#### Sunlight Syndrome

Unchanged mechanics (Sun-Sick +1 per scene in direct sun, +2 under *Merciless Sun*; Resist with Sōma; shade recovers 2 tiers; clears at night; tier 6 collapse). **Add:** while Sun-Sick is at tier 1+, abilities that restore or lower physical statuses through the affliction (Mother's Blood rest bonus, Dhampir Regeneration) don't work.

#### The Thirst

**No calendar requirement.** A dhampir does not need blood every week. Thirst rises only from what happens to them.

| Trigger | Thirst |
|---|---|
| A scene with fresh blood spilled nearby | +1 |
| You're Taken Out, or a pool drops to 2 or less | +1 |
| You use an ability marked *Thirst* | +1 (or as listed) |
| The GM compels the Thirst and you accept (gain a Tychē Point) | +1 |
| A full night of rest | −1 |
| Animal blood (a scene, no roll) | −1 |
| A cup or so of human blood — drunk, through broken skin, or by transfusion (a scene, no roll) | −2 |
| Half a litre or more of human blood at once | Clear completely. If taken by force, gain a Pneuma Scar the first time (*I've tasted it*) |

| Thirst tier | Effect |
|---|---|
| **0–2** | No effect |
| **3–4** | −1 on Pneuma rolls when blood is visible. Others notice you're hungry (Empathy, Notice) |
| **5** | Every scene with a bleeding human, Resist with Pneuma or move toward them |
| **6** | **Blood Crisis:** you choose — feed from the nearest source this scene, **or** refuse, collapse (Taken Out), and gain a Pneuma Scar. Either way, Thirst drops to 3 afterwards |

**Never feeding** remains a Belief, not a rule. Blood Crisis keeps the choice, and the cost of refusing, with the player.

### A.4 GM-only notes

- **Why no weekly need:** the dhampir's own body makes blood, and the partial nanite population draws on it. Demand outstrips supply only under strain — injury, collapse, forced repair, ★ use. That is exactly what the Thirst triggers model.
- **No husk dormancy.** A starving partial population simply goes quiet. A dhampir who never feeds is weaker and hungrier, not dormant.
- **Blood sensitivity and Read the Blood** come from the partial population detecting other nanite populations and their identity tags. Comparing bloodlines is reading tags (§5.9). The *well fed or starving* reading corresponds to blood-debt state (§5.4).
- **Mother's Key** uses the tag fragment inherited in the womb. Under the Q22 ruling, a fragment copied in pregnancy reads irregularly, like a damaged tag — hence the GM's ability to have systems misread or log the dhampir. Reading tag logs (§5.9) is one of the most valuable uses of this ability, and one of the most dangerous.
- **Conversion:** a dhampir's partial population integrates readily. Converting a dhampir is unusually likely to succeed, which makes dhampirs coveted subjects. A dhampir converted by their own mother might receive a cleaner tag than any improvised conversion could give — a strong campaign hook. A converted PC leaves player control (V22, no full vampire PCs).
- **Heirs:** canon makes a vampire mother's child a valuable claimant (§5.13). The *my mother's blood* weakness gives the GM a direct lever for succession plots.
- **Ageing [CANON]:** normal development to the mid-twenties, then roughly one year of apparent ageing for every three lived. A sixty-year-old dhampir looks about forty. This keeps "age is contested" (§4.7) alive at the player table.
- **Dhampir children [CANON — Q29]:** a female dhampir passes nothing on — the fragment is too weak to transmit. Dhampirs' children are fully human.

### A.5 Knock-on conflicts elsewhere in the rulebook (Q26 — resolved in Appendix B)

The dhampir review exposed these contradictions. Appendix B revises all of them:

| Section | Conflict |
|---|---|
| §5 Nobility ranks, §5.2 Undying | Built on the Nobility; recovery after a day's sleep ignores blood dependence and blood debt |
| §6 The Kiss | Repeated bites progressively turn a victim — contradicts V7 (feeding never converts) and V5 (conversion by transfusion into a drained body) |
| *Was Kissed and Lived* Focus | Depends entirely on the Kiss |
| §8.1 Banes | Stake destroys (canon: incapacitates only); crosses, garlic, and running water have real effects (canon: none) |
| §13 Truths | *Garlic Fences*, *Uninvited*, *Running Water* impose real restrictions canon says don't exist (they can survive as social or deceptive Truths) |
| §14 Woe spends | The Gaze, the Call, Mist Form, and Command the Beasts have no basis in canon |
| §7 scope | "Mutants and cyborgs built with Noble parts" need a canon equivalent or removal |

---

## Appendix B. Revised Frontier Rules **[APPLIED — PR #19; resolves Q26]**

Replacement text for the **Frontier Rules** chapter of `vampire-hunter-d-2d12-v2-master-rulebook.typ` (mirrored in `vhd-setting-rules.md`), followed by fixes for dependent rules in other chapters.

**Conventions**

- Section numbers match the current chapter so each block can be swapped in place.
- Text under **Rules text** is player-facing: no nanites, no ultraviolet, no identity tags.
- **GM notes** blocks are GM-only and belong in the GM chapter, not here.
- Items marked **[PROPOSED]** are new mechanics or names beyond existing canon. Everything else implements decided canon.
- **"Vampire"** is used as the rules term. Regional words (*the Kept*, *leeches*) belong in flavour text.

### B.0 Chapter header

> **Frontier Rules** — The setting in play: Campaign Truths, day and night, vampires and the blood they need, the bled, dhampirs, how the afflicted die, old-world works, contracts, and the long roads between towns.
>
> *Epigraph:* "Every door in this valley opens for someone. Find out who, and you'll know who rules it."

### B.1 The Setting in Brief

**Rules text**

> The old world is buried beneath the present, but it has not fallen silent. Its roads, foundations, and sealed rooms are everywhere; a few of its works still run. No one agrees on when it fell, and every claim to rule rests on a history that cannot all be true.
>
> Across the **Frontier** — wherever law, knowledge, and working infrastructure give out — towns bargain with ancient households, physicians dispute the teachings of religious orders, and courts fight over succession, charters, and the machines that keep people alive.
>
> Among the living are **vampires**: people who must take blood to live. They are few, long-lived, hard to kill, and often indispensable. Some claim to remember the world before the fall. Most rule nothing; some rule a great deal. Their **dhampir** children are rarer still.
>
> **Tone:** grim, gothic, political. Locked rooms and disputed wills, blood ledgers and charity clinics, rifles beside silver knives, and monsters who know every family in town.

### B.2 Campaign Truths

#### B.2.1 Core Truths

| # | Truth | In play |
|---|---|---|
| 1 | **The Kept are few and indispensable** | Vampires are rare. A single vampire is a campaign arc, not a random encounter — and killing one rarely solves the problem it was part of |
| 2 | **Blood behind every bargain** | Every vampire depends on a supply: a household, a levy, or an exchange. The supply is politics |
| 3 | **The Frontier pays for answers and fears them** | Towns hire investigators and hunters because they must. They don't always want what's found |
| 4 | **The old world's works are disputed** | Machines, miracles, curses, and hauntings are argued over by physicians, priests, and scholars. Science and Occult both apply (§3) |
| 5 | **Dhampirs are rare, feared, and coveted** | Common folk fear them. Vampire households want them — as heirs, keys, or worse |

#### B.2.2 Optional Truths (d12)

| d12 | Truth |
|---|---|
| 1 | **A founder still lives** — one of the oldest vampires in the region controls a bloodline whose doors open across half the March |
| 2 | **No one rules the whole Frontier** — no higher power is coming to settle disputes |
| 3 | **Some vampires want to end it** — certain vampires seek death, love, escape, or a cure that may not exist |
| 4 | **The machines still run** — old-world works keep operating with no one in charge, defended by guardians nobody controls |
| 5 | **Old oaths bind the retainers** — hereditary retainer families serve vampire households for pay, loyalty, or debt |
| 6 | **Hunters compete for bounties** — rival crews race for every contract; bounties go to whoever brings the proof |
| 7 | **The weather is a weapon** — old weather works still run in places, and still fail |
| 8 | **The bled are suspected** — local law says anyone fed on by a vampire must be examined, confined, or exiled, in case they turn |
| 9 | **The old faith keeps the old rites** — the rites are older than anyone can explain, and some of them work |
| 10 | **Mutants are people too** — how the altered are treated is a frontier politics question |
| 11 | **The lights in the sky still move** — something the old world left overhead is still watching **[PROPOSED; replaces the off-world war]** |
| 12 | **The Hunters' Code** — never abandon a contract, never take another crew's quarry. Breaking it makes you a target |

**GM notes:** Truth 8 rests on a false belief — feeding never converts. Truth 9's working rites are preserved procedures (§5.10 of the design document). Truth 11, if used, refers to surviving orbital systems; keep it vague.

### B.3 Skill List

The pool assignments are unchanged. Three skills change name or scope.

| Skill | Was | Covers in this setting |
|---|---|---|
| **Old Lore** | Noble Lore | History, households and bloodlines, etiquette, succession law, old-world ruins and records, the folklore of the afflicted |
| **Science** | Tech | Repairing, using, and disabling machines, old and new; cyborg parts; old-world weapons and works |
| **Occult** | Arcana | Rites, wards, and religious practice; omens, relics, and reliquaries; what people believe about the afflicted and which customs are kept |
| **Medicine** | — | Surgery, poisons, mutations, blood loss, and transfusion (§6) |
| Ride, Frontier | — | Unchanged |

**Guideline (unchanged):** Science and Occult often overlap. Let the player choose which applies, then fix it for that device or effect for the rest of the scene.

**GM notes:** Occult is knowledge of human practice and interpretation. It never accesses real supernatural power, because there is none — but a rite can preserve a procedure that works.

### B.4 Day and Night

**Rules text**

Time of day is always a scene Truth.

| Time Truth | Effect |
|---|---|
| **Day** | Direct sunlight harms vampires and dhampirs (*Sun-Sick*, §7.1). Most vampires keep indoors or underground and many keep night hours, but they are not helpless by day — a vampire in a shuttered room is as dangerous at noon as at midnight. Their retainers, guardians, and machines are active |
| **Dusk** | One scene. The GM gains **+2 Woe**. Vampires come out |
| **Night** | Vampires and dhampirs see in the dark and ignore darkness Truths. Scenes at night with a vampire present add **+1 Woe** at the start of the scene (dangerous Truth). The GM may use vampire Woe spends (§14) |
| **Dawn** | One scene. A vampire in the open must reach shelter or face the sun. At the end of the scene, any vampire still in direct light gains *Sun-Sick* at **tier 2** at once, then normally |

**Overcast and glass:** heavy cloud halves the harm (§7.1). Experience says sunlight through a window does vampires little harm; no one agrees why.

#### B.4.1 The Dawn Clock

Unchanged mechanics (6 or 8 segments; ticks 1 per scene or exchange; players may tick it only by wasting the enemy's time; fills to Dawn). **Change:** dawn no longer destroys a vampire. It forces a choice — withdraw, or fight on while the sun takes its toll.

**GM notes:** sunlight harm is ultraviolet light inhibiting the nanites. Cloud cuts UV partly; ordinary window glass blocks most of it — hence the observation. Old-world *true-light lamps* (§8.3) emit UV and work like the sun. Vampires see in the dark because of nanite-maintained eyes; this is canon (Q27).

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

### B.9 Old-World Works (was Noble Science)

Uses **Module A — Cyphers & Artifacts** unchanged. Revised entries:

| d12 | Cypher | Change |
|---|---|---|
| 1 | **True-light capsule** (was Sun capsule) | Attack (*Sun-Sick* +2) against one vampire; counts as a killing method only against a husk |
| 2 | Blood ampoule | Unchanged (restore 3 Sōma; a dhampir also loses 2 Thirst) |
| 5 | Mind-seal patch | Restore fear; +1 to Resist intimidation and Presence (§14) |
| 6 | **Bloodline vial** (was Castle key-crystal) **[CANON — Q32]** | A vial of a vampire's blood: opens one door of its bloodline, or quiets one of its guardians for a scene |
| others | — | Unchanged; rename "Noble" to "old-world" |

**Artifacts:**

- Standard quirk ***its owners will want it back*** (was *the Nobility will want it back*).
- ★ **Old-world longsword** (was Noble Longsword): counts as a killing method for beheading; ignores *Armour* on vampires.
- **Blood locket** (replaces Guardian Collar): *Tags:* holds a vampire's blood. *Ability:* that bloodline's doors and guardians half-recognise you (+1 die). *Depletion:* 1 in d12 (the blood spoils). *Quirk:* the bloodline's records note every door you open.

**GM notes [CANON — Q32]:** a vampire's shed blood still carries its nanites and identity tag for a limited time, so a vial can open that bloodline's doors. As the blood spoils, the tag reads more weakly and then not at all (depletion). Stolen blood is therefore a key — and every blood ledger, levy store, and exchange cellar is also a key ring.

### B.10 Bounties, Commissions, and Contracts

Unchanged mechanics. Revisions:

- Add **Contract type**: *Bounty* (a quarry), *Commission* (an investigation), *Escort*, *Recovery*.
- Example: **Client** — the March Assembly, for a farmer whose daughter was fed on. **Quarry** — Lord Varn, a vampire (rank: Established). **Proof** — his head, his ledger, or his signet. **Bounty** — *a lord's bounty*. **Deadline** — before the levy is collected (danger clock, 6). **Complication** — Lord Varn insists he hasn't fed in five weeks.
- A dhampir negotiating with humans faces *Feared and Despised* unless known and trusted (unchanged); with a vampire household, they may face *Coveted* instead (the household wants something from them).

### B.11 Setting Conflict Types

| Type | Change |
|---|---|
| Hunt | Unchanged |
| **Siege Until Dawn** (was Siege of the Night) | Unchanged mechanics; at Dawn the vampire side withdraws or suffers Sun-Sick |
| **Duel of Wills** | Now an interrogation, an audience, or a stare-down with something old and patient. No hypnosis. A PC who loses is Taken Out of the contest and follows the vampire's intent for one scene (social obligation, fear, or a bargain) — never Bled-1. A vampire who loses withdraws or reveals something (loses 1 power tag for the session) |
| **Estate Assault** (was Castle Assault) | Break into a household or old-world facility. Unchanged mechanics; "castle" becomes "estate or facility" |
| Chase | Unchanged |

### B.12 Travel and the Frontier Truth Generator

- "Noble-poisoned lands" → **old-poisoned lands**.
- Generator changes (others unchanged):

| d12 | Column | New entry |
|---|---|---|
| 1 | Secret | Someone in town is secretly feeding a vampire |
| 2 | Terrain / Secret | Vampire estate on a crag / The vampire wants to die |
| 3 | Secret | A buried old-world city |
| 4 | Secret | An old-world weapon |
| 5 | Secret | A retainer camp |
| 6 | Secret | A household's spy runs the bar |
| 8 | Terrain / Secret | Abandoned treatment works / Records of the original treatment, maybe |
| 9 | Secret | A water source someone poisoned |
| 10 | Secret | A monk who remembers the founding |
| 12 | Hazard / Secret | A husk among the graves / A famous Hunter didn't die here |

### B.13 Scene Truths (revised)

| Truth | Typical effect |
|---|---|
| *Moonlit* | Stealth is harder for everyone; vampires and dhampirs see clearly |
| *Moonless* | +1 step Difficulty to Notice; vampires and dhampirs ignore it |
| *Merciless Sun* | Sun-Sick +3 per scene for vampires, +2 for dhampirs (§7.1) |
| *Overcast* **[new]** | Sun-Sick +1 per scene for vampires, none for dhampirs |
| *Sunlit* **[new]** | Direct sun indoors (mirrors, broken roof). Sun-Sick +1 per exchange |
| *Warded Village* (was Garlic Fences) | The villagers believe they're safe. Believers won't cross without defying a compel (§8.1); everyone else just finds the villagers armed and watching (+1 step Difficulty to Stealth) |
| *Custom of Invitation* (was Uninvited) | Entering uninvited breaks local custom: the scene gains *Hostile Crowd* if seen. Believers must defy a compel |
| *Their Own House* (was Noble's Domain) | Inside a place that answers to the vampire's bloodline, its Woe spends cost 1 less (minimum 1) |
| *Frightened Villagers*, *Hostile Crowd*, *Dust Storm*, *Guardian Machines* | Unchanged |
| *Feared and Despised* | Dhampirs and mutants: +1 step Difficulty to social rolls with humans (unchanged) |
| *Coveted* **[new]** | A dhampir among a vampire household: social rolls are easier, but every success puts them further in the household's debt |
| *Thick Mist* | +1 step Difficulty to Shoot and Notice (mist form removed) |
| *Blood on the Air* | Thirst +1 for dhampirs; a vampire at Blood Debt 3+ must act on it or take −1 |
| *False Dawn* | True-light lamps. Vampires gain Sun-Sick +1 per exchange and can't recover; −1 on all their rolls (lasts one exchange or scene) |

*Running Water* is removed as a Truth; use the believer rule instead.

### B.14 Woe Spends: Vampires

| GM spend | Cost | Effect |
|---|---|---|
| **Presence** (was the Gaze) | 1 | A PC facing the vampire takes *shaken-2* (Resist with Pneuma). Start a Duel of Wills if it matters |
| **Summon the Household** (was the Call) | 1 | A retainer, donor, or dependant arrives and obeys — out of loyalty, debt, love, or fear |
| **The Old Door** (was Mist Form) | 2 | The vampire leaves through a way only its bloodline can open, or through a passage nobody knew was there |
| **Kennel and Guardians** (was Command the Beasts) | 2 | Trained animals, mutant creatures, or old-world guardians that answer to it arrive as a minion group |
| **Uncanny Speed** | 1 | Unchanged |
| **The House Answers** (was the Castle Wakes) | 3 | Requires *Their Own House*. Create a facility Truth (*Sealed Doors*, *Lights Fail*, *Gravity Fails*) |
| **Blood Reserve** (was Rise From the Coffin) | 3 | Once per session, if blood is at hand (stored, a donor, a victim), a *broken* vampire feeds and recovers 2 tiers of physical status. Leaves evidence |
| **Weather Turns** | 2 | Unchanged; requires old weather works nearby |
| **Retainer** (was Servant of the Night) | 3 | A significant retainer or ally arrives |

**GM notes:** Presence is experience and predatory confidence, not hypnosis. The Old Door and The House Answers are identity-tag access (§5.9 of the design document). Uncanny Speed is nanite enhancement and fails at Blood Debt 4+.

### B.15 Design Notes (revised)

- **Hard to Kill (§5.2)** keeps the two-stage fight — wear it down, then a killing strike — but ties recovery to blood. Wounding a vampire makes it hungrier, and a hungry vampire is a different problem.
- **The Bled** replaces the Kiss. It is pure blood loss, so the existing Restore, Resist, and compel rules apply. Its tier 6 is death, with one ominous exception.
- **Day and night** no longer switch vampires on and off. Sunlight is a cost, not a cage; most daytime advantages come from finding where a vampire is and getting light in.
- **Folklore** works through belief, not physics. The *believer* rule lets old remedies matter at the table without becoming true.
- **Science vs. Occult:** keep the line blurred for players. The GM always knows which side is material.

### B.16 Dependent rules elsewhere in the rulebook

| Chapter / entry | Current | Revision |
|---|---|---|
| Descriptor **Bitten** | Power tag *the Call doesn't take me*; weakness *marks on my throat* | Power tag *I've been bled and lived*; weakness unchanged |
| Bellator — **Bodyguard** | "take the Kiss in their place" | "take a bite (Bled) in their place" |
| Frontier Doctor — playbook tag | *knows what the Kiss does* | *knows blood* |
| Frontier Doctor — **Treat the Kiss** | Medicine vs. Kissed | **Treat the Bled:** Medicine vs. Bled is Standard 15, once per scene; transfusion needs no kit |
| Frontier Doctor — **◆ The Cure** | Removes Kissed; Region Truth "can cure the Kiss" | Conflicts with cure = unknown. Replace with **◆ The Blood Bank:** you run a reliable exchange. Region Truth *"The doctor keeps blood."* Households will send for you, or against you |
| Frontier Doctor — gear | Garlic tinctures and holy water, +1 vs. the Kiss | Transfusion kit (§8.3) |
| Frontier Doctor — Goal / Rival examples | "below Kissed-4"; "fake Kiss cures" | "below Bled-4"; "a quack selling charms against the bite" |
| Occultist — **Ward Against the Night** | Wards vs. the Gaze, the Call, the Kiss | Wards vs. fear, intimidation, and Presence; +1 Resist vs. bites |
| Mutant — **Toxic Blood** | The Kiss gains 1 fewer tier | Bled from feeding gains 1 fewer tier; anything that drinks from you gains *poisoned-2* |
| **Little Blood Left** | The Kiss gains 1 fewer tier | Bled gains 1 fewer tier |
| Focus **Was Kissed and Lived** | Built on the Kiss and the Call | Replace with **Was Kept and Got Out** (B.17) |
| Focus **Hunts the Nobility** | *Steel Against the Gaze*; "Nobility" | **Hunts the Kept**; *Steel Against Presence* |
| Focus **Seeks Revenge on a Noble** — Cold Fury | Resist the named Noble's Gaze, Call, or fear | **Seeks Revenge on a Vampire**; Resist its Presence, intimidation, or fear |
| Focus **Bears a Noble Relic** | "a pendant that turns aside the Gaze" | **Bears an Old-World Relic**; "a pendant that opens one family's doors" |
| Focus **Sends the Mind Abroad** — Dream Walker | Enter a Kissed victim's dream | "a bled victim's"; see Q30 for the psychic basis |
| Focus **Keeps the Old Faith** | Last Rites resists the Call; Faith Unbroken vs. Gaze, possession | Resists fear; Faith Unbroken vs. fear, Presence, or despair |
| Focus **Heals the Kissed** | Built on the Kiss | **Heals the Bled:** tags *the bled trust me*, *knows every stage of blood loss*. T1 **Blood Specialist** (learn how blood was taken and roughly how much; patients gain no more than 1 Bled tier per night). T2a **Steady the Donor** (patients treated today Resist fear and Presence at Edge +1). T3a **Hold the Line** (patients in your care can't pass Bled-4). T3b **★ Give of Yourself** (once per session, transfuse your own blood: remove Bled entirely from one patient, tier up to 5; you take Bled-2) |
| Focus **Plunders the Castles of the Night**, **Once Served the Nobility**, **Holds the Line Until Dawn**, **Forges Weapons Against the Night** | "Noble", "castle" | **Plunders the Old Estates**, **Once Served a Household**; others keep their names; replace "Noble" throughout |
| Dhampir design note | "half-Noble… immunity to the Kiss" | Replace with Appendix A rationale |

### B.17 Was Kept and Got Out ◈ (replaces Was Kissed and Lived)

> You were a donor in a vampire household — by birth, debt, or choice. You got out. They remember you.

- **Power tags:** *I know how households run*, *I know how they think*
- **Weakness tag:** *they'll want me back*
- **PC link:** "[PC] got me out. I've never told them what it cost."

| Tier | Ability | Effect |
|---|---|---|
| 1 | **Household Ways** | Bled gains **1 fewer tier** on you. You get a free bonus die to Notice or Empathy when judging a vampire's hunger or a household's customs |
| 2a | **Old Ties** | Once per session, a retainer or donor still loyal to you gives a Discover answer or a small favour. The household can find you the same way (GM spends 1 Woe) |
| 2b | **One of Them, Almost** | Retainers and donors take you for one of their own. Deceive rolls to pass among them are **two steps easier** |
| 3a | **Unbroken** | When you Resist Presence, intimidation, or fear from a vampire with Pneuma, reduce the status by **3 tiers**; cost 0 on a highest die of 5+ |
| 3b | **★ Turn the Bond** | Once per session, in a Duel of Wills against your former household, gain a free bonus die on every roll. If you win, you also learn where it keeps its blood |

### B.18 Global terminology map

| Current term | Replacement |
|---|---|
| Noble, the Nobility | vampire, vampires (rules); *the Kept*, house names (flavour) |
| Lesser Noble | Minor-rank vampire |
| Noble blood | afflicted blood |
| Noble science | old-world works |
| Noble Lore | Old Lore |
| castle | estate, house, facility |
| Barbarois | retainers |
| the Sacred Ancestor | remove (or a founder, Truth 1) |
| the Capital | remove (or a named city) |
| dala | mark |
| the Kiss, Kissed | the Bled, Bled |
| the Call | Summon the Household |
| the Gaze | Presence |
| banes | killing methods |
| Undying | Hard to Kill |
| 12,090 AD; "Ransylva" | remove |

### B.19 Implementation notes (v0.9)

Applied in [PR #19](https://github.com/SkroxiousDM/2d12GameSystem/pull/19) on branch `feat/hollow-frontier-frontier-rules`. Files changed: `vampire-hunter-d-2d12-v2-master-rulebook.typ` and `.pdf`, `2d12-character-sheet-v2.typ` and `.pdf`, the four `vhd-*.md` files, and `CHANGELOG.md`.

**GM notes.** The rulebook has no GM chapter, so the GM notes from Appendix B and A.4 were left out of it. They stay GM-only in this document.

**Choices made while applying, beyond the letter of Appendix B** (all **[APPLIED — review]**):

| Entry | Choice |
|---|---|
| Keeps the Old Faith | Rebuilt: crosses don't burn; *Holy Symbol* wards only believers (against others, +1 Pneuma Edge vs. fear); *Consecrate* makes water and blades *silvered*; *Holy Ground* bars believers and raises vampire Woe spends by 1 |
| Frontier Doctor | *Chemist*: garlic smoke became *iron tonic* (Restore Bled 1); *Serum* turns a weakness tag into a killing method; *The Blood Bank* also supplies half a litre once per session |
| Hunts the Kept | Abilities renamed *Know Your Quarry*, *Killing Mastery*, *Find the Killing Way* |
| Forges Weapons Against the Night | *Silvered and Blessed*: weapons count as silvered, or as beheading if blades; capstone renamed *Old-World Steel* |
| Stalker | Mirror shard throws sunlight (*Sunlit* for one exchange); the Belief "a Noble asleep is just a corpse with a timer" became "a vampire asleep is as mortal as anyone" |
| Cyborg Hunter | Sensor array: a starving vampire's heart beats slow and strange (vampires have heartbeats) |
| Focus groups | *Noble Science* became **Old-World**; *Noble Courts* became **Households** |
| Descriptors | Capital-Born became **City-Born**; Devout no longer says crosses burn |
| Mutant | Barbarois variants became *retainer clan* variants |
| Introduction | Rules-describing lines (chapter table, Woe row, ◈ marker, tone sidebar) updated; *D himself* removed. Cover, credits, file header and "About This Book" branding left for the rebrand pass |
| `vhd-*.md` | Regenerated from the master with pandoc (they were v0.1 drafts using the old Vigor/Fate Points/Threat terms), with a header naming the Typst master as the source of truth |

**Not yet applied:** the cover and title rebrand (Q16), the Vesper March rename (Q36), the basis for the psychic Focuses (Q30), file and folder names, and the `*-1.pdf` duplicate PDFs.

### B.20 Implementation notes (v0.11) — Q37–Q41

Applied on branch `feat/hollow-frontier-q37-q41-rename`, stacked on PR #19. Files changed: the master rulebook `.typ` and `.pdf`, `vhd-setting-rules.md`, `vhd-playbooks.md`, `vhd-focuses.md`, and `CHANGELOG.md`. As in B.19, only player-safe text went into the rulebook; GM truths stay in this document.

| Ruling | Where it went in the rulebook | Choices made while applying (**[APPLIED — review]**) |
|---|---|---|
| Q37 | Frontier Rules §5.6 *The Returned* (new); §6 Bled bullet; design note | The degraded tag appears only as an observation ("doors react oddly, as if it half-belonged to a bloodline; no one agrees why"). A PC who survives a failed making leaves player control, like one who is made a vampire. The Long Levy appears only as a rumour |
| Q38 | Frontier Focuses: *Carries a Passenger* rewritten and moved to Old-World Focuses (now Focus 9; former Focuses 4–9 renumbered 3–8) | The Passenger is a voice relayed from a fixed home site, with a default range of about a day's ride and a working relay letting it speak for a scene. *Devourer* became **Override** (Disrupt old-world effects only), *Feed Me, Heal You* became **Talk You Through It**, and *Let It Drive* became **★ Do Exactly What I Say**. Power tag *it eats what hurts me* became *the old works listen to it*. Costs and Power are unchanged. A design note warns GMs to place relays on long journeys. **Range limit confirmed [CANON]; open-sky exception added (Q42).** |
| Q39 | Frontier Rules §10.5 *Charter-Speech and Binding Instruments* (new); Old Lore skill row; design note | Reading is Standard 15; composing is Hard 18, or Standard 15 with a tag such as *fluent in the old pacts*. A flaw found by Discover becomes a tag for the challenger, never a verdict |
| Q40 | Frontier Rules §9.2: Order paragraph and a new **★ Order Sidearm** artifact | The rulebook says "a neighbouring province" (it has no Vesper March text). The sidearm is ★, ignores Armour on vampires, gives a free bonus die on Persuade/Intimidate with those who remember the Order, and is locked to the armoury log; depletion 1 in d12. **Numbers confirmed [CANON].** |
| Q41 | Frontier Playbooks, Stalker §2.4 handout (sidebar); Occultist §6.4 cross-reference | Classes **Winterers**, **Strays**, **Tapsters** (final; replaced the placeholders *Sleepers*, *Get*, *Sippers*). Each gives what hunters saw and a wrong "Hunters say" explanation; the intro points the GM to threat ranks |

**Not changed:** *Sends the Mind Abroad* (Q30 still open), the character sheet (it doesn't list Focuses), and `vhd-descriptors.md` (no content change).

**Follow-up (v0.12):**

- **Field-guide names.** *Sleepers*, *Get* and *Sippers* became **Winterers** (they go to ground for a generation, like animals wintering), **Strays** (made and then let loose; the GM truth is that nobody maintains them) and **Tapsters** (they draw a little, the way a tapster draws from a cask). The text is unchanged otherwise.
- **Confirmed [CANON]:** the Order Sidearm numbers and the Passenger's default range (about a day's ride).
- **Q42, the moving lights:** new Frontier Rules §9.3 (observable only). *Carries a Passenger* gains an open-sky bullet: 9+ on a d12 at the start of a scene under open sky lets the Passenger speak and use its abilities that scene. The GM may compel *someone else heard* or spend 1 Woe to have the message overheard. Design note updated. The rulebook never uses the word "satellite" (§7.6).
