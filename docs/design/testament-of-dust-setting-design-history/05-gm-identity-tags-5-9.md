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

<!-- SETTING-SNAPSHOT-BODY-END -->
