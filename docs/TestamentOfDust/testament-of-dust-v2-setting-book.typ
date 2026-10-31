// =====================================================================
//  TESTAMENT OF DUST — A SETTING FOR THE 2d12 SYSTEM, VERSION 2
//  Setting Book · Post-Apocalyptic Frontier Gothic
//  Compiled for SkroxiousDM · 2026-10-19
//
//  Multi-file Typst source (the tod-*.typ files in this folder).
//  Compile from this folder so the art/ paths resolve:
//      typst compile testament-of-dust-v2-setting-book.typ
//
//  Fonts (free, Google Fonts / OFL). Install them, or pass --font-path:
//      EB Garamond   — body text
//      Cinzel        — headings and display type
//  If they are missing, Typst falls back to Libertinus Serif. Symbols
//  (★ ◆ ◈ →) fall back to DejaVu Sans.
//
//  An original setting for the 2d12 System. Requires the core rulebook
//  (docs/2d12System/the-2d12-system-v2-core-rulebook.typ). Playtest draft.
// =====================================================================

#import "tod-common.typ" : *
#set document(
  title: book-title + " — " + book-subtitle + " — " + book-kind,
  author: book-author,
  date: datetime.today(offset: -6),
  keywords: ("2d12", "Testament of Dust", "tabletop RPG", "setting book", "gothic", "post-apocalyptic"),
)
#show: apply-style
// =====================================================================
//  COVER
// =====================================================================
#page(fill: ink, header: none, footer: none, margin: 0cm)[
  #set text(fill: moon)
  #place(top + left, rect(width: 100%, height: 100%, fill: gradient.linear(ink, ink, ash.darken(20%), blood.darken(45%), angle: 90deg)))
  #place(top + center, dy: 3.4cm, blood-moon(r: 4.4cm))
  #place(bottom + left, skyline(height: 5.2cm, fill: rgb("#0b0907")))
  #place(bottom + left, rect(width: 100%, height: 1.3cm, fill: rgb("#0b0907")))
  #place(top + center, dy: 1.6cm, text(font: display-font, size: 9pt, fill: brass, tracking: 0.5em, weight: 700, upper(book-tagline)))
  #place(top + center, dy: 13.6cm, block(width: 92%, {
    set align(center)
    text(font: display-font, size: 40pt, weight: 900, fill: moon, tracking: 0.03em, upper(book-title))
    v(8pt)
    ornament-rule(width: 70%)
    v(10pt)
    text(font: display-font, size: 14pt, weight: 700, fill: brass, tracking: 0.1em, book-subtitle)
    v(6pt)
    text(font: display-font, size: 13pt, fill: moon.darken(8%), tracking: 0.3em, upper(book-kind))
    v(16pt)
    text(size: 11pt, style: "italic", fill: moon.darken(10%), book-motto)
  }))
  #place(bottom + center, dy: -2.1cm, {
    set align(center)
    text(font: display-font, size: 11pt, fill: moon, tracking: 0.2em, weight: 700, upper(book-author))
    linebreak()
    text(font: display-font, size: 9pt, fill: brass, tracking: 0.25em, book-date)
  })
]

// =====================================================================
//  CREDITS / COLOPHON
// =====================================================================
#page(header: none, footer: none)[
  #v(1fr)
  #align(center, block(width: 78%, {
    set par(justify: false)
    text(font: display-font, size: 20pt, fill: blood, weight: 700, book-title)
    v(2pt)
    text(font: display-font, size: 11pt, fill: ash, tracking: 0.08em, [#book-subtitle · #book-kind])
    v(10pt)
    ornament-rule(width: 60%)
    v(12pt)
    text(size: 10.5pt)[
      Design, writing and development: *#book-author* \
      Version 2 · Setting compilation dated *#book-date*
    ]
    v(14pt)
    text(size: 9.5pt, fill: ash)[
      
    ]
    v(14pt)
    text(size: 9pt, fill: dust, style: "italic")[
      #book-title is an original setting for the 2d12 System. You need #emph[The 2d12 System] core rulebook to play. \
#book-motto \
The 2d12 System draws inspiration from Fate, the Cypher System, :Otherscape, Mouse Guard, Blades in the Dark and the 2d20 System; all trademarks belong to their owners.
    ]
    v(14pt)
    text(size: 8.5pt, fill: dust)[Playtest draft — not yet playtested. Set in EB Garamond and Cinzel.]
  }))
  #v(1fr)
]

