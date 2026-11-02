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

<!-- SETTING-SNAPSHOT-BODY-END -->
