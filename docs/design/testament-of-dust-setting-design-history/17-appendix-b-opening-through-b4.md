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

<!-- SETTING-SNAPSHOT-BODY-END -->