// =====================================================================
//  TABLE OF CONTENTS
// =====================================================================
#page(header: none, footer: none)[
  #v(0.4cm)
  #align(center, text(font: display-font, size: 24pt, fill: blood, weight: 700, tracking: 0.06em)[Contents])
  #v(-2pt)
  #align(center, ornament-rule(width: 45%))
  #v(10pt)
  #set par(justify: false)
  #show outline.entry.where(level: 1): it => {
    v(9pt, weak: true)
    block(above: 9pt, below: 4pt, link(it.element.location(), grid(columns: (auto, 1fr, auto), column-gutter: 5pt, align: bottom,
      text(font: display-font, size: 9.8pt, fill: blood, weight: 700)[#if it.element.numbering != none [#numbering("I", ..counter(heading).at(it.element.location()).slice(0, 1)) · ] else [Appendix · ]#it.element.body],
      box(width: 100%, repeat(text(fill: brass, size: 7pt)[ · ])),
      text(font: display-font, size: 9.8pt, fill: blood, weight: 700, it.page()))))
  }
  #show outline.entry.where(level: 2): it => block(above: 3.2pt, below: 3.2pt, link(it.element.location(),
    grid(columns: (0.7em, auto, 1fr, auto), column-gutter: 3pt, align: bottom, [],
      text(size: 9pt, it.element.body),
      box(width: 100%, repeat(text(fill: brass.lighten(30%), size: 6pt)[ . ])),
      text(size: 9pt, number-type: "lining", it.page()))))
  #show outline.entry.where(level: 3): it => block(above: 2.2pt, below: 2.2pt, link(it.element.location(),
    grid(columns: (1.6em, auto, 1fr, auto), column-gutter: 3pt, align: bottom, [],
      text(size: 7.9pt, fill: ash, it.element.body),
      box(width: 100%, repeat(text(fill: brass.lighten(45%), size: 5.5pt)[ . ])),
      text(size: 7.9pt, fill: ash, number-type: "lining", it.page()))))
  #columns(2, gutter: 0.9cm, outline(title: none, depth: 3, indent: 0pt))
]

// =====================================================================
//  CHAPTER I — INTRODUCTION
// =====================================================================
#counter(page).update(1)
#chapter("Introduction",
  [The old world is buried beneath the present, but it has not fallen silent. This chapter explains what this book contains, what it needs from the core rulebook and how its rules are named.],
  epigraph: [Fences of wood and garlic. Laser rifles beside wooden stakes. Somewhere beyond the ridge, an estate light comes on.])

#columns(2, gutter: 6mm)[
== About This Book

This setting book holds everything specific to #emph[Testament of Dust]: the Frontier, its rules for vampires, blood and old-world works, and the Descriptors, Playbooks and Focuses written for it. It is not a complete game. You also need #emph[The 2d12 System] core rulebook, which holds the engine and the generic material the Frontier builds on.

#figure(table(columns: (13%, 30%, 57%),
  table.header([Ch.], [Chapter], [Contents]),
  [I], [Introduction], [What you need, terminology, renamed stats, notation],
  [II], [Frontier Rules], [The Frontier setting: Campaign Truths, skills, day and night, vampires, the Bled, afflicted blood, killing methods, old-world works, contracts, conflicts, travel, Woe spends and Frontier Opposition (§16)],
  [III], [Frontier Descriptors], [20 Descriptors with Frontier hooks],
  [IV], [Frontier Playbooks], [Sellsword, Stalker, Frontier Doctor, Broker, Rider, Occultist, Mutant, Cyborg Hunter, Warden],
  [V], [Frontier Focuses], [20 setting Focuses, including the dhampir Focus],
  [App.], [Frontier Quick Reference], [Day and night, Frontier skills and vampire Woe spends at a glance],
))

