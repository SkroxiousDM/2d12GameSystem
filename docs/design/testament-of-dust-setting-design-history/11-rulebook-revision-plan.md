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

- [x] Remove "inspired by Vampire Hunter D" from the cover tagline (v0.15).
- [x] Remove the "unofficial fan adaptation" colophon and replace with original credits (v0.15).
- [x] Remove every reference to D and franchise setting material. The last three name references were removed in v0.15; a search of the rulebook and character sheet finds no franchise names or terms. Attorney review should confirm.
- [x] Rename the `docs/VampireHunterD/` folder (`docs/HollowFrontier/` in v0.11; `docs/TestamentOfDust/` in v0.15).
- [x] Rename the `.typ` file, the `vhd-*.md` files and the remaining *Vampire Hunter D* file names (v0.15, B.21).
- [ ] Build a provenance ledger for borrowed mechanics (Fate, Cypher, 2d20, Blades in the Dark, others) and confirm licence compliance against the official SRDs.
- [ ] Apply the originality guardrails in §3.5 to all new setting text.
- [x] Choose a publishable title (Q16): ***Testament of Dust***. **Clearance is still open:** a USPTO search and attorney review are required before publication. Neither working name is for sale: "Hollow World" is a 1990 TSR *D&D* setting still in print, and "Hollow Frontier" is an existing post-collapse survival game on Steam.
- [ ] Obtain U.S. IP attorney review before commercial release.

---

### 10.4 Title and naming screen **[Q16 RESOLVED — *Testament of Dust*; Q36 PROPOSED]**

#### Decision (2026-10-16) **[CANON]**

**Publishable title: *Testament of Dust*.** The tagline stays: *"Roads through a broken world. Blood behind every bargain."* No subtitle for now.

- **Why it fits:** a testament is a will, and wills are the setting's engine (disputed inheritance, *The Second Testament*). Dust covers the frontier roads, the ruins, and the dry dead. It names no vampires, no blood, and no in-world term, so it doesn't spoil the mystery.
- **How it was chosen:** the designer picked *Testament + qualifier* from the shortlist below. Screening showed "Testament" alone is crowded:
  - Green Ronin's tabletop RPG [*Testament: Roleplaying in the Biblical Era*](https://greenronin.com/blog/2004/12/29/free_adventure_for_testament_r/) (2003)
  - a post-apocalyptic fantasy video game, [*Testament: The Order of High Human*](https://store.steampowered.com/app/2176430/Testament_The_Order_of_HighHuman/) (2023)
  - a tactical RPG, [*TESTAMENT*](https://turnbasedlovers.com/news/testament-an-upcoming-oldschool-style-tactical-rpg/)
  - a [co-op board game](https://www.meeplemountain.com/reviews/testament/)
  - *Hunt: Showdown 1896*'s [*Blood Testament*](https://www.crytek.com/news/blood-testament-comes-to-hunt-showdown-1896-on-september-8th) event (2026)

  So the qualifier is part of the title, not a removable subtitle. Rejected along the way: *Testament of the Long-Lived*, *The Disputed Testament*, *Testament of the Dry Dead*, *Testament: Blood, Inheritance, and the Old World*, *The Ninth Testament*, *Testament of Glass*, *Testament Under Open Sky*, *The Lantern Testament*. Also screened out: *Hollow Testament* (a supernatural-noir comic and a 2018 film) and *Iron Testament* (a [post-apocalyptic strategy game](https://roosevelt.games/projects/iron-testament/)).
- **Screen result (web, 2026-10-16):** no game, RPG or book titled *Testament of Dust* found. Nearby but distinct: Philip Pullman's *The Book of Dust*, Margaret Atwood's *The Testaments*, and the thrash-metal band Testament. **This is not trademark clearance.**
- **Before publication:** USPTO search (classes 16 and 28 for print and games; 9 for digital), attorney review (§10.3), and a domain and handle check.

#### Original screen (pre-decision)

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

<!-- SETTING-SNAPSHOT-BODY-END -->
