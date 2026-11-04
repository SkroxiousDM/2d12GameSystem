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

<!-- SETTING-SNAPSHOT-BODY-END -->