#strong[What comes from the core rulebook.] References to *Core Rules*, *Optional Modules*, *Adversaries*, *Generic Descriptors*, *Generic Playbooks* and *Generic Focuses* point to #emph[The 2d12 System]. For example, *Core Rules §4.1* means section 4.1 of the Core Rules chapter in that book. References to the Frontier chapters point to this book, and a bare reference such as *§6* points to a section in the same chapter. Where a Frontier rule and a core rule conflict, the Frontier rule wins.

#strong[Character options.] Use the nine Frontier Playbooks in this book. The six Frontier reskins replace their generic counterparts; they are not additional choices alongside them (Frontier Playbooks, Playbook Overview).

Generic Focuses remain available except where the setting restricts or replaces them. #emph[Walks Between Worlds] is not available in Testament of Dust. See Frontier Focuses §1 for availability and replacement guidance.

#strong[Building opposition.] Use the core Adversaries chapter for construction, Roles, encounter budgets, shared Disposition, Boss Phases, Last Stand and Fail-safe. Frontier Rules §16 adds the Vampire package, vampire construction exceptions, retainer-clan Specials and Frontier example cards.

#strong[Optional Modules.] The following three core modules are recommended for the Frontier: Cyphers & Artifacts for old-world works, The Grind & Travel for the long roads between towns, and the Truth-Driven Sandbox for a world written in Campaign Truths.
#colbreak()
== Terminology and Renamed Stats

The source documents used the working names on the left. This book uses the house names on the right everywhere: in rules text, tables, abilities, gear and playbook names.

#figure(table(columns: (24%, 22%, 54%),
  table.header([Working name], [House name], [What it is]),
  [Threat], [*Woe*], [The GM's pool: complications, escalation, vampire Woe spends],
  [Momentum], [*Momentum*], [The party's shared pool of surplus Power (unchanged)],
  [Fate / Fate Points], [*Tychē* / *Tychē Points*], [Each PC's narrative currency: invoke tags, accept compels; set by Refresh],
  [Vitality], [*Sōma*], [Pool: strength, endurance, toughness. Resists wounds, poison, exhaustion, cold],
  [Alacrity], [*Mētis*], [Pool: speed, precision, stealth, reflexes. Resists traps, falls, being caught],
  [Mind], [*Psychē*], [Pool: intellect, perception, memory, cunning. Resists confusion, illusion, deception],
  [Spirit], [*Pneuma*], [Pool: will, presence, faith, the supernatural. Resists fear, despair, possession, corruption],
))

The following table identifies generic core playbook names for reference; it is not a list of selectable Frontier playbooks. Use the replacements listed in Frontier Playbooks, Playbook Overview.

#figure(table(columns: (24%, 22%, 54%),
  table.header([Working name], [House name], [Generic core playbook]),
  [Bruiser], [*Bellator*], [Front-line muscle; anchor Fight or Brawl],
  [Operator], [*Furcifer*], [Infiltrator, scout, thief; anchor Stealth],
  [Sage], [*Savant*], [Scholar, detective, scientist; anchor Lore or Investigate],
  [Face], [*Interlocutor*], [Diplomat, con artist, leader; anchor Persuade],
  [Wayfarer], [*Explorator*], [Ranger, pilot, explorer; anchor Survival],
  [Adept], [*Adept*], [Mage, psychic, hacker; anchor Arcana or Tech (unchanged)],
))

