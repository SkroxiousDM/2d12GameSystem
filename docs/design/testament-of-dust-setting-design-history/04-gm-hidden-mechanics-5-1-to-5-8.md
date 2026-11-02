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

GM-only: this fragment continues the original §5; its visibility restriction applies to the whole preserved section.

[Snapshot index](../testament-of-dust-setting-design-document.md) · [Original context](00-context-and-original-contents.md)

<!-- SETTING-SNAPSHOT-NAV-END -->
<!-- SETTING-SNAPSHOT-BODY-BEGIN -->
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

<!-- SETTING-SNAPSHOT-BODY-END -->