- *Pool shorthand.* Playbook stat blocks list base pools as *Sōm / Mēt / Psy / Pne* (Sōma / Mētis / Psychē / Pneuma).
- *Scars* take the name of the pool most tied to the condition that caused them: a *Pneuma Scar*, a *Psychē Scar* (Core Rules §6.3).
- *Names left as they are.* In-world names that use the everyday words keep them, because they describe the fiction rather than a stat: the *Spirit Duel* conflict type, the abilities *Spirit Sight*, *Shared Spirit*, *Steady Mind* and *Archive Mind*, and the Focus *Sends the Mind Abroad*. Credits to the source games (Fate, Fate Core, 2d20) also keep their original names.

#colbreak()
== Notation

- *★ Major.* An ability that costs *1 Refresh* when you take it, at creation or through advancement.
- *◆ Capstone.* Unlocked after *12 Advances* if you have at least 4 abilities from that playbook. It costs no Refresh, and each character can have one.
- *◈ Weird.* A Focus that assumes the supernatural, old-world works or afflicted blood. All Weird Focuses presented in this setting book are available; generic Focus availability is governed by Frontier Focuses §1. The marker shows which options draw the attention of vampire households, Occultists and frightened villagers.
- *Tags* are written in _italics_, such as _marks on my throat_. *Statuses* add a tier, such as _wounded-2_.
- *Difficulty* is written by name and target, such as *Standard 15* or *Hard 18*.

#sidebar("A Note on Tone")[
  The Frontier is gothic horror on a post-apocalyptic frontier: lone riders, dusty towns, shuttered estates, laser rifles beside wooden stakes, blood ledgers and disputed wills, and vampires who are few, long-lived and indispensable. Players can be dhampirs, but not full vampires (Frontier Rules §1).
]
]
  
#include "tod-setting-rules.typ"

#include "tod-descriptors.typ"
  
#include "tod-playbooks.typ"

#include "tod-focuses.typ"

// =====================================================================
//  APPENDIX — FRONTIER QUICK REFERENCE
// =====================================================================
#chapter("Frontier Quick Reference",
  [The setting procedures on one spread, for the table and the screen. The core procedures (the roll, outcomes, bonus dice, Resist and recovery) are in the Quick Reference of The 2d12 System.],
  numbered: false, label-text: "Appendix")

#grid(columns: (1fr, 1fr), column-gutter: 0.7cm, row-gutter: 0.4cm,
[
== Day and Night
- *Day:* direct sun gives vampires and dhampirs _Sun-Sick_ (Frontier Rules §7.1). Vampires keep indoors but aren't helpless.
- *Dusk:* the GM gains +2 Woe. Vampires come out.
- *Night:* vampires and dhampirs ignore darkness. A scene at night with a vampire present adds +1 Woe at the start.
- *Dawn:* a vampire still in direct light at the end of the scene gains _Sun-Sick_ at tier 2 at once.
- *Hard to Kill:* a vampire's physical statuses can't go above tier 5 without a *killing method*: beheading, or sustained fire on a broken vampire (Frontier Rules §5.2, §8.1).

== Frontier Skills
Renamed skills (Frontier Rules §3). All other generic skills keep their names.
#table(columns: (40%, 60%),
  table.header([Frontier skill], [Generic skill]),
  [Ride], [Drive/Pilot],
  [Frontier], [Survival],
  [Old Lore], [Lore],
  [Science], [Tech],
  [Occult], [Arcana])
],
[
== Woe Spends: Vampires
Full effects in Frontier Rules §14; use with Core Rules §9.2.
#table(columns: (64%, 36%),
  table.header([GM spend], [Cost]),
  [Presence], [1],
  [Summon the Household], [1],
  [Uncanny Speed], [1 (not at Blood Debt 4+)],
  [The Old Door], [2],
  [Kennel and Guardians], [2],
  [Weather Turns], [2],
  [The House Answers], [3],
  [Blood Reserve], [3 (once per session)],
  [Retainer], [3])
])

#v(1fr)
#align(center, ornament-rule(width: 40%))
#v(6pt)
#align(center, text(font: display-font, size: 9pt, fill: dust, tracking: 0.2em)[END OF THE SETTING BOOK · #book-date])
