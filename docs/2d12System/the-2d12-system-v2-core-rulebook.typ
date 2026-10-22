// =====================================================================
//  THE 2d12 SYSTEM, VERSION 2
//  Core Rulebook · Setting-Neutral Rules
//  Compiled for SkroxiousDM · 2026-10-19
//
//  Single-file Typst source. Compile with:
//      typst compile the-2d12-system-v2-core-rulebook.typ
//
//  Fonts (free, Google Fonts / OFL). Install them, or pass --font-path:
//      EB Garamond   — body text
//      Source Sans 3 — headings and display type
//  If they are missing, Typst falls back to Libertinus Serif. Symbols
//  (★ ◆ ◈ →) fall back to DejaVu Sans.
//
//  The setting-neutral engine. Settings (such as Testament of Dust)
//  are published as separate books that require this one. Playtest draft.
// =====================================================================

// ---------------------------------------------------------------- palette
#let ink      = rgb("#1c1f24")   // charcoal
#let ash      = rgb("#343a42")   // slate
#let paper    = rgb("#fcfbf8")   // off-white
#let tint     = rgb("#edf0f3")   // table zebra
#let blood    = rgb("#2d4a66")   // primary accent (navy)
#let ember    = rgb("#3f6a8f")   // secondary accent (steel blue)
#let brass    = rgb("#8d99a6")   // rules and ornaments (pewter)
#let dust     = rgb("#68707a")   // muted text
#let moon     = rgb("#eef1f4")   // light text on dark pages

#let body-font    = ("EB Garamond", "Libertinus Serif", "DejaVu Serif")
#let display-font = ("Source Sans 3", "Libertinus Serif", "DejaVu Serif")
#let symbol-font  = ("DejaVu Sans",)

// ---------------------------------------------------------------- metadata
#let book-title    = "The 2d12 System"
#let book-subtitle = "Version 2"
#let book-kind     = "Core Rulebook"
#let book-tagline  = "Setting-Neutral Roleplaying Rules"
#let book-motto    = "One roll, many outputs. Roll 2d12 + Skill + Modifiers vs. Difficulty."
#let book-author   = "SkroxiousDM"
#let book-date     = "2026-10-19"

#set document(
  title: book-title + " — " + book-subtitle + " — " + book-kind,
  author: book-author,
  date: datetime(year: 2026, month: 10, day: 19),
  keywords: ("2d12", "tabletop RPG", "rulebook", "core rules", "setting-neutral"),
)

// ---------------------------------------------------------------- playbook art
// full-figure ink-and-watercolour vignettes, toned to the page parchment
#let playbook-art(file, alt) = block(width: 100%, above: 0.6em, below: 0.9em, breakable: false,
  align(center, image("art/playbooks/" + file, width: 100%, alt: alt)))

// playbook header: art set beside the quote, stats and tags (single-column pages)
#let playbook-art-side(file, alt, body, dir: "art/playbooks/generic/") = grid(columns: (1fr, 33%), column-gutter: 6mm, align: (top, center + horizon),
  body, image(dir + file, width: 100%, alt: alt))

// ---------------------------------------------------------------- ornaments
#let diamond(size: 5pt, fill: brass) = box(baseline: -0.15em,
  polygon(fill: fill, (0pt, size/2), (size/2, 0pt), (size, size/2), (size/2, size)))

#let ornament-rule(width: 100%, color: brass) = block(width: width, spacing: 0pt,
  grid(columns: (1fr, auto, 1fr), align: horizon, column-gutter: 6pt,
    line(length: 100%, stroke: 0.5pt + color),
    { diamond(size: 4pt, fill: color); h(3pt); diamond(size: 7pt, fill: color); h(3pt); diamond(size: 4pt, fill: color) },
    line(length: 100%, stroke: 0.5pt + color)))

// a d12 face: a regular pentagon with a number in it
#let d12-face(r: 2cm, fill: blood, num: "12", stroke: 1.2pt + brass) = box(width: 2*r, height: 2*r, {
  let pts = range(5).map(i => { let ang = -90deg + i * 72deg; (r + r * calc.cos(ang), r * 1.1 + r * calc.sin(ang)) })
  place(polygon(fill: fill, stroke: stroke, ..pts))
  place(center + horizon, dy: 0.12 * r, text(font: display-font, size: r * 0.62, weight: 700, fill: moon, number-type: "lining", num))
})

// ---------------------------------------------------------------- base text
#set text(font: body-font, size: 10.4pt, fill: ink, lang: "en", region: "CA",
  hyphenate: true, number-type: "old-style")
#set par(justify: true, leading: 0.62em, spacing: 0.95em)
#show "★": it => text(font: symbol-font, size: 0.85em, fill: ember, it)
#show "◆": it => text(font: symbol-font, size: 0.85em, fill: brass, it)
#show "◈": it => text(font: symbol-font, size: 0.9em, fill: blood, it)
#show "→": it => text(font: symbol-font, size: 0.85em, it)
#show "✓": it => text(font: symbol-font, size: 0.85em, it)
#show "✗": it => text(font: symbol-font, size: 0.85em, it)

#set list(marker: (text(fill: blood, size: 0.7em, baseline: -0.15em)[◆], text(fill: brass)[–]), indent: 0.4em, body-indent: 0.55em, spacing: 0.75em)
#set enum(indent: 0.3em, body-indent: 0.5em, spacing: 0.75em, numbering: n => text(font: display-font, fill: blood, weight: 700, size: 0.85em)[#n.])
#show strong: set text(fill: ink.lighten(0%), weight: 700)
#show emph: set text(fill: ash)

// ---------------------------------------------------------------- page frame
#let running-header = context {
  let chs = query(heading.where(level: 1).before(here()))
  if chs.len() > 0 {
    let ch = chs.last()
    set text(font: display-font, size: 7.5pt, fill: dust, tracking: 0.12em)
    grid(columns: (1fr, auto), align: (left + bottom, right + bottom),
      upper(book-title + " · Core Rulebook"),
      upper(if ch.numbering != none { [Chapter #numbering(ch.numbering, ..counter(heading).at(ch.location()).slice(0, 1)) · ] } + ch.body))
    v(-5pt)
    line(length: 100%, stroke: 0.4pt + brass)
  }
}
#let running-footer = context {
  set text(font: display-font, size: 8.5pt, fill: blood)
  align(center, { diamond(size: 4pt, fill: brass); h(8pt); counter(page).display("1"); h(8pt); diamond(size: 4pt, fill: brass) })
}

#set page(paper: "us-letter", fill: paper,
  margin: (top: 1.5cm, bottom: 1.5cm, inside: 2cm, outside: 1.7cm),
  header: running-header, footer: running-footer, header-ascent: 35%, footer-descent: 35%)

// ---------------------------------------------------------------- headings
#set heading(numbering: none)
#show heading: set text(font: display-font, hyphenate: false)
#show heading: set par(justify: false)

// level 1 is only produced by #chapter(), which styles it on the divider page
#show heading.where(level: 1): it => block(width: 100%, spacing: 0pt, {
  set align(center)
  if it.numbering != none {
    text(size: 11pt, fill: brass, tracking: 0.35em, weight: 700)[#upper[Chapter] #counter(heading).display("I")]
    v(14pt)
  }
  text(size: 30pt, fill: moon, weight: 700, tracking: 0.04em, it.body)
})

#show heading.where(level: 2): it => block(above: 1.6em, below: 0.85em, sticky: true, width: 100%, {
  text(size: 15pt, fill: blood, weight: 700, it.body)
  v(-7pt)
  grid(columns: (auto, 1fr), align: horizon, column-gutter: 4pt,
    diamond(size: 5pt, fill: brass), line(length: 100%, stroke: 0.7pt + brass))
})
#show heading.where(level: 3): it => block(above: 1.3em, below: 0.6em, sticky: true,
  text(size: 11.5pt, fill: ash, weight: 700, tracking: 0.02em, it.body))
#show heading.where(level: 4): it => block(above: 1.1em, below: 0.5em, sticky: true,
  text(font: body-font, size: 11pt, style: "italic", fill: blood, weight: 700, it.body))

// ---------------------------------------------------------------- tables
#show figure.where(kind: table): set block(breakable: true)
#show figure.where(kind: table): set align(left)
#show figure: set block(breakable: true, above: 0.9em, below: 1.1em)
#set table(
  stroke: (x, y) => (
    top: if y == 0 { 1pt + blood } else { none },
    bottom: 0.4pt + brass.lighten(35%),
  ),
  fill: (x, y) => if y == 0 { blood } else if calc.even(y) { tint } else { none },
  inset: (x: 5pt, y: 4.2pt),
)
#show table: set text(size: 8.9pt, number-type: "lining", hyphenate: false)
#show table: set par(justify: false, leading: 0.5em)
#show table.cell.where(y: 0): set text(font: display-font, fill: paper, size: 7.8pt, weight: 700, tracking: 0.03em)
#show table.cell.where(y: 0): set align(left + horizon)
#show table.hline: none

// ---------------------------------------------------------------- quotes
#show quote.where(block: true): it => block(width: 100%, inset: (left: 12pt, right: 8pt, y: 7pt),
  stroke: (left: 2.2pt + blood), fill: tint.lighten(30%), spacing: 1em,
  text(style: "italic", fill: ash, it.body))

// ---------------------------------------------------------------- helpers
#let horizontalrule = v(0.6em) + ornament-rule(width: 40%) + v(0.6em)

#let sidebar(title, body) = block(width: 100%, breakable: true, inset: 10pt, radius: 1pt,
  fill: ink, stroke: 0.8pt + brass, spacing: 1.2em, {
    set text(fill: moon, size: 9.6pt)
    show strong: set text(fill: moon)
    show emph: set text(fill: moon.darken(8%))
    text(font: display-font, fill: brass, size: 10pt, weight: 700, tracking: 0.08em, upper(title))
    v(4pt)
    body
  })

// mini table of contents for a chapter divider (level-2 headings in this chapter)
#let chapter-contents = context {
  let nxt = query(heading.where(level: 1).after(here()))
  let sel = heading.where(level: 2).after(here())
  if nxt.len() > 0 { sel = sel.before(nxt.first().location(), inclusive: false) }
  let hs = query(sel)
  if hs.len() > 0 {
    set text(font: display-font, size: 8.6pt, fill: moon.darken(10%), tracking: 0.02em)
    set par(justify: false, leading: 0.55em)
    let entries = hs.map(h => link(h.location(), grid(columns: (1fr, auto), column-gutter: 6pt,
      h.body, text(font: body-font, size: 9.5pt, fill: brass, number-type: "lining", str(counter(page).at(h.location()).first())))))
    let half = calc.ceil(entries.len() / 2)
    grid(columns: (1fr, 1fr), column-gutter: 1.2cm, row-gutter: 6pt,
      stack(spacing: 6.5pt, ..entries.slice(0, half)),
      stack(spacing: 6.5pt, ..entries.slice(half)))
  }
}

// full-page chapter divider; the chapter's content starts on the next page
#let chapter(title, blurb, epigraph: none, numbered: true, label-text: none) = {
  pagebreak(weak: true)
  page(fill: ink, header: none, footer: none, margin: (x: 2.2cm, top: 2.6cm, bottom: 0cm))[
    #set text(fill: moon)
    #place(bottom + left, dx: -2.2cm, rect(width: 21.59cm, height: 0.9cm, fill: blood))
    #place(top + right, dx: 0.9cm, dy: -1.4cm, d12-face(r: 1.3cm, fill: ash, stroke: 0.8pt + brass))
    #v(1.4cm)
    #if label-text != none {
      align(center, text(font: display-font, size: 11pt, fill: brass, tracking: 0.35em, weight: 700, upper(label-text)))
      v(14pt)
    }
    #heading(level: 1, numbering: if numbered { "I" } else { none }, outlined: true, title)
    #v(14pt)
    #align(center, ornament-rule(width: 55%))
    #v(16pt)
    #align(center, block(width: 82%, {
      set par(justify: false, leading: 0.7em)
      text(size: 11.5pt, style: "italic", fill: moon.darken(6%), blurb)
    }))
    #if epigraph != none {
      v(12pt)
      align(center, block(width: 70%, text(size: 9.5pt, fill: brass, epigraph)))
    }
    #v(1.1cm)
    #block(width: 100%, inset: (x: 0.4cm), {
      align(center, text(font: display-font, size: 8pt, fill: brass, tracking: 0.3em, weight: 700)[IN THIS CHAPTER])
      v(10pt)
      chapter-contents
    })
  ]
}

// =====================================================================
//  COVER
// =====================================================================
#page(fill: ink, header: none, footer: none, margin: 0cm)[
  #set text(fill: moon)
  #place(top + left, rect(width: 100%, height: 100%, fill: gradient.linear(ink, ash, angle: 90deg)))
  #place(bottom + left, rect(width: 100%, height: 1.6cm, fill: blood))
  #place(top + center, dy: 1.6cm, text(font: display-font, size: 9pt, fill: brass, tracking: 0.5em, weight: 700, upper(book-tagline)))
  #place(top + center, dy: 4.2cm, grid(columns: 2, column-gutter: 0.9cm,
    d12-face(r: 3cm, fill: blood, num: "12"), d12-face(r: 3cm, fill: ember, num: "12")))
  #place(top + center, dy: 13.6cm, block(width: 92%, {
    set align(center)
    text(font: display-font, size: 46pt, weight: 900, fill: moon, tracking: 0.02em, book-title)
    v(8pt)
    ornament-rule(width: 70%)
    v(10pt)
    text(font: display-font, size: 17pt, weight: 700, fill: brass, tracking: 0.12em, book-subtitle)
    v(6pt)
    text(font: display-font, size: 13pt, fill: moon.darken(8%), tracking: 0.3em, upper(book-kind))
    v(16pt)
    text(size: 11pt, style: "italic", fill: moon.darken(10%), book-motto)
  }))
  #place(bottom + center, dy: -2.6cm, {
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
      Version 2 · Core compilation dated *#book-date*
    ]
    v(14pt)
    text(size: 9.5pt, fill: ash)[
      
    ]
    v(14pt)
    text(size: 9pt, fill: dust, style: "italic")[
      The 2d12 System is a setting-neutral tabletop roleplaying engine. Settings are published as separate books; the first is #emph[Testament of Dust]. \
Acknowledgements & Inspirations
Testament of Dust owes a heartfelt thank-you to the creators of Blades in the Dark, Cypher System, Fate, Mouse Guard, 2d20, and Imperium Maledictum.

In different ways, these games helped shape the questions behind this one: What makes a risk worth taking? What should success cost? How do a character’s beliefs and obligations become part of play? And what keeps people moving when the world is larger, stranger, and less forgiving than they are?

Thank you for the examples, the challenges, and the moments that made me stop and reconsider a rule—or an entire approach. Sometimes the inspiration was a particular idea. Sometimes it was the feeling a game could create at the table. Sometimes it was simply the encouragement to believe that another way of doing things was possible.

Testament of Dust is my own answer to some of those questions, but I did not arrive at them alone. This acknowledgement is a small expression of gratitude for the work that helped me get here.
    ]
    v(14pt)
    text(size: 8.5pt, fill: dust)[Playtest draft — not yet playtested. Set in EB Garamond and Source Sans 3.]
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
  [The 2d12 System is a setting-neutral engine for tabletop roleplaying. This chapter explains what this book contains, how its rules are named and how settings build on it.],
  epigraph: [Roll 2d12 + Skill + Modifiers vs. Difficulty.])

#columns(2, gutter: 6mm)[
== About This Book

This core rulebook holds the complete, setting-neutral rules of the 2d12 System: the engine, three optional modules, and generic Descriptors, Playbooks and Focuses that work in any genre. Setting books, such as #emph[Testament of Dust], build on it and need it to play.

#figure(table(columns: (13%, 30%, 57%),
  table.header([Ch.], [Chapter], [Contents]),
  [I], [Introduction], [Terminology, renamed stats, notation, settings],
  [II], [Core Rules], [The 2d12 roll, character creation, Tychē Points, Effects, Resistance and recovery, clocks, Truths, Momentum and Woe, the conflict system, playbooks, advancement],
  [III], [Optional Modules], [Module A Cyphers & Artifacts · Module B The Grind & Travel · Module C Truth-Driven Sandbox],
  [IV], [Generic Descriptors], [Descriptor rules and 24 setting-neutral Descriptors, six per pool],
  [V], [Generic Playbooks], [Playbook and equipment rules; Bellator, Furcifer, Savant, Interlocutor, Explorator, Adept],
  [VI], [Generic Focuses], [Focus rules and 24 setting-neutral Focuses],
  [App.], [Quick Reference], [The roll, Difficulty, outcomes, bonus dice, recovery and the four currencies at a glance],
))

When a rule here mentions another chapter, it uses that chapter's name and section number. For example, *Core Rules §4.1* means Chapter II, section 4.1. A bare reference such as *§6* points to a section in the same chapter. Setting books use the same chapter names when they refer back to this book.
#colbreak()
== Terminology and Renamed Stats

The source documents used the working names on the left. This book uses the house names on the right everywhere: in rules text, tables, abilities, gear and playbook names.

#figure(table(columns: (24%, 22%, 54%),
  table.header([Working name], [House name], [What it is]),
  [Threat], [*Woe*], [The GM's pool: complications and escalation],
  [Momentum], [*Momentum*], [The party's shared pool of surplus Power (unchanged)],
  [Fate / Fate Points], [*Tychē* / *Tychē Points*], [Each PC's narrative currency: invoke tags, accept compels; set by Refresh],
  [Vitality], [*Sōma*], [Pool: strength, endurance, toughness. Resists wounds, poison, exhaustion, cold],
  [Alacrity], [*Akmē*], [Pool: speed, precision, stealth, reflexes. Resists traps, falls, being caught],
  [Mind], [*Psychē*], [Pool: intellect, perception, memory, cunning. Resists confusion, illusion, deception],
  [Spirit], [*Pneuma*], [Pool: will, presence, faith, the supernatural. Resists fear, despair, possession, corruption],
))

#figure(table(columns: (24%, 22%, 54%),
  table.header([Working name], [House name], [Generic core playbook]),
  [Bruiser], [*Bellator*], [Front-line muscle; anchor Fight or Brawl],
  [Operator], [*Furcifer*], [Infiltrator, scout, thief; anchor Stealth],
  [Sage], [*Savant*], [Scholar, detective, scientist; anchor Lore or Investigate],
  [Face], [*Interlocutor*], [Diplomat, con artist, leader; anchor Persuade],
  [Wayfarer], [*Explorator*], [Ranger, pilot, explorer; anchor Survival],
  [Adept], [*Adept*], [Mage, psychic, hacker; anchor Arcana or Tech (unchanged)],
))

- *Pool shorthand.* Playbook stat blocks list base pools as *Sōm / Akm / Psy / Pne* (Sōma / Akmē / Psychē / Pneuma).
- *Scars* take the name of the pool most tied to the condition that caused them: a *Pneuma Scar*, a *Psychē Scar* (Core Rules §6.3).
- *Names left as they are.* In-world names that use the everyday words keep them, because they describe the fiction rather than a stat: the *Spirit Duel* conflict type and the abilities *Spirit Sight* and *Steady Mind*. Credits to the source games (Fate, Fate Core, 2d20) also keep their original names.

#colbreak()
== Notation

- *★ Major.* An ability that costs *1 Refresh* when you take it, at creation or through advancement.
- *◆ Capstone.* Unlocked after *12 Advances* if you have at least 4 abilities from that playbook. It costs no Refresh, and each character can have one.
- *◈ Weird.* A Focus that assumes the supernatural, strange technology or other weird elements. Each setting decides which ◈ Focuses it allows and how its world reacts to them.
- *Tags* are written in _italics_, such as _scarred knuckles_. *Statuses* add a tier, such as _wounded-2_.
- *Difficulty* is written by name and target, such as *Standard 15* or *Hard 18*.

#sidebar("Settings")[
  The 2d12 System has no setting of its own. A setting book adds Campaign Truths, a skill list, its own Descriptors, Playbooks and Focuses, and special rules for its creatures and dangers. Where a setting rule and a general rule conflict, the setting rule wins. The first setting is #emph[Testament of Dust], a post-apocalyptic frontier gothic.
]
]
// =====================================================================
//  CHAPTER — CORE RULES
// =====================================================================
#chapter("Core Rules", [One roll, many outputs. A pair of twelve-sided dice decides whether you succeed, how much Power you earn and whether fate twists. Around that roll: pools that double as stress, tags and Truths, Tychē Points, Momentum and Woe, and scripted conflicts.], epigraph: [Roll 2d12 + Skill + Modifiers vs. Difficulty.])

== 1. Design Pillars
#columns(2, gutter: 6mm)[
+ #strong[Every currency has one job.] Four resources, each answering a different question:

#figure(
  [#table(
    columns: (27%, 12%, 47%, 14%),
    align: (auto,auto,auto,auto,),
    table.header([Resource], [Owner], [Job], [Borrowed from],),
    table.hline(),
    [#strong[Pools] (Sōma / Akmē / Psychē / Pneuma)], [Each PC], [Physical, mental and spiritual cost --- Effort and Resistance], [Cypher + Blades stress],
    [#strong[Tychē Points];], [Each PC], [Narrative authority --- invoke tags, accept compels], [Fate],
    [#strong[Momentum];], [The party (shared)], [Tactical surplus from strong rolls], [2d20],
    [#strong[Woe];], [The GM], [Mirror of Momentum --- complications and escalation], [2d20],
  )]
  , kind: table
  )
#colbreak()
#block[
#set enum(numbering: "1.", start: 2)
+ #strong[One roll, many outputs.] A single 2d12 roll tells you whether you succeed, how well (Power), and whether something twists (doubles).
+ #strong[Fiction is mechanical.] Tags (on characters and items) and Truths (on scenes and the world) are the only modifiers. No hidden situational math.
+ #strong[Characters are driven, not just capable.] Beliefs, Goals, and Instincts are the primary engine for earning Tychē Points and XP.
]
]
          
== 2. Core Resolution
  #columns(2, gutter: 6mm)[
=== 2.1 The Roll
#strong[Roll 2d12 + Skill + Modifiers vs. Difficulty.]

- #strong[Skill:] +0 to +4 (from the skill pyramid; untrained = +0).
- #strong[Tags:] +1 per relevant #strong[power tag];, #strong[maximum +2 per roll];. −1 per relevant #strong[weakness tag] (no cap).
- #strong[Statuses:] ± the tier of the highest relevant harmful status and the highest relevant helpful status.
- #strong[Truths:] shift Difficulty by steps (§8), not the roll.

Why 2d12 summed: it produces a bell curve (2--24, average 13) --- predictable for skilled characters, swingy at the extremes, and big enough that +1 modifiers matter without dominating.

=== 2.2 Difficulty Ladder
#figure(
  [#table(
    columns: (19%, 11%, 70%),
    align: (auto,auto,auto,),
    table.header([Difficulty], [Target], [Example],),
    table.hline(),
    [Routine], [---], [No roll; it happens],
    [Easy], [12], [Climb a knotted rope],
    [Standard], [15], [Pick a decent lock],
    [Hard], [18], [Track someone over bare rock],
    [Formidable], [21], [Talk down a warlord in front of his troops],
    [Heroic], [24], [Things legends are made of],
  )]
  , kind: table
  )

=== 2.3 Odds Reference
Chance to hit the number needed on the dice (after subtracting your bonuses):

#figure(
  [#table(
    columns: (31.68%, 10.89%, 28.71%, 28.71%),
    align: (auto,auto,auto,auto,),
    table.header([Need on dice], [2d12], [3d12 keep 2], [4d12 keep 2],),
    table.hline(),
    [7+], [90%], [98%], [99%],
    [9+], [81%], [94%], [98%],
    [11+], [69%], [88%], [95%],
    [13+], [54%], [78%], [89%],
    [15+], [38%], [65%], [80%],
    [17+], [25%], [48%], [66%],
    [19+], [15%], [32%], [48%],
    [21+], [7%], [17%], [28%],
  )]
  , kind: table
  )

Example: Skill +3 and one tag (+1) vs. Standard 15 → need 11+ → #strong[69%];, or #strong[88%] with one bonus die.

=== 2.4 Bonus Dice and Effort
You can add d12s to the roll and #strong[keep the best two];. Maximum #strong[+2 bonus dice] (4d12 keep 2) from any combination of:

#figure(
  [#table(
    columns: (18%, 82%),
    align: (auto,auto,),
    table.header([Source], [Cost],),
    table.hline(),
    [#strong[Effort] (Cypher)], [3 points from the relevant pool, minus that pool\'s Edge (min 0)],
    [#strong[Momentum] (2d20)], [1 for the first die, 2 for the second],
    [#strong[Woe] (2d20)], [Give the GM 1 Woe per die],
    [#strong[Help];], [An ally spends 1 point from a pool and risks sharing the consequences],
  )]
  , kind: table
  )

#strong[Effort (revised).] Each use of Effort costs 3 − Edge from the relevant pool. You may use Effort a number of times per roll equal to your #strong[Effort Level] (1 at start; 2 and 3 are unlocked by advancement). Each use buys one of:

- #strong[+1 bonus die] --- declared before rolling.
- #strong[+1 Power] --- declared #strong[after] a Success or Success at a Cost (Cypher\'s \"effort on damage\"). It cannot turn a failure into a success.

Example: Effort Level 2 lets you buy one bonus die before the roll, then spend again for +1 Power if you succeed.

=== 2.5 Outcomes
#figure(
  [#table(
    columns: (24%, 76%),
    align: (auto,auto,),
    table.header([Result], [Outcome],),
    table.hline(),
    [#strong[Beat the target by 3+ per step];], [Success with extra Power],
    [#strong[Meet the target];], [#strong[Success] --- 1 Power],
    [#strong[Miss by 1--3];], [#strong[Success at a Cost] --- 1 Power, but the GM adds a consequence or gains 1 Woe (player\'s choice of which)],
    [#strong[Miss by 4+];], [#strong[Failure] --- the GM makes a move; GM gains 1 Woe],
  )]
  , kind: table
  )
#colbreak()
#strong[Power] = 1 for meeting the target, +1 for every full 3 points over it. Power is spent on #strong[Effects] (§5). Any Power you don\'t spend becomes #strong[Momentum] (party pool, max 6).

=== 2.6 Doubles (Twists)
If your two #strong[kept] dice show the same number:

- #strong[On a success:] Critical --- +1 Power and add a narrative flourish.
- #strong[On a failure or cost:] Complication --- the GM gains 2 Woe or introduces a complication right away.
- #strong[Double 12s:] always a success with +2 Power. #strong[Double 1s:] always a complication, even on a success.

Base chance of doubles on 2d12 is about 8% (1 in 12).
  ]
    
== 3. Character Creation
  #columns(2, gutter: 6mm)[
=== 3.1 The Sentence
#quote(block: true)[
#strong[\"I am a \[Descriptor\] \[Playbook\] who \[Focus\].\"]

\"I am a #strong[Reckless] #strong[Furcifer] who #strong[Never Leaves Anyone Behind];.\"
]

#figure(
  [#table(
    columns: (20%, 15%, 65%),
    align: (auto,auto,auto,),
    table.header([Part], [Grammar], [What it gives you],),
    table.hline(),
    [#strong[Descriptor];], [Adjective], [+2 pool points to one pool, 1 power tag, 1 weakness tag, 1 suggested Instinct],
    [#strong[Playbook];], [Noun], [Starting pools and Edge, special abilities, XP trigger, load-out, an anchor skill],
    [#strong[Focus];], [Verb phrase], [A tag theme (2 power tags + 1 weakness), a Tier 1 Focus ability, and a link to another PC],
  )]
  , kind: table
  )

=== 3.2 Pools and Edge
Four pools, each roughly 6--14:

- #strong[Starting values:] the playbook sets the base (totals 36), plus 4 points to distribute and +2 from the Descriptor (42 total).
- #strong[Edge:] the playbook gives #strong[3 points of Edge];, maximum 2 in any one pool at creation. Edge reduces the cost of Effort from that pool and adds dice when you Resist with it (§6).
- Pools are spent on #strong[Effort] (§2.4) and #strong[Resistance] (§6). They are your stress tracks.
#figure(
  [#table(
    columns: (20%, 40%, 40%),
    align: (auto,auto,auto,),
    table.header([Pool], [Covers], [Resists],),
    table.hline(),
    [#strong[Sōma];], [Strength, endurance, toughness], [Wounds, poison, exhaustion, cold],
    [#strong[Akmē];], [Speed, precision, stealth, reflexes], [Traps, falls, being caught or grabbed],
    [#strong[Psychē];], [Intellect, perception, memory, cunning], [Confusion, illusion, deception, madness from knowledge],
    [#strong[Pneuma];], [Will, presence, faith, emotional core, the supernatural], [Fear, despair, possession, corruption, social pressure],
  )]
  , kind: table
  )


=== 3.3 Skill Pyramid
Ten rated skills from a list of 20:

#figure(
  [#table(
    columns: (66%, 34%),
    align: (auto,auto,),
    table.header([Rating], [Count],),
    table.hline(),
    [+4 Great], [1],
    [+3 Good], [2],
    [+2 Fair], [3],
    [+1 Average], [4],
  )]
  , kind: table
  )

The playbook\'s anchor skill must sit at +3 or +4. The pyramid rule (each tier must have at least as many skills as the tier above it) still applies when you advance.

#strong[Generic skill list by default pool:]

#figure(
  [#table(
    columns: (23%, 24%, 28%, 25%),
    align: (auto,auto,auto,auto,),
    table.header([Sōma], [Akmē], [Psychē], [Pneuma],),
    table.hline(),
    [Athletics], [Shoot], [Notice], [Will],
    [Brawl], [Stealth], [Investigate], [Persuade],
    [Fight], [Drive/Pilot], [Lore], [Intimidate],
    [Endure], [Craft], [Tech], [Empathy],
    [Survival], [], [Medicine], [Arcana\*],
    [], [], [Deceive], [],
  )]
  , kind: table
  )

\*Arcana is renamed per setting: Mysticism, Faith, Psionics, Weirdness, or removed entirely in mundane games.

The default pool pays for Effort and Resistance. The GM can allow another pool when the fiction supports it (Intimidate with Sōma = looming; with Pneuma = cold menace).

=== 3.4 Tags
Characters carry 6--8 #strong[character tags] from Descriptor, Focus, and Playbook:

- #strong[Power tags] (e.g. #emph[ex-navy marksman];, #emph[silver tongue];, #emph[grandfather\'s revolver];): +1 each when relevant, #strong[max +2 per roll];.
- #strong[Weakness tags] (e.g. #emph[owes the wrong people];, #emph[bad knee];): −1 when relevant, or compel for a Tychē Point (§4).
- #strong[Burning a tag:] mark a power tag as burned to gain an automatic +1 Power on a success. It stays unusable until you recover it (a downtime action or a milestone). Burning ignores the +2 cap.

With a +2 cap, a third relevant tag is best used for burning or as Tychē Point invoke material.

=== 3.5 Beliefs, Instincts, Goals
- #strong[Belief] --- a moral stance or conviction. \"The law protects the powerful; I protect everyone else.\"
- #strong[Instinct] --- an if/then reflex. \"Always check the exits when entering a room.\" Acting on an Instinct lets you take that action without spending time.
#colbreak()
    - #strong[Goal] --- a concrete objective for this session or mission. \"Get Mara out of the precinct before dawn.\"

Goals are rewritten each session; Beliefs and Instincts can change at milestones.

=== 3.6 Starting Resources
- #strong[Tychē Points:] start each session with Tychē Points equal to your #strong[Refresh] (base 3; see §4.1).
- #strong[Load-out:] chosen during play from the playbook\'s gear list (Blades-style light/normal/heavy load), not bought in advance.
  ]
== 4. Tychē Points
    #columns(2, gutter: 6mm)[
#strong[Spend 1 Tychē Point to:]

- #strong[Invoke] --- reroll all dice, or add +2 after rolling. This works with any tag or Truth you can justify, even one belonging to the scene or an enemy. Invokes are not limited by the tag cap.
- #strong[Declare] --- establish a minor fact about the scene. The GM may require it to tie to one of your tags.
- #strong[Resist harder] --- reduce one Resistance cost to 0 (§6).

#strong[Earn Tychē Points by:]

- #strong[Compels] --- the GM or another player offers a complication based on a weakness tag, Scar, Belief, or Instinct. Accept → +1 Tychē Point. Refuse → pay 1 Tychē Point.
- #strong[Playing your Belief against your interests] (Mouse Guard): once per session, take +1 Tychē Point when your Belief causes trouble for you.
#colbreak()
=== 4.1 Refresh
- #strong[Base Refresh is 3.] At the start of each session, your Tychē Points reset to your Refresh (if you have more, keep them).
- At creation you get #strong[1 playbook ability and your Tier 1 Focus ability for free];.
- You may take #strong[up to 2 additional playbook abilities at creation, at 1 Refresh each];.
- Abilities marked #strong[★ (Major)] cost #strong[1 Refresh] whenever you take them, including through advancement.
- An #strong[attuned artifact] (Module A) costs 1 Refresh while you keep it.
- #strong[Minimum Refresh is 1.] You can never trade away your last Tychē Point.
- The advancement option \"+1 Refresh\" (§12) lets you buy Refresh back.

Design intent: power comes at the cost of narrative flexibility. A low-Refresh character is mechanically strong but has to accept compels to stay fuelled.
]

== 5. Effects

#figure(
  [#table(
    columns: (12%, 14%, 74%),
    align: (auto,auto,auto,),
    table.header([Effect], [Cost], [What it does],),
    table.hline(),
    [#strong[Attack];], [1 Power per tier], [Inflict a #strong[Status] (e.g. #emph[wounded-2];, #emph[rattled-1];, #emph[on fire-3];). In a conflict, an Attack removes Disposition equal to its Power + 1 instead (§10.6)],
    [#strong[Weaken];], [1], [Reduce one of the target\'s statuses by 1 tier, or #strong[Burn] one of its tags for the scene],
    [#strong[Create];], [3], [Create a #strong[Truth] that lasts for the scene (#emph[smoke cover];, #emph[crowd on our side];). One extra Power makes it last until resolved],
    [#strong[Enhance];], [1 per tier], [Give an ally a helpful status (#emph[inspired-2];)],
    [#strong[Restore];], [1 per tier], [Reduce a harmful status on yourself or an ally. Lasting injuries have limits (§6.6)],
    [#strong[Discover];], [1], [Ask the GM one question; you get a true, useful answer],
    [#strong[Advance];], [1 per segment], [Tick a #strong[progress clock] (§7)],
    [#strong[Disrupt];], [3], [Cancel or delay an enemy\'s prepared action, or take 1 point off the GM\'s Woe],
    [#strong[Extra Feat];], [1], [Achieve a second, related goal with the same action],
  )]
  , kind: table
  )
  #pagebreak()
#columns(2, gutter: 6mm)[
Each point of Power buys an Effect. Players choose Effects that fit what their character did in the fiction.
  
Any unspent Power → #strong[Momentum];.

=== 5.1 Statuses
- Statuses have #strong[tiers 1--6];.
- #strong[Stacking:] a new status of the same kind raises the existing tier by the new tier minus 1 (minimum +1), so small hits accumulate slowly.
- #strong[Tier 6:] the target is #strong[Taken Out] of whatever that status represents (dead, unconscious, captured, convinced, routed), within the status's scope. A harmful status reaching tier 6 also gives one #strong[Scar] (§6.3). Death needs a lethal cause and established stakes.
- Statuses modify rolls by #strong[± their tier] (use only the highest relevant harmful status and the highest relevant helpful status).
#colbreak()
- #strong[Same kind.] Harm is the same kind when it worsens the same injury, affliction or condition. Renaming it doesn't stop it stacking: another cut worsens #emph[wounded], renewed menace worsens #emph[terrified], but a fresh burn needn't stack with a concussion. The GM says whether new harm stacks #strong[before] you decide to Resist or accept an injury (§10.9).
- #strong[Order.] Resistance and armour reduce incoming harm before it stacks. Harm reduced to tier 0 isn't recorded and doesn't stack. A status can't go above tier 6; extra tiers have no effect unless a rule says so.
- #strong[What it hinders.] A status's name decides which rolls it affects: #emph[slashed thigh-3] hinders running and climbing, not reading a ledger. A status can also decide what is possible: no roll lets you use a hand you no longer have.
- #strong[Life-threatening harm.] A physical status that reaches tier 6 can make you #strong[Dying] when lethal stakes are in play (§6.7).
]

== 6. Resistance, Harm and Recovery
  #columns(2, gutter: 6mm)[
When a consequence lands on you (a status, lost gear, a bad position), you may #strong[Resist];:

+ Choose the pool that fits (see §3.2: Sōma for harm, Akmē to dodge, Psychē against deception and confusion, Pneuma against fear and the supernatural).
+ Roll a number of d12s equal to #strong[2 + that pool\'s Edge] and read only the #strong[highest die];. If penalties take the pool's Edge below 0, see #strong[Negative Edge] below.
+ Pay the listed cost in pool points. #strong[Don\'t subtract Edge] from it; Edge has already helped by adding dice. If #strong[two or more dice show 12];, pay 0 and clear one tier-1 status:

#figure(
  [#table(
    columns: (24%, 28%, 12%, 12%, 12%, 12%),
    align: (auto,auto,center,center,center,center,),
    table.header([Roll], [Cost], [2d], [3d], [4d], [5d],),
    table.hline(),
    [Two 12s], [0 + clear a tier-1], [1%], [2%], [4%], [6%],
    [9--12], [1], [55%], [68%], [77%], [81%],
    [5--8], [2], [33%], [26%], [19%], [13%],
    [1--4], [3], [11%], [4%], [1%], [\<1%],
  )]
  , kind: table
  )

#block[
#set enum(numbering: "1.", start: 4)
+ #strong[Effect:] reduce the incoming status by #strong[2 tiers] (to 0 if that brings it below 1), or turn a severe consequence into a lesser one.
]

The chance columns show Edge 0 to 3 (2d to 5d). A single 12 is simply a highest die in the 9--12 band. When an ability says your Edge #strong[counts as 1 higher] for a Resist, or gives #strong[Edge +1] to it, roll one more die; a penalty to Edge (such as #emph[Exposed] or #emph[Shaken]) rolls one fewer.

#strong[Negative Edge.] Penalties can take Edge below 0 for a Resist:
- #strong[Edge −1:] roll #strong[1d12];.
- #strong[Edge −2 or lower:] roll a number of d12s equal to the Edge without its minus sign (2d12 at −2, 3d12 at −3, and so on), and read only the #strong[lowest die];.

Pay the listed cost for the die you read. A single die can't give the double-12 result. When you keep the lowest, the double-12 result needs #strong[every die] to show 12. The chance columns show Edge −1 (1d), −2 (2d, lowest) and −3 (3d, lowest).

#figure(
  [#table(
    columns: (22%, 33%, 15%, 15%, 15%),
    align: (auto,auto,center,center,center,),
    table.header([Roll], [Cost], [−1], [−2], [−3],),
    table.hline(),
    [All 12s], [0 + clear a tier-1], [---], [1%], [\<1%],
    [9--12], [1], [33%], [10%], [4%],
    [5--8], [2], [33%], [33%], [26%],
    [1--4], [3], [33%], [56%], [70%],
  )]
  , kind: table
  )

#strong[Imposed harm, in order.] When an effect imposes a harmful status:
+ The GM names the status, its source and its incoming tier, and says whether it stacks with a status you already have (§5.1).
+ If you Resist, add any armour that applies (Playbook Rules §2.3) and pay the cost. A cost you can't fully pay makes you run dry (§6.1).
+ Record what is left with normal stacking. A status reduced to tier 0 isn't recorded.

#strong[Once per application.] Resist each application of harm once. You can't make a second attempt against the same harm.

#strong[What Resistance can't touch.] Resistance changes an imposed consequence. It doesn't reverse the action's success, restore lost Disposition or revoke an agreed outcome. Unless an ability says otherwise, you can't Resist:
- ordinary Disposition loss in a conflict (§10.6);
- an injury you accepted to cancel Disposition loss (§10.9);
- a cost you accepted in a concession (§10.11), or any other cost you accepted as payment for a benefit;
- a running-dry status (§6.2).

#strong[Protected payments.] An effect that prevents incoming harm, cancels a consequence or clears a status as a side benefit (such as the double-12 result above) can't remove an injury you accepted as payment, whichever action or Resistance produced it. Treatment, healing time and effects that explicitly heal an existing injury affect it normally (§6.6).

=== 6.1 Running Dry
#strong[Trigger.] You #strong[run dry] when a positive cost brings a pool to 0 or is more than the points left in it. Finish the action or Resistance that caused the cost, then take a harmful #strong[running-dry status] for that pool (§6.2). Running dry does not, on its own, take you out, give you a Scar or refill the pool.

#strong[Overrun.] Work out the final cost after Edge (for Effort), Tychē and every other permitted reduction, then compare it with the points left in the pool:

- #strong[Overrun] = final cost − points left (minimum 0).
- #strong[Incoming status tier] = 1 + overrun (recorded at tier 6 at most).

Spend the points you have. A pool can't go below 0, and the unpaid excess does not move to another pool.

#figure(
  [#table(
    columns: (22%, 20%, 20%, 38%),
    align: (auto,auto,auto,auto,),
    table.header([Points left], [Final cost], [Overrun], [Incoming status],),
    table.hline(),
    [3], [2], [0], [None (1 point left)],
    [3], [3], [0], [Tier 1],
    [1], [2], [1], [Tier 2],
    [1], [3], [2], [Tier 3],
    [0], [3], [3], [Tier 4],
    [0], [5], [5], [Tier 6],
  )]
  , kind: table
  )

Overrun beyond tier 6 has no extra effect unless a rule or an established stake says so.

#strong[Which costs can overrun.] Only #strong[Resistance] and costs #strong[imposed] on you. Effort, Help and ability activation costs must be paid in full unless the ability says it can overrun. You may spend your exact last points on purpose: the pool runs dry and you take a tier-1 status. A cost you accept as payment for a benefit is not an imposed cost.

#strong[Pay as you go.] Pay each cost at the point its rule says, and resolve any running dry straight away. If that status takes you out, finish only the action or Resistance whose cost caused it: you can't add more Effort, buy more Power or activate more abilities for that action. The action still resolves. If it is one of two independent actions in a volley, both resolve before victory is checked.

#strong[Separate costs stay separate.] Each cost listed separately is its own payment. You can't split one cost into smaller payments, or combine separate costs, to change overrun or stacking. When one effect takes several points from the same pool at once, total them as one imposed cost unless the effect says otherwise. Costs from different pools are resolved separately.

#strong[Resisting on empty.] You can Resist with a low or empty pool unless your condition prevents it (§6.4), and the Resistance still takes effect. Resolve protection, the Resistance and the original consequence first, then apply the running-dry status. The new status doesn't penalise that Resistance roll or undo its result.

#strong[Zero costs.] A final cost of 0 never makes you run dry, even if the pool is already empty. Being at 0 isn't an event in itself: you don't take a new status because time passes, a new turn begins, or you take an action that costs nothing. A later positive Resistance cost or imposed cost can make you run dry again.

#strong[Empty pools.] An empty pool has no penalty of its own. It doesn't remove Disposition or take you out; its running-dry status does that work. You can keep acting with other resources or with actions that cost nothing. The pool stays at 0 until rest restores it (§6.5). There is no automatic refill.

#strong[NPCs.] Ordinary NPCs don't have pools and never run dry. Spending Woe on an NPC creates no status, and Woe can't be overrun: if the GM can't pay an ability's Woe cost, the NPC can't use that ability. An NPC built with full PC pools runs dry normally.

#sidebar("Running Dry in Order")[
  #set enum(numbering: n => text(font: display-font, fill: brass, weight: 700, size: 0.85em)[#n.])
+ Pay each cost when its rule says.
+ If the cost empties or overruns the pool, work out the overrun.
+ Impose that pool's running-dry status at tier 1 + overrun.
+ Stack it with the same status if you already have it (§5.1).
+ At tier 6, apply the status's scope, then record one Scar (§6.3).
+ Recover the pool and the status separately (§6.5).
]

=== 6.2 Running-Dry Statuses
The status must fit both the pool and the action that drained it:

#figure(
  [#table(
    columns: (18%, 82%),
    align: (auto,auto,),
    table.header([Pool], [Example running-dry statuses],),
    table.hline(),
    [Sōma], [#emph[physically exhausted];, #emph[muscular strain];],
    [Akmē], [#emph[unsteady];, #emph[reflexes overloaded];],
    [Psychē], [#emph[mentally exhausted];, #emph[cognitive overload];],
    [Pneuma], [#emph[resolve fractured];, #emph[spiritually drained];],
  )]
  , kind: table
  )

#strong[Set it up once.] When you first record the status, set its name, its scope and its recovery category (§6.5). The name decides which rolls it hinders.

#strong[One status per pool.] The first time a pool runs dry, that status becomes the pool's depletion status for the rest of the continuous ordeal. Write the pool beside it. Running dry in that pool again worsens the same status, unless a genuinely different cause calls for a different consequence. A new name or description is not a different cause. Each running-dry event worsens only one status.

#strong[Example.] You have #emph[mentally exhausted-2] and overrun Psychē by 2. The incoming status is tier 3, which stacks for +2, so you now have #emph[mentally exhausted-4].

#strong[It is a cost.] Armour, Resistance and effects that cancel incoming consequences can't prevent or reduce a running-dry status. Once recorded, it can be treated, Restored or healed like any existing status, within the limits of the effect used. A clearing benefit from the same Resistance or action can't clear the status that paid for it.

=== 6.3 Tier 6 and Scars
When a harmful status reaches #strong[tier 6], whether in one hit or through stacking:

+ Resolve its tier-6 outcome (§5.1).
+ Apply removal within the status's scope (below).
+ Record #strong[one Scar], subject to the limits below.

#strong[Scope.] If the status leaves you unable to pursue your side's intent in the current conflict, you are #strong[Taken Out]. Your side's shared Disposition doesn't change (§10.7). If none of a side's participants can continue pursuing its objective, that side loses at once. If the status only stops one activity (#emph[bound] stops you moving, not talking), apply that restriction and stay in the conflict. Set the scope of a non-damage status when it is inflicted, and don't widen it at tier 6. Either way, the status still gives its Scar.

#strong[Not lethal by default.] A running-dry status at tier 6 is not deadly on its own. Death needs a lethal cause and established stakes. Tier 6 doesn't, by itself, cost you a limb, lower a maximum pool or impose any other permanent loss; those need an established consequence, a specific effect or an agreement.

#strong[The Scar.] The status records your current condition; the Scar records the lasting mark of reaching the breaking point. The player and GM agree on a Scar that fits what happened. A Scar can't introduce an unrelated injury, dictate an unrelated belief, or extend the opposition's victory beyond the stakes. Label it with the pool most tied to the condition (a #emph[Pneuma Scar]):

#figure(
  [#table(
    columns: (38%, 62%),
    align: (auto,auto,),
    table.header([Tier-6 status], [Possible Scar],),
    table.hline(),
    [#emph[physically exhausted]], [#emph[my old injury gives out under strain]],
    [#emph[reflexes overloaded]], [#emph[hesitates when everything moves at once]],
    [#emph[cognitive overload]], [#emph[gaps in the memory of that night]],
    [#emph[terrified]], [#emph[can't forget what was behind the door]],
    [#emph[resolve fractured]], [#emph[doubts the oath that once sustained me]],
    [#emph[bound] or #emph[captured]], [#emph[can't bear being restrained]],
  )]
  , kind: table
  )

#strong[Scar limits.]
- #strong[One per episode.] A status gives a Scar the first time it reaches tier 6. More harm while it stays at tier 6, or lowering it and raising it again in the same episode, gives no further Scar.
- #strong[One per event.] A single action or hazard can give a character at most one Scar, even if it takes several statuses to tier 6. Only an ability that says so can give more than one.
- #strong[Scar Recorded.] Mark every status that reached tier 6 in a Scar-giving event as #emph[Scar Recorded] for the rest of the continuous ordeal, even if the status is later cleared. Remove the mark only when the status is fully cleared #strong[and] the scene or ordeal is over. The mark is bookkeeping only, not a status or a penalty.
- Don't split one condition into several differently named statuses to gain or avoid Scars.

#strong[Scar effects.] A Scar is a lasting weakness tag, not a status. Apply it when it's relevant, and it can be compelled for Tychē Points. Rest, treatment, Restore and pool recovery don't remove a Scar; changing one takes an Advance, a milestone or an explicit ability. If a Scar and a harmful status describe the same impairment on the same roll, apply only the larger penalty. Your #strong[fourth Scar] retires the character from ordinary adventuring. Finish the immediate scene, then decide with the player how the character leaves. Retirement doesn't mean death.

=== 6.4 Being Taken Out
#strong[Three ways out.] You are #strong[Taken Out] of a conflict when a harmful status reaches tier 6 within its scope (§6.3), when an effect says so, when you voluntarily withdraw, or when an established circumstance prevents you from pursuing your side's objective (§10.7). Ordinary Disposition loss never takes an individual out. Once you are out, you can't start another action, spend Effort or activate an ability unless its rules let you act while Taken Out.

#strong[Disposition stays with the side.] Being Taken Out doesn't directly change your side's shared Disposition. Your side loses your skills, abilities and help, and if none of its participants can continue pursuing its objective, it loses at once (§10.7, §10.10).

#strong[Out isn't down.] Being Taken Out doesn't, on its own, make you unconscious, injured or dying. Describe it to fit the fiction: pinned down, disarmed, driven back, cut off, or too frightened to go on. Injury needs a status, death needs established lethal stakes (§6.7), and permanent harm needs an established consequence (§6.8).

#strong[Resisting while out.] Being Taken Out doesn't automatically stop you Resisting, but the Resistance must be something you can still do. You can brace against pain while pinned down, but you can't dodge while fully #emph[bound], or use an act of will while unconscious. When a status first takes you out, finish any Resistance already under way. Resistance can't reverse a defeat, undo an accepted concession, or prevent a cost you accepted as payment. Once a conflict is settled, you can only Resist the consequences that were left open to it; you can't use Resistance to reopen the intent or delay settlement.

#strong[Getting back in.] To rejoin a conflict that is still going, and that your side hasn't lost, you need both of these:
+ the condition that stopped you must be removed; and
+ an ability or rule must explicitly let a Taken Out character return.

Returning doesn't restore any of your side's Disposition unless the ability says so.

An ordinary Defend can't bring back a Taken Out ally unless its rules say it can. If you recover after the conflict is over, you act normally in the scenes that follow, subject to your remaining statuses.

=== 6.5 Rest and Recovery

Recovery follows four successive rest stages:

#figure(
  [#table(
    columns: (16%, 38%, 46%),
    align: (auto,auto,auto,),
    table.header([Rest], [Time required], [Recovery],),
    table.hline(),
    [First], [A few seconds; one action during an encounter], [Roll 1d12, halve the result and round up],
    [Second], [10 minutes], [Roll 1d12, halve the result and round up, then add 1],
    [Third], [1 hour], [Roll 1d12, halve the result and round up, then add 2],
    [Fourth], [10 hours, usually overnight], [Restore all four pools to full],
  )]
  , kind: table
  )

- #strong[Divide the recovered points among Sōma, Akmē, Psychē and Pneuma however you wish], without exceeding a pool\'s maximum. They don\'t have to go to whichever pool was drained most recently.

- #strong[Edge does not apply to recovery.] Edge only reduces Effort cost and adds Resistance dice (§2.4, §6); recovery stays flat so it can\'t stack with Edge\'s other benefits.
- After the 4th rest, the cycle resets --- your next rest that day (or the start of a new day) is a First rest again.
- Each PC rests and rolls independently. If two of five party members stop for 10 minutes to recover, the other three don\'t have to stop or roll.
- #strong[Running dry has no automatic refill.] A pool at 0 comes back through these rests in the normal way. Its running-dry status recovers separately, as described below.

#strong[Recovering running-dry statuses.] Restoring a pool doesn't clear its running-dry status, and clearing the status doesn't refill the pool. When you first record the status, choose its category:

- #strong[Depletion] (exhaustion, strain, temporary overload): the default, unless the source makes it an injury or affliction. It recovers through rest, as described below.
- #strong[Injury] (real physical damage): recovers through treatment, Restore and healing time, like any wound.
- #strong[Affliction] (supernatural or ongoing cause): recovers only as its source allows.

#strong[Resting off depletion] #emph[(playtest value)]#strong[.] When you take one of the 1st--3rd rests, you can put the recovery roll toward the pool, toward its depletion status, or split it between them. Every #strong[2 points] removes #strong[1 tier] of the depletion status. Each point counts once. The 4th rest (full restore) also clears any depletion status whose cause has ended. It doesn't clear Scars, injuries or afflictions. Reassurance or first aid can make recovery possible, but can't keep stripping depletion tiers with Restore. Abilities that explicitly restore exhaustion or harmful statuses work as written.

#strong[No shortcut.] Running dry never gives a special recovery roll, an automatic refill, or a way around the rest cycle. You can't overrun a pool on purpose to replace a bad recovery roll or to jump to a fresh rest stage.

#strong[Each layer recovers on its own.] Disposition, pools and statuses each recover only through their own procedure:
- #strong[Disposition] is set fresh when a genuinely new conflict begins (§10.2). Fresh Disposition doesn't refill pools or clear statuses, and a brief pause in the same struggle isn't a new conflict.
- #strong[Pools] recover through the rests above. A full pool doesn't heal an injury, and an injury doesn't stop pool recovery unless its rule says so.
- #strong[Statuses] recover by their kind: a temporary state ends when its cause or duration ends; injuries need treatment and time (§6.6); afflictions follow their source.

Winning a conflict, ending a scene or setting fresh Disposition is #strong[not a general reset].


#strong[Advance option --- Hardened] #emph[(6 XP, one-time)]

Recover #strong[1 additional point] whenever you make a recovery roll. This Advance may be taken only once. It does not change the fourth rest\'s full recovery.



=== 6.6 Treatment and Healing

#strong[Appropriate care.] Treatment must address the cause of the harm:

#figure(
  [#table(
    columns: (44%, 56%),
    align: (auto,auto,),
    table.header([Harm], [Typical care],),
    table.hline(),
    [Wounds, blood loss, poison], [Medicine and suitable supplies],
    [Fear, grief, shock], [Empathy, reassurance and safety],
    [Confusion, cognitive disruption], [Diagnosis, rest or specialist care],
    [Damaged machines or implants], [Science or Craft, tools and access],
    [Curses, possession, corruption], [A fitting supernatural method or the source's stated cure],
  )]
  , kind: table
  )

A skill doesn't supply the tools, knowledge or fictional permission on its own.

#strong[Routine care.] In safe conditions, when failure would add nothing, care needs no roll. It gives permission to treat, stabilises where nothing is uncertain, and meets the conditions for natural recovery. It #strong[generates no Power]. If ordinary treatment could remove one tier of a lasting injury and success is routine, remove that tier and mark the injury #emph[treated]; there's no surplus Power or Momentum. Roll only when an uncertain result matters, never just to farm Momentum.

#strong[Emergency care] stops an injury getting worse: stopping bleeding, splinting a limb, pulling someone away from a harmful influence, isolating a damaged power cell. It doesn't normally reduce the tier. When the outcome is uncertain, roll the treatment skill vs. #strong[Standard 15], adjusted by Truths. On a success, the deterioration stops or treatment can begin. On a Success at a Cost, the same, with the normal cost. On a failure, the condition is still untreated; the GM announces any further consequence before another attempt.

#strong[Restore on lasting injuries.] Restore costs 1 Power per tier (§5). It can clear a #strong[temporary] condition outright when the action removes its cause: putting out burning clothes reduces #emph[on fire], calming an ally reduces fear. #strong[Lasting injuries] are slower:
- Ordinary treatment reduces a given lasting injury by #strong[at most 1 tier]. Mark it #emph[treated].
- Further ordinary treatment can't reduce it again until a healing interval (below) actually removes a tier from it. Interrupting rest, changing healers, renaming the injury or starting a new scene doesn't clear the mark, and new harm to the same injury doesn't refresh it. A separate injury has its own mark.
- Spare Power buys other fitting Effects or becomes Momentum as normal.
- Abilities, cyphers and items that explicitly heal a stated number of tiers (such as #emph[healing gel]) follow their own text. Abilities that only change the cost of Restore don't lift the 1-tier limit.

#strong[Care in a conflict.] Treating someone under opposition uses your action. Emergency care can be a Defend only where the conflict type or an ability allows its skill (such as #emph[Battlefield Surgeon]). Restoring Disposition keeps your side in the contest; it doesn't heal an injury unless the action also buys a healing effect.

#strong[Healing intervals] #emph[(playtest values)]#strong[.] Once a lasting injury has had appropriate care and its cause has stopped, safe rest removes one tier per interval. Use the injury's current tier:

#figure(
  [#table(
    columns: (26%, 74%),
    align: (auto,auto,),
    table.header([Current tier], [Safe recovery to remove 1 tier],),
    table.hline(),
    [1], [One full night],
    [2], [One full day],
    [3], [Three full days],
    [4], [One full week],
    [5], [Appropriate treatment, then one full week],
    [6, not lethal], [Remove the incapacitating cause and set a recovery method],
    [6, life-threatening], [Stabilise, then definitive care before natural recovery begins (§6.7)],
  )]
  , kind: table
  )

These are game-time intervals, not medical estimates. A full night is the normal overnight rest; a full day is 24 hours in recovery conditions; a full week is seven such days. Intervals can overlap pool rests. Recovery needs shelter, food and care that suit the injury. Light activity is fine; strenuous activity that aggravates the injury stops recovery.

#strong[Timing.]
- When an injury's tier changes, its next interval uses the new tier.
- If treatment or healing lowers the tier, keep the qualifying time already spent. If that time already meets the new interval, remove one tier and start the next interval at zero. One change can complete only one interval.
- If fresh harm raises the tier, discard progress and start a new interval at the higher tier. Separate injuries don't reset each other.
- A brief interruption pauses recovery; it doesn't erase it. A bad roll on an unrelated action doesn't worsen an injury; that needs a relevant danger or a stated consequence.

#strong[Afflictions] (poison, disease, possession, curses, ongoing exposure) don't follow the interval table. When the affliction is identified, its source sets what worsens it, what suppresses it, what allows recovery, and whether treatment cures it or only eases the symptoms. A setting book can give specific afflictions, and creatures that recover in unusual ways, their own rules; where it does, those rules win.

=== 6.7 Dying and Stabilisation

#strong[Becoming Dying.] After Resistance and stacking, life-threatening physical harm that reaches tier 6 makes a living character #strong[Dying], if lethal stakes allow that outcome (§10.2). It also gives a Scar as normal (§6.3). The character is incapacitated and can't take ordinary actions. Start a #strong[3-segment Dying clock]. There is no extra #emph[dying] penalty; the injury already records the harm. Mental defeat, capture, exhaustion and ordinary fear never start a Dying clock, and a running-dry status is never lethal on its own.

#strong[Cadence.] When Dying begins, set how the clock advances: at the end of each exchange after the one in which Dying began, during a scripted conflict; or after a stated fictional interval, outside one. The clock advances #strong[because the interval passes], not because someone attempts treatment. Several characters can act in the same interval without advancing it further. Moving into or out of a scripted conflict carries the existing deadline over; it doesn't advance the clock or grant extra time.

#strong[Further harm.] Each further unmitigated physical harm that could worsen the mortal injury marks one extra segment, even though the injury stays at tier 6. One action or hazard can mark at most one extra segment. When the third segment is marked, the character dies.

#strong[Stabilising.] An adjacent character with suitable means rolls Medicine vs. #strong[Hard 18], adjusted by Truths. An ability or a fitting supernatural method can offer another way.
- #strong[Success:] the patient is stable and the clock stops.
- #strong[Success at a Cost:] stable, with the normal cost.
- #strong[Failure:] still Dying. The attempt uses the action, but doesn't advance the clock.

Stabilising doesn't erase marked segments, reduce the injury, refill pools or return the patient to the conflict. A stable patient can be moved with care. If a new event makes them Dying again, the clock resumes from its recorded segments.

#strong[Definitive care.] Emergency care can stabilise a tier-6 life-threatening injury but can't lower its tier. Lowering it below tier 6 takes #strong[definitive care]: a suitable procedure, facility or specialist, or an ability or item that explicitly heals the injury (such as #emph[Miracle Worker], #emph[Not on My Table] or #emph[healing gel]). The GM states what that requires when the injury is assessed and doesn't add requirements once they are met. When definitive care brings the injury below tier 6 and removes its immediate lethal cause, clear the Dying clock.

#strong[Immediate death.] Use it only when the established outcome leaves no plausible time for rescue, or a specific killing method calls for it (such as a creature's killing strike in a setting book). Announce that danger before the roll, and allow Resistance, escape or interruption. Once such an outcome is fully resolved, don't add a Dying clock to undo it; equally, don't skip the clock for an ordinary mortal wound just because the description is graphic.

#strong[Setting-specific harm.] If a setting gives a condition (such as blood loss) its own tiers and stabilising rules, use those instead of a Dying clock, not as well.
#colbreak()
=== 6.8 Permanent Harm
#strong[Where it comes from.] An injury doesn't become permanent just because its tier is high. Permanent harm needs an established permanent-injury stake, a specific effect or creature rule, a voluntary bargain, or a Scar-giving event. Tier 6 always gives a Scar (§6.3), but never by itself severs a limb, destroys an organ, lowers a maximum pool or causes any other permanent mechanical loss.

#strong[The wound heals; the loss stays.] A permanent change can outlast the injury that caused it. When #emph[severed hand-4] has healed, the hand is still gone: the status measured the acute wound. Record the lasting change as a tag or a character fact, not as a status that never heals.

#strong[Adapting.] Training, help, prostheses, old-world works or supernatural intervention can change how permanent harm affects play. A replacement doesn't automatically remove a related Scar, and a Scar doesn't make a replacement useless. Don't reduce maximum pools, Edge, skills or Refresh unless the effect or an agreed Advance says so.
]

== 7. Progress Clocks
#columns(2, gutter: 6mm)[
- #strong[Sizes:] 4 (simple), 6 (complex), 8 (daunting), 12 (epic).
- #strong[Player clocks] tick with the #strong[Advance] effect (1 Power = 1 segment).
- #strong[Danger clocks] tick when the GM spends Woe (1 Woe = 1 segment) or on failures.
#colbreak()
- #strong[Racing clocks:] two clocks run together (e.g. #emph[Crack the vault 8] vs. #emph[Guards arrive 6];).
- #strong[Linked clocks:] filling one opens or unlocks another.
- #strong[Downtime projects] use 8- or 12-segment clocks.
]
  
== 8. Truths
#columns(2, gutter: 6mm)[
#strong[Truths] are tags that describe the scene, location, faction, or campaign.

- #strong[Scene Truths:] #emph[Pitch Dark];, #emph[Knee-Deep Water];, #emph[Hostile Crowd];. Each relevant Truth raises or lowers Difficulty by one step (±3), makes an action impossible or possible, or can be invoked with a Tychē Point.
- #strong[Campaign Truths:] 3--5 world statements agreed at session zero (#emph[Magic is real but feared];, #emph[The Corporation owns the police];).
#colbreak()
- #strong[Creating Truths:] players use the #strong[Create] effect or spend #strong[2 Momentum];; the GM spends #strong[2 Woe];.
- #strong[Removing Truths:] use the Weaken or Create effect as a counter (\"I kill the lights\" removes #emph[Brightly Lit];), at GM discretion.

See #strong[Module C] for using Truths to drive a sandbox campaign.
]
#pagebreak() 
== 9. Momentum and Woe
  #columns(2, gutter: 6mm)[
=== 9.1 Momentum (shared by the party, max 6)
#strong[Gain:] unspent Power from rolls. #strong[Decay:] lose 1 Momentum at the end of each scene.

#figure(
  [#table(
    columns: (78%, 22%),
    align: (auto,auto,),
    table.header([Spend], [Cost],),
    table.hline(),
    [Add a bonus die], [1 (first) / 2 (second)],
    [+1 Power on a success], [2],
    [Ask the GM a question (Discover)], [1],
    [Create a Truth], [2],
    [Seize the initiative / change your scripted action in a conflict], [2],
    [Reduce Woe by 1], [2],
  )]
  , kind: table
  )
#colbreak()
=== 9.2 Woe (the GM\'s pool)
#strong[Starting Woe:] 2 per PC at the start of a session. #strong[GM gains Woe from:] players buying dice with Woe, Success at a Cost (if chosen), failures (+1), complications from doubles (+2), refused compels, and dangerous scene Truths (+1 per scene).

#figure(
  [#table(
    columns: (65%, 35%),
    align: (auto,auto,),
    table.header([GM spend], [Cost],),
    table.hline(),
    [Complication or minor twist], [1],
    [Tick a danger clock], [1 per segment],
    [NPC bonus die], [1 per die],
    [Activate an NPC/monster special ability], [1--3],
    [Create a Truth], [2],
    [Reinforcements], [1 per minion, 3 for a significant NPC],
    [Interrupt in a conflict (change an NPC\'s scripted action)], [3],
  )]
  , kind: table
  )
]

== 10. Conflict System
#columns(2, gutter: 6mm)[
#strong[Every big contest uses full scripting.] Small obstacles are handled with a single roll; anything that meets the conflict test below becomes a scripted conflict.

=== 10.1 When It\'s a Conflict
Use a conflict when #strong[any two] of these are true:

- Both sides have a clear #strong[intent] that excludes the other\'s.
- The opposition is a #strong[named NPC, a group, or a significant force] (not a single guard or a locked door).
- The outcome would #strong[change the story] (a relationship, a location, a faction, someone\'s life).
- A single roll would feel #strong[anticlimactic] to the table.


=== 10.2 Setup
+ #strong[Declare intent and stakes:] each side states what it wants if it wins. Establish what losing lets the other side do, whether death, permanent injury or capture is at stake, and what surrender or withdrawal could look like.
+ #strong[Choose the conflict type] (§10.4), which sets the skill for each action.
+ #strong[Disposition:] the leader of each side rolls #strong[2d12 + the type\'s Disposition skill + the highest Edge in that skill\'s pool];, divide the result by three (round down). Next,add +1 per helper, add every flat bonus or penalty to starting Disposition (from abilities, creature rank, conditions and similar effects). That is the side\'s #strong[Disposition] (usually 8--11), one shared total for the whole side (§10.7).
+ #strong[Superiority:] reduce the opposing side's starting Disposition by your Superiority (§10.3).
+ #strong[Track] Disposition as a number or a clock.

#strong[Intent sets the scope.] Beating a side whose intent is to hold a doorway doesn't, by itself, let you kill them all, take everything they carry or achieve some unrelated goal.

#strong[Lethal stakes.] A lethal outcome must be established before the roll or exchange that can produce it. Stakes can change mid-conflict when circumstances do, but never retroactively: the GM explains the new danger and lets those affected respond before it is resolved. Lethal stakes make death possible; they don't make every hit deadly.

#strong[New conflict or the same one?] Set fresh Disposition only for a genuinely new conflict: a materially different intent or changed circumstances. Moving through a doorway, switching from a Fight to a Chase, or changing tactics in the same unresolved struggle continues the same conflict; carry over Disposition, used injury trades (§10.9) and Taken Out characters.

=== 10.3 Superiority
Preparation can weaken an opponent's position before a conflict begins. Gain 1 Superiority for each of the following, to a maximum of 3:

- #strong[Know Thy Foe:] Obtain information that reveals an exploitable weakness, motive, fear, or vulnerability.
- #strong[Know Thy Battlefield:] Secure an advantageous position or understand circumstances that materially favour your approach.
- #strong[Know Thy Players:] Put a plan, alliance, resource, or other preparation into place that materially improves your position.

Each category grants Superiority only once. Preparation must apply to the opposing side and the declared stakes of the conflict.

After calculating starting Disposition and applying all other modifiers, reduce the opposing side's starting Disposition by your Superiority, to a minimum of 1. This adjusted value is its starting Disposition for all purposes, including recovery and compromise.
#colbreak()
Superiority is not tracked or spent after the conflict begins.

Abilities retain their normal benefits when their results also qualify for Superiority. Evaluate the concrete information, position, or preparation—not the ability’s name. Rephrasing one advantage does not create additional categories; additional categories require distinct material advantages. Determine Superiority only at conflict setup.
]
  
=== 10.4 Conflict Types
#figure(
  [#table(
    columns: (17%, 21%, 19%, 16%, 10%, 17%),
    align: (auto,auto,auto,auto,auto,auto,),
    table.header([Type], [Disposition], [Attack], [Defend], [Feint], [Maneuver],),
    table.hline(),
    [#strong[Fight];], [Fight or Brawl], [Fight / Brawl / Shoot], [Athletics / Endure], [Deceive], [Notice / Stealth],
    [#strong[Chase];], [Athletics or Drive/Pilot], [Athletics / Drive], [Athletics / Drive], [Stealth], [Notice / Survival],
    [#strong[Argument];], [Persuade], [Persuade], [Will], [Deceive], [Empathy],
    [#strong[Negotiation];], [Persuade], [Persuade], [Empathy], [Deceive], [Investigate],
    [#strong[Infiltration];], [Stealth], [Stealth / Tech], [Deceive], [Craft], [Investigate],
    [#strong[Battle] (armies)], [Lore (tactics)], [Fight], [Endure], [Deceive], [Lore],
    [#strong[Spirit Duel];], [Arcana], [Arcana], [Will], [Deceive], [Lore],
    [#strong[Hack / Netwar];], [Tech], [Tech], [Tech], [Deceive], [Investigate],
    [#strong[Survive the Wild];], [Survival], [Survival], [Endure], [---], [Notice],
  )]
  , kind: table
  )

#columns(2, gutter: 6mm)[
  Settings can add types; each type needs one skill per action and a Disposition skill. A dash (---) means that action isn\'t available in that type.
=== 10.5 Scripting and Volleys
Each #strong[exchange] is three #strong[volleys];. Each side secretly #strong[scripts] three actions in order, then they are revealed one volley at a time.

- #strong[Rotation:] every team member must act once in an exchange before anyone acts twice (Mouse Guard rule).
- #strong[Changing your script:] spend 2 Momentum (players) or 3 Woe (GM) to swap one unrevealed action.
- #strong[Independent:] roll against Standard 15 (adjusted by Truths and the opposition\'s tags).
- #strong[Versus:] both sides roll; the higher total wins, and the margin over the loser\'s total decides Power (meet = 1, +1 per full 3).
 
#figure(
  [#table(
    columns: (18%, 21%, 23%, 20%, 18%),
    align: (auto,auto,auto,auto,auto,),
    table.header([], [Attack], [Defend], [Feint], [Maneuver],),
    table.hline(),
    [#strong[Attack];], [Both roll independently], [Versus], [Attack independent; Feint does nothing], [Versus],
    [#strong[Defend];], [Versus], [Both roll independ-ently], [Feint independent; Defend does nothing], [Versus],
    [#strong[Feint];], [Attack independent; Feint does nothing], [Feint independent; Defend does nothing], [Versus], [Versus],
    [#strong[Maneuver];], [Versus], [Versus], [Versus], [Both roll independ-ently],
  )]
  , kind: table
  )


=== 10.6 Actions and Effects
#figure(
  [#table(
    columns: (20%, 80%),
    align: (auto,auto,),
    table.header([Action], [Default effect of Power],),
    table.hline(),
    [#strong[Attack];], [Remove Disposition from the opposing side equal to the Power committed, +1],
    [#strong[Defend];], [Each Power restores 1 of your side\'s Disposition (up to the starting value)],
    [#strong[Feint];], [Remove Disposition from the opposing side equal to the Power committed, +1; the Feint ignores Defend],
    [#strong[Maneuver];], [Spend Power on: #strong[Impede] (1: opponent −3 on next roll), #strong[Gain Position] (1: +1 bonus die on next roll), #strong[Disarm] (3: remove an action type or burn a key tag for the rest of the conflict), or #strong[Create a Truth] (2)],
  )]
  , kind: table
  )

Effort (including Effort for +1 Power), Momentum, Woe, Tychē Points, tags, and Truths all work normally.

#block(breakable: false)[
#strong[Three layers, three jobs.]

#figure(
  [#table(
    columns: (25%, 75%),
    align: (auto,auto,),
    table.header([Layer], [What it measures],),
    table.hline(),
    [#strong[Disposition]], [Whether your side can keep pursuing this conflict's intent. One shared total per side (§10.7). Reduced by Attacks and Feints; restored by Defend],
    [#strong[Pools]], [Your capacity for Effort, abilities and Resistance. Spent by you; restored by rest (§6.5)],
    [#strong[Statuses]], [What has actually happened to you. Inflicted by direct harm, injury trades, hazards and compromise; recovered by treatment and time (§6.6)],
  )]
  , kind: table
  )
]

Losing one doesn't reduce the others. Apply more than one only when a rule says so.

#strong[Conflict attacks.] An ordinary successful Attack or Feint removes Disposition, and nothing else: no pool points, no status. Describe the loss to fit the fiction (driven back, an opening lost, cut off, a glancing blow); the description doesn't create an injury. Armour and Resistance don't reduce Disposition loss unless an ability says so.

#strong[Attack and Feint loss.] When a successful Attack or Feint applies its default Disposition-loss effect, it removes Disposition equal to the Power committed to that effect, plus 1. This bonus is Disposition loss, not additional Power. Apply an eligible injury trade afterward (§10.9).

#strong[Direct harm.] Outside a conflict, harmful effects inflict statuses (§5, §6). Inside one, an ability or hazard can inflict a status only if it says so; resolve that status separately from any Disposition loss. Don't add harm to an ordinary Attack just because the weapon is dangerous or the narration is violent.

A side at 0 Disposition loses the conflict (§10.7), but its members aren't necessarily harmed (§6.4).

=== 10.7 Shared Disposition
Each side has one Disposition total. Determine it normally, but do not divide it among participants.

Successful Attacks and Feints reduce the opposing side's Disposition by the Power committed, plus 1 (§10.6). Successful Defend actions restore your side's Disposition, up to its starting total. Ordinary Disposition loss does not inflict statuses, drain Pools, or individually remove participants.

A character stops participating when a status, explicit effect, voluntary withdrawal, or established circumstance prevents them from pursuing the side's objective. Their removal does not directly change shared Disposition.

A side loses when its Disposition reaches zero or none of its participants can continue pursuing its objective. Complete independently resolving actions before checking victory. Resolve mutual defeat and compromise normally.

Injury trades protect shared Disposition, with no more than one participant accepting an injury against each Attack or Feint.

=== 10.8 Conflict Gear
Gear in conflicts is written as an #strong[action tag] that only applies to the listed action(s). It counts toward the +2 tag cap.

#figure(
  [#table(
    columns: (73%, 27%),
    align: (auto,auto,),
    table.header([Example gear], [Tag],),
    table.hline(),
    [Sword, knife], [+1 Attack],
    [Shield, cover], [+1 Defend],
    [Spear, polearm, rifle with scope], [+1 Maneuver],
    [Smoke grenade, false papers], [+1 Feint],
    [Damning evidence (Argument)], [+1 Attack],
    [Signed treaty draft (Negotiation)], [+1 Maneuver],
  )]
  , kind: table
  )

=== 10.9 Accepting Injury
#strong[The trade.] Injury trades protect your side's shared Disposition (§10.7). Once per character per conflict, when a successful Attack or Feint would reduce your side's Disposition, you may accept a lasting injury to cancel some of that loss. No more than one participant may accept an injury against each Attack or Feint. Declare it before the loss is applied, even if the loss would reduce your side to 0:

#figure(
  [#table(
    columns: (50%, 50%),
    align: (auto,auto,),
    table.header([Injury you accept], [Disposition loss cancelled],),
    table.hline(),
    [Tier 2], [1],
    [Tier 3], [2],
    [Tier 4], [3],
  )]
  , kind: table
  )

Name the injury, say how taking it keeps you in the fight, and record it at once. It must follow from the action: a blade gives #emph[slashed forearm], not #emph[embarrassed]; an occult assault might give #emph[fractured concentration]. The injury stacks normally (§5.1) and must add a real cost: a new relevant status, or a worse one.

#strong[You can't:]
- pay with an injury you already have, or with a status that has no relevant effect or is wholly covered by an equal or worse status;
- rename, split or file the injury somewhere irrelevant to dodge its cost;
- accept an injury that would take a status to tier 6;
- use the trade after you are Taken Out, or against voluntary costs or loss from Maneuvers, hazards or special effects (unless their rules allow it);
- cancel a status, an execution or any outcome that isn't ordinary Disposition loss, or cancel more loss than the Attack or Feint inflicted;
- invent a bodily injury to pay for a purely logistical setback.

The trade cancels incoming loss. It doesn't restore Disposition already lost or raise your starting Disposition.

#strong[It's a payment.] Armour, Resistance, cancellation effects and side benefits can't reduce or prevent an accepted injury (§6). It heals through treatment and time like any other injury.

#strong[One trade per Attack or Feint.] Only one participant's injury can cancel loss from a single Attack or Feint, and each point of loss can be cancelled only once.

#strong[Refresh.] The trade refreshes only when a genuinely new conflict begins (§10.2).

=== 10.10 Taken Out, Volleys and Mutual Defeat
#strong[Finish the action first.] Complete all the costs, choices and effects of the action being resolved before applying removal it causes. After that, the removed character can't act (§6.4).

#strong[Independent actions.] When two actions resolve independently in the same volley, both resolve even if one takes someone out. Neither cancels the other. Check victory after both.

#strong[Side defeat.] When a side's Disposition reaches 0, or none of its participants can continue pursuing its objective, that side loses (§10.7). The winner achieves its intent, subject to compromise (§10.12). Don't make the losing side play out the same contest again; a new conflict needs a materially different intent or changed circumstances.

#strong[Mutual defeat.] If both sides reach 0 in the same volley, neither wins outright. Resolve the compatible parts of both intents and a shared setback within the stakes. No compromise is calculated.

=== 10.11 Conceding
#strong[Offer it before the roll.] Before the next roll, a side may offer a concession instead of fighting on. State what the other side gains, what the conceding side keeps, what injuries, losses or obligations it accepts, and how the conflict ends. It must give the other side a meaningful success and fit the fiction: a mindless predator doesn't take surrender, so against one the offer may need an escape route or a sacrifice. If the sides don't agree, the conflict goes on. You can't offer a concession after the deciding roll.

#strong[Settle it.] An accepted concession ends the conflict. Apply its terms with no roll to see whether they happen, and don't also apply compromise unless the terms include it. Costs accepted in a concession can't be Resisted or prevented afterwards; injuries in the terms heal normally. Conceding gives no automatic Tychē Point.

=== 10.12 Compromise
When one side hits 0 Disposition, the conflict ends. The winner gets their intent but #strong[pays a compromise] based on how much Disposition they have left:

#figure(
  [#table(
    columns: (23%, 77%),
    align: (auto,auto,),
    table.header([Winner\'s Disposition left], [Compromise],),
    table.hline(),
    [Full or nearly full], [None or trivial],
    [More than half], [Minor --- loser gets a small concession; winner takes a tier-2 status],
    [Less than half], [Significant --- loser gets part of its intent; winner takes tier-3 statuses or loses gear],
    [1--2 points], [Major --- near pyrrhic victory; tier-4 statuses, a lost ally, or a new danger clock],
  )]
  , kind: table
  )

#strong[Settling the outcome.]
+ Determine the winner and the compromise.
+ State what the winner achieves and what the loser keeps or gains.
+ State every cost in full: who receives each injury and at what tier, and any non-injury costs. If there are alternative costs, state them now.
+ Credit existing injuries (below).
+ Resolve Resistance against what remains.

The listed tier doesn't apply to every member of the winning side; the costs say who pays.

#strong[Existing injuries count once.] An injury taken during this conflict, including one accepted through the trade, pays for one injury cost assigned to that character if its current tier equals or exceeds the required tier. Each injury pays for one cost only. Injuries can't be pooled, split, moved between characters or credited against a non-injury cost. An injury already treated below the required tier no longer pays. Don't add injury costs because an existing injury pays for one.

#strong[Resisting compromise.] Players may #strong[Resist] imposed compromise statuses as usual (§6), except costs they agreed to. Resistance can reduce or remove the injury, but it doesn't revoke the loser's gain or any other stated cost. Don't add a replacement cost because Resistance removed an injury.

=== 10.13 NPCs and Harm
- #strong[No injury trade.] Ordinary NPCs and minion groups can't use the injury trade. A named rival built as a full PC can; any other NPC needs a trait that grants it.
- #strong[Resisting.] Ordinary NPCs don't have pools (§6.1). An NPC reduces harm only through its listed armour, traits or abilities. Even then, it gets at most one reduction per imposed status application, and that reduction can't touch Disposition loss or an accepted payment.
- #strong[Defeat.] An NPC side at 0 Disposition is defeated in this contest. Capture, escape, injury or death follow the stakes and the outcome. Use a Dying clock for an NPC only when rescuing them matters to play, and never use that shortcut to make a rescue impossible after offering it as a goal.
- #strong[Special creatures.] Specific rules win: creatures with their own setting rules (such as being hard to kill, killing strikes or unusual recovery) keep them; machines and cyborgs shut down and are repaired rather than dying. An immunity stops an unsuitable status, but not Disposition loss in a contest the creature can lose.

=== 10.14 Order of Resolution
+ Establish intent, stakes and exits (§10.2); set starting Disposition and apply Superiority (§10.3); script the volley.
+ Pay pre-roll costs (Effort for dice, Help); resolve any running dry (§6.1).
+ Roll and determine the result and Power.
+ Make post-roll choices (Effort for Power) and pay them; resolve any running dry.
+ Separate Disposition loss from statuses imposed by a rule. An Attack or Feint's default loss is its committed Power + 1 (§10.6).
+ Offer eligible injury trades (§10.9).
+ Apply the remaining Disposition loss.
+ Resist imposed statuses (§6); pay; resolve running dry from Resistance.
+ Stack what remains; resolve tier 6: scope, Scar, Dying (§6.3, §6.7).
+ Resolve any independent action in the same volley.
+ Check removal, victory and mutual defeat. Before the next roll, either side may offer a concession.
+ Settle compromise (§10.12).
+ Afterwards, recover each layer by its own procedure (§6.5, §6.6).
#colbreak()
#strong[Which rule wins.]
+ Explicit amendments and replacements in this damage cycle.
+ Current creature-specific rules and explicitly revised abilities.
+ The general procedures of this damage cycle.
+ Earlier general rules.

A rule overrides another only on the subject it addresses. An ability that heals a status doesn't also restore Disposition, refresh an injury trade or erase a Scar.
#colbreak()
=== 10.15 Keeping It Fast
- Disposition of 8--11 should resolve in two or three exchanges.
- NPC sides script on index cards; minions act as a single group with one script.
- Table guideline: about 15--20 minutes per conflict.
]
  

== 11. Playbooks
#columns(2, gutter: 6mm)[
Each playbook is a one-page sheet with:

- #strong[Base pools and Edge]
- #strong[Anchor skill] (must be +3 or +4)
- #strong[Special abilities:] 1 free at start (6--8 options); more cost Refresh at creation or come from advancement. Major abilities are marked ★.
#colbreak()
- #strong[XP trigger:] one playbook-specific behaviour that earns XP
- #strong[Load-out list:] playbook items plus generic items, Blades-style light/normal/heavy load
- #strong[Relationship prompts:] 1 ally and 1 rival
Settings rename and reskin playbooks (Adept becomes \"Hedge Witch\" in fantasy, \"Netrunner\" in cyberpunk) but keep the structure.
]
  
=== 11.1 Generic Core Playbooks
#figure(
  [#table(
    columns: (21%, 18%, 16%, 35%, 20%),
    align: (auto,auto,auto,auto,auto,),
    table.header([Playbook], [Anchor], [Base pools (Sōm / Akm / Psy / Pne)], [XP trigger], [Concept],),
    table.hline(),
    [#strong[Bellator];], [Fight or Brawl], [12/10/6/8], [Address a challenge with force or threats], [Front-line muscle],
    [#strong[Furcifer];], [Stealth], [8/12/8/8], [Address a challenge with stealth or precision], [Infiltrator, scout, thief],
    [#strong[Savant];], [Lore or Investigate], [7/8/13/8], [Address a challenge with knowledge or insight], [Scholar, detective, scientist],
    [#strong[Interlocutor];], [Persuade], [7/9/9/11], [Address a challenge with charm, lies, or bargaining], [Diplomat, con artist, leader],
    [#strong[Explorator];], [Survival], [11/11/7/7], [Address a challenge with endurance or the land], [Ranger, pilot, explorer],
    [#strong[Adept];], [Arcana or Tech], [7/8/9/12], [Address a challenge with your powers or gadgets], [Mage, psychic, hacker],
  )]
  , kind: table
  )



== 12. Advancement
#columns(2, gutter: 6mm)[
=== 12.1 Earning XP (end of session)
1 XP per \"yes\" unless noted:

- Did you hit your #strong[playbook XP trigger];? (1, or 2 if it happened in a desperate scene)
- Did you #strong[accomplish your Goal];? (+2)
- Did your #strong[Belief] drive a meaningful decision?
- Did your #strong[Instinct] get you into trouble or save the day?
- Did you face consequences from a #strong[weakness tag or Scar];?

#strong[MVP vote:] the table votes on one standout moment each session; that player gets +1 Tychē Point at the next session (above Refresh).

#colbreak()
=== 12.2 Spending XP (every 6 XP = 1 Advance)
- +1 to a skill (following the pyramid rule)
- +3 to one pool, or +1 Edge (max 3 Edge per pool)
- A new playbook special ability (★ abilities also cost 1 Refresh)
- A new power tag, or rewrite a weakness tag into a power tag
- #strong[+1 Refresh] (buys back Refresh spent on abilities or artifacts; max base 3 + 1 per 3 Advances)
- A Focus ability from the next tier (requires 3 Advances per tier)
- #strong[+1 Effort Level] (to Level 2 after 3 Advances; Level 3 after 9 Advances)
]

#pagebreak()
== 13. Example of Play
#columns(2, gutter: 6mm)[
#strong[Kade];, a #emph[Reckless Furcifer who Never Leaves Anyone Behind] (Akmē Edge 1, Effort Level 2), is creeping through a warehouse to free a captured friend. Scene Truths: #emph[Dim Lighting];, #emph[Patrolling Guards];.

- #strong[Roll:] Stealth +3, power tag #emph[quiet boots] +1, power tag #emph[knows this district] +1 (tags capped at +2). The GM sets Hard 18 but #emph[Dim Lighting] lowers it to Standard 15. Kade needs 10+ on the dice.
- #strong[Effort, part 1:] Kade spends 3 − 1 Edge = 2 Akmē for a bonus die → 3d12 keep 2.
- #strong[Result:] dice show 9, 9, 4 → keep 9 + 9 = 18, +5 = 23. That\'s 8 over → #strong[3 Power];, plus #strong[doubles on a success → +1 = 4 Power];.
#colbreak()
- #strong[Effort, part 2:] Kade spends another 2 Akmē for #strong[+1 Power → 5 Power];.
- #strong[Spend:] Advance the #emph[Reach the Cell] clock by 3 (3 Power), Discover (1 Power): \"Where is the key?\" --- \"On the sergeant\'s belt.\" 1 Power left → #strong[+1 Momentum];.
- #strong[Later:] the sergeant\'s dread patron, a bound spirit, lashes out with #emph[terror-3];. Kade Resists with #strong[Pneuma] (Edge 0), so 2d12: highest die 7 → cost 2 Pneuma. The status drops to #emph[terror-1];.
- #strong[Compel:] the GM compels #emph[Reckless];: \"You can\'t wait for backup; you go in now.\" Kade accepts and gains +1 Tychē Point.
]
#pagebreak()  
== 14. Design Notes --- What Was Kept, Changed, Cut
#figure(
  [#table(
    columns: (14%, 37%, 28%, 21%),
    align: (auto,auto,auto,auto,),
    table.header([Source], [Kept], [Changed], [Cut],),
    table.hline(),
    [#strong[Fate];], [Skill pyramid, Tychē Points, invoke/compel, Refresh as cost of power], [Aspects are replaced by tags and Truths], [Fudge dice, stress boxes],
    [#strong[Cypher];], [Pools, Edge, the sentence, Effort on rolls and on Power, cyphers and artifacts (Module A)], [Four pools instead of three; Effort buys bonus dice instead of lowering difficulty], [d20 task levels, GM intrusions (replaced by compels and Woe)],
    [#strong[:Otherscape];], [Power/weakness tags, statuses with tiers, effects, burning tags], [Power comes from roll margin; tag cap +2], [Themebooks, Improve/Abandon tracks],
    [#strong[Mouse Guard];], [Full conflict scripting, Disposition, compromise, BIG, weapons as action bonuses, the Grind (Module B)], [Disposition from 2d12; actions spend Power], [Nature, Persona],
    [#strong[Blades];], [Playbooks, resistance, stress-as-currency, clocks, load-out], [Stress tracks are the four pools], [Action dice pools, Position/Effect grid, crew sheets],
    [#strong[2d20];], [Momentum, Woe, Truths, sandbox Truth tools (Module C)], [Momentum from unspent Power; Truths shift Difficulty], [d20 roll-under, complication range],
  )]
  , kind: table
  )
  
=== 14.1 Known Risks
- #strong[Currency load:] pools + Tychē + Momentum + Woe is the upper limit for medium crunch. Keep spend menus short on the sheet.
- #strong[Modifier range (revised):] max is skill +4, tags +2, helpful status up to +6, Tychē invoke +2. Statuses are now the largest swing. Playtest a ±3 status cap.
- #strong[Effort for Power] may make high-Edge characters very efficient. Watch Edge-3 pools where Effort is free; consider a minimum cost of 1.
- #strong[Resistance dice (revised):] Edge now adds Resistance dice (2 + Edge, keep the highest) instead of reducing the cost, and only a double 12 is free. Below Edge −1 you keep the lowest of |Edge| dice, so stacked penalties (such as #emph[Exposed] and #emph[Shaken] on a 0-Edge pool) make Resisting very expensive; watch how often that happens. High-Edge pools still pay about 1 per Resist, so watch whether Resistance drains pools faster than before, and whether the double-12 result (1--6%) is too rare to matter.
- #strong[Four pools] means more pool points to track. The sheet should put all four in one row with Edge beside each.
- #strong[Conflict length:] with scripting used for every big contest, the conflict test (§10.1) is what stops overuse.
- #strong[Running dry (revised R3):] running dry now imposes a status at tier 1 + overrun instead of an automatic Taken Out, and a Scar comes from tier 6 instead of from an empty pool. Playtest the 2-recovery-points-per-tier rate for depletion statuses, the one-Scar-per-event limit, and how often Resisting at an empty pool reaches tier 4 or higher.
- #strong[Damage cycle (unified):] watch whether the once-per-conflict injury trade (tier 2/3/4 cancels 1/2/3 loss) is a hard choice or always taken, and whether it drags conflicts out. Also test the compromise tiers (now 2/3/4), the healing intervals, the 3-segment Dying clock, and whether the 1-tier treatment limit makes Restore-cost abilities (#emph[Field Medic], #emph[Field Surgeon]) feel too weak against lasting injuries.
- #strong[Shared Disposition:] each side now has one Disposition track (§10.7), so ordinary loss no longer removes individuals. Simulated mirrored fights ran about 23.5% shorter than with personal Disposition, but the old rolled 7--12 track still ran long against a one-to-two-exchange target. Setup is now halved again (§10.2): in simulation this averaged about 6 (range 3--9) and about 6 volleys, close to a fixed track of 6. Flat starting bonuses and penalties from abilities and creature rank are applied before the second halving, so they keep roughly their old weight. Compare this with a fixed track of 5 in play. Also watch whether a lone remaining participant acting repeatedly feels heroic or too forgiving, and whether larger parties get too many injury trades.
- #strong[Attack and Feint +1:] a successful Attack or Feint now removes its committed Power + 1 Disposition (§10.6). The +1 is loss, not Power, so it can't be spent on other effects, and the injury trade is applied after it. This keeps even a 1-Power hit meaningful against a starting track of about 6 and shortens conflicts. Watch whether Defend can keep pace, whether Feint becomes the default action, and how the +1 stacks with ability bonuses such as #emph[Crowd Work] and #emph[Every Trick in the Book].
- #strong[Superiority:] up to 3 Superiority against a starting track of about 6 can halve the opposition before the first volley. Watch whether preparation becomes routine, how often both sides claim it, and whether it double-counts preparation abilities such as #emph[Ambusher] and #emph[The Reveal].

// =====================================================================
//  CHAPTER — OPTIONAL MODULES
// =====================================================================
#chapter("Optional Modules", [Three drop-in modules for longer campaigns: one-use cyphers and dangerous artifacts, the grinding cost of travel and hardship, and a sandbox where the world itself is written in Truths.], epigraph: [Use any, all, or none. A setting book may recommend some.])

== Module A --- Cyphers & Artifacts (Cypher)
#columns(2, gutter: 6mm)[
Cyphers are frequent, disposable power-ups that encourage players to use them rather than hoard them. Artifacts are rare, reusable items that may run out.

=== A.1 Cyphers
  #strong[Sample cypher table (d12):]

#figure(
  [#table(
    columns: (6.06%, 28.28%, 8.08%, 57.58%),
    align: (auto,auto,auto,auto,),
    table.header([d12], [Cypher], [Tier], [Effects],),
    table.hline(),
    [1], [Healing salve / med-gel], [2], [Restore],
    [2], [Smoke charge], [2], [Create (#emph[smoke cover];)],
    [3], [Flashbang / thunderstone], [3], [Attack (dazed), Weaken],
    [4], [Truth serum / mind-read charm], [2], [Discover ×2],
    [5], [Adrenal shot], [3], [Enhance (surging), restore 3 Sōma],
    [6], [Lockbreaker], [3], [Advance (any lock or security clock)],
    [7], [Ward token], [3], [Negate one incoming status of tier 3 or less],
    [8], [Phase key], [4], [Create Truth (#emph[passage through the wall];) for one scene],
    [9], [Courage draught], [2], [Restore (fear), restore 2 Pneuma],
    [10], [Seeker], [2], [Discover (location of one person or object)],
    [11], [Firebomb], [4], [Attack (on fire), Create (#emph[burning];)],
    [12], [Wild card], [d6], [Player names a reasonable Effect; GM sets the form],
  )]
  , kind: table
  )
- #strong[What they are:] one-use items or effects --- potions, grenades, scrolls, nanite injectors, blessed relics, strange tech. Each has a #strong[tier (1--6)];.
- #strong[Using one:] an action, usually with #strong[no roll];. The cypher generates #strong[Power equal to its tier];, spent only on the Effects listed on the cypher. Some create a Truth or a story tag instead.
- #strong[Cypher Limit:] each PC can carry #strong[2] cyphers (some playbooks or Focuses grant 3).
- #strong[Over the limit:] at the end of each scene, the GM gains 1 Woe per extra cypher and may trigger a #strong[Volatile] result (roll d12: 1--4 one cypher fires randomly; 5--8 one cypher is ruined; 9--12 nothing happens yet).
- #strong[Subtle cyphers] (setting option): instead of physical objects, cyphers are luck, insights, or favours (\"a contact owes you\", \"a flash of insight\"). They work the same way and fit low-magic or modern games.
- #strong[GM pacing:] give out 1--2 cyphers per PC per session. They should feel like loot that gets spent.

#strong[Cypher format:]

#quote(block: true)[
#strong[Flashbang] (Tier 3) --- #emph[Effects:] Attack (dazed), Weaken. #emph[Form:] palm-sized canister. #strong[Draught of Iron Skin] (Tier 2) --- #emph[Effects:] Enhance (armoured), Restore. Lasts one scene.
]

=== A.2 Artifacts
- #strong[What they are:] reusable items of real power --- a flaming sword, a psychic amplifier, a starship\'s AI core.
- #strong[Tags:] an artifact has 1--2 power tags (counting toward the +2 cap) and usually a special ability.
- #strong[Depletion:] each artifact has a depletion rating, e.g. #strong[1 in d12];. After each use, roll d12; on that number or lower, it is #strong[depleted] (broken, drained, or needs a downtime clock to restore).
- #strong[Attunement:] powerful artifacts (marked ★) must be attuned and #strong[cost 1 Refresh] while attuned (§4.1). A PC can attune to a maximum of 2 artifacts.
- #strong[Artifact quirks:] each artifact has a weakness tag that can be compelled for Tychē Points (#emph[thirsts for blood];, #emph[talks too much];, #emph[draws the Hunters];).

#strong[Artifact format:]

#quote(block: true)[
#strong[★ Ember-Brand] (longsword) --- #emph[Tags:] blade of living flame, +1 Attack (conflict gear). #emph[Ability:] spend 1 Power to add #emph[burning] to any status you inflict. #emph[Depletion:] 1 in d12 (goes cold until bathed in a forge). #emph[Quirk:] #emph[cannot be hidden];.
]
]
  
== Module B --- The Grind & Travel (Mouse Guard)
#columns(2, gutter: 6mm)[
The Grind turns time, distance, and hardship into slow, steady pressure. It pairs with Mouse Guard\'s GM\'s Turn / Players\' Turn structure.

=== B.1 Session Structure
#figure(
  [#table(
    columns: (15%, 85%),
    align: (auto,auto,),
    table.header([Phase], [What happens],),
    table.hline(),
    [#strong[GM\'s Turn];], [The mission. The GM presents obstacles; every roll counts as a #strong[turn] on the Grind clock.],
    [#strong[Players\' Turn];], [Downtime after the mission. Players spend #strong[Checks] to take actions: recover, research, craft, pursue Goals.],
  )]
  , kind: table
  )

=== B.2 The Grind Clock
- During the GM\'s Turn, the GM keeps a #strong[Grind clock] visible to the table.
- #strong[Each roll] (including conflict actions as a group = 1 tick per exchange) ticks it by 1.
- #strong[Size by hostility:] 4 (harsh: desert, deep winter, the underworld), 6 (normal wilderness or dangerous city), 8 (gentle or well-supplied).
- #strong[When it fills:] every PC gains the next #strong[Grind condition] they don\'t have yet, then the clock resets. The GM may also spend 2 Woe to tick it.

=== B.3 Grind Conditions (taken in order)
#figure(
  [#table(
    columns: (13%, 22%, 30%, 35%),
    align: (auto,auto,auto,auto,),
    table.header([Order], [Condition], [Effect], [Cleared by],),
    table.hline(),
    [1], [#strong[Hungry & Thirsty];], [Short rests restore nothing], [A meal, a Survival roll (Restore)],
    [2], [#strong[Weary];], [Effort costs +1], [A full night\'s rest],
    [3], [#strong[Exposed] (cold, heat, wet)], [−1 Sōma Edge], [Shelter and a recovery roll],
    [4], [#strong[Shaken];], [−1 Pneuma Edge; Fear statuses +1 tier], [A Will or Empathy recovery roll, or a Belief moment],
    [5], [#strong[Sick];], [−1 to all rolls; can\'t recover pools], [Medicine roll (Hard) + rest],
    [6], [#strong[Broken];], [Taken Out of the mission; gain a Scar], [Players\' Turn only],
  )]
  , kind: table
  )

Grind conditions are statuses for Restore, but #strong[they don\'t stack] --- each is a separate condition.

=== B.4 Checks (Players\' Turn)
- #strong[Earn Checks] during the GM\'s Turn by #strong[applying one of your weakness tags or Scars to your own roll] (−1). You earn 1 Check, or 2 if the penalty makes the roll fail.
- #strong[Everyone gets 1 free Check] in the Players\' Turn.
- #strong[Spend 1 Check] for one Players\' Turn action: a recovery roll against a Grind condition or status, a downtime clock roll, a research or crafting roll, restoring a burned tag, attuning an artifact, or a scene that pursues your Goal.
- #strong[Sharing:] you can give a Check to another PC whose scene you take part in.

This makes weaknesses a deliberate resource: hurt yourself now to earn recovery and downtime later.

=== B.5 Travel
A journey is a #strong[Journey clock] (6 for a short trip, 8 for a hard trip, 12 for an expedition). Each #strong[leg] (a day or a stage), the party assigns #strong[roles];; each role makes one roll:

#figure(
  [#table(
    columns: (16.83%, 20.79%, 62.38%),
    align: (auto,auto,auto,),
    table.header([Role], [Skill], [On success, spend Power on],),
    table.hline(),
    [#strong[Guide];], [Survival or Drive/Pilot], [#strong[Make Time] --- Advance the Journey clock],
    [#strong[Scout];], [Notice or Stealth], [#strong[Spot Trouble] --- Discover, or cancel one encounter the GM has prepared],
    [#strong[Quarter-master];], [Survival or Craft], [#strong[Forage / Ration] --- clear Hungry for the party, or +1 Supplies],
    [#strong[Lookout];], [Notice or Will], [#strong[Keep Watch] --- the party isn\'t surprised; Restore Shaken],
  )]
  , kind: table
  )

- #strong[Supplies:] the party has #strong[Supplies] as a status (start at 3--6). Lose 1 per leg. At 0, everyone becomes Hungry & Thirsty automatically and the Grind clock size drops by 2.
- #strong[Terrain and weather] are Truths that set Difficulty (#emph[Muskeg];, #emph[Whiteout];, #emph[Rapids];, #emph[Washed-out Road];).
- #strong[Encounters:] the GM spends Woe (1 for a minor encounter, 3 for a major one), or uses the Scout\'s failed roll.
- #strong[Portages and hard stretches:] a special leg (Endure or Athletics roll for every PC); failure ticks the Grind clock twice.
]

== Module C --- Truth-Driven Sandbox (2d20)
#columns(2, gutter: 6mm)[
Truths become the backbone of an open-world campaign: regions, sites, and factions are defined by Truths that players can discover, exploit, and change.

=== C.1 Truth Layers
#figure(
  [#table(
    columns: (20%, 50%, 30%),
    align: (auto,auto,auto,),
    table.header([Layer], [Example], [Lifespan],),
    table.hline(),
    [#strong[Campaign];], [#emph[The old empire\'s roads still hold its magic];], [Changes only through major arcs],
    [#strong[Region];], [#emph[Lawless borderland];, #emph[Endless rain];], [Changes through faction clocks],
    [#strong[Site];], [#emph[Flooded lower levels];, #emph[Ghosts guard the vault];], [Changes when PCs act on them],
    [#strong[Scene];], [#emph[Pitch Dark];, #emph[Hostile Crowd];], [One scene],
  )]
  , kind: table
  )

=== C.2 Site Sheets
Each location gets a short sheet:

- #strong[3 Truths] (at least one hidden)
- #strong[A Woe seed:] 1--3 Woe the GM adds when the party arrives
- #strong[A danger clock] (what happens if the party lingers)
- #strong[A secret] (something worth discovering)
- #strong[Rumours] (see C.4)

=== C.3 Truth Generator Tables (d12)
Roll once per column or pick.

#figure(
  [#table(
    columns: (7%, 20%, 23%, 20%, 30%),
    align: (auto,auto,auto,auto,auto,),
    table.header([d12], [Terrain / Feature], [Atmosphere], [Hazard], [Secret],),
    table.hline(),
    [1], [Ruined fortification], [Eerie silence], [Unstable ground], [Hidden passage],
    [2], [Dense forest], [Constant rain], [Disease], [A traitor among allies],
    [3], [Flooded lowland], [Oppressive heat], [Predators], [Buried treasure],
    [4], [Market town], [Festival crowds], [Watchful authorities], [A forgotten god sleeps here],
    [5], [Mountain pass], [Biting wind], [Rockfall], [Smuggling route],
    [6], [Abandoned facility], [Flickering lights], [Toxic air], [Experiment gone wrong],
    [7], [River crossing], [Thick fog], [Rapids], [Drowned village below],
    [8], [Sacred grove], [Watched by unseen eyes], [Spirit anger], [A pact with the old powers],
    [9], [Remote camp], [Desperation], [Bandits], [Someone is not who they claim],
    [10], [Underground ways], [Echoes], [Collapse], [Lost civilisation],
    [11], [Noble estate], [Hollow luxury], [Political danger], [Blackmail ledger],
    [12], [Wasteland], [Unnatural stillness], [Exposure], [Gateway to elsewhere],
  )]
  , kind: table
  )

=== C.4 Rumours
A #strong[rumour] is an unconfirmed Truth. When players confirm it (Discover, investigation, or arriving), the GM rolls d12:

#figure(
  [#table(
    columns: (8%, 92%),
    align: (auto,auto,),
    table.header([d12], [Result],),
    table.hline(),
    [1--4], [#strong[False] --- and someone benefits from spreading it],
    [5--8], [#strong[Twisted] --- partly true, with a dangerous difference],
    [9--12], [#strong[True] --- becomes a Truth],
  )]
  , kind: table
  )

=== C.5 Faction Turns
Between sessions (or each in-world week), the GM takes a #strong[World Turn];:

+ Each active faction rolls #strong[2d12 + its rating (+1 to +4)] vs. Standard 15 for its current project.
+ Power ticks the faction\'s #strong[project clock] (6 or 8 segments).
+ When a clock fills, the faction #strong[creates, removes, or changes a Region or Campaign Truth] (e.g. #emph[The Guild controls the river] replaces #emph[The river is free];).
+ PCs who hear about it can respond; PC actions can tick faction clocks forward or back using Advance.

=== C.6 Player Influence on Truths
- #strong[Discover] effects and Momentum spends reveal hidden Truths.
- #strong[Create] effects and 2 Momentum create Scene Truths; bigger changes need a progress clock (8 segments for a Site Truth, 12 for a Region Truth).
- Major arcs can rewrite Campaign Truths. These are the \"legacy\" moments of the campaign.
]
  
// =====================================================================
//  CHAPTER — GENERIC DESCRIPTORS
// =====================================================================
#chapter("Generic Descriptors", [Twenty-four setting-neutral adjectives open the sentence: "I am a [Descriptor]..." Six belong to each pool. Each one gives +2 to that pool, a power tag, a weakness tag and a suggested Instinct. Setting books add Descriptors written for their worlds.], epigraph: [The adjective of the character sentence.])

== 1. Descriptor Rules
Each Descriptor gives (Core Rules §3.1):

#figure(
  [#table(
    columns: (35%, 65%),
    align: (auto,auto,),
    table.header([Element], [Detail],),
    table.hline(),
    [#strong[Pool bonus];], [+2 to one pool],
    [#strong[Power tag];], [1],
    [#strong[Weakness tag];], [1 (can be compelled for Tychē Points)],
    [#strong[Suggested Instinct];], [Use it or write your own],
  )]
  , kind: table
  )

Each entry also has a #strong[hook];: one question to answer at character creation. The answer often becomes your first Belief or a relationship.

Every Descriptor works in any genre. Choose one from this chapter or, when playing in a setting, from that setting book's Descriptors.

== 2. Quick Reference
#figure(
  [#table(
    columns: (5%, 17%, 11%, 33%, 34%),
    align: (auto,auto,auto,auto,auto,),
    table.header([\#], [Descriptor], [Pool], [Power tag], [Weakness tag],),
    table.hline(),
    [1], [Burly], [Sōma], [#emph[built like a door];], [#emph[too big to hide];],
    [2], [Charismatic], [Pneuma], [#emph[the room turns to me];], [#emph[needs to be liked];],
    [3], [Compassionate], [Pneuma], [#emph[a kind word opens doors];], [#emph[can\'t turn away suffering];],
    [4], [Cunning], [Psychē], [#emph[three moves ahead];], [#emph[trusts no one\'s plan but mine];],
    [5], [Curious], [Psychē], [#emph[has to know why];], [#emph[pokes at what\'s best left alone];],
    [6], [Furtive], [Akmē], [#emph[keeps to the edges];], [#emph[uneasy in the open];],
    [7], [Hardy], [Sōma], [#emph[shrugs off the cold];], [#emph[ignores my own injuries];],
    [8], [Haunted], [Pneuma], [#emph[has seen the dark];], [#emph[the past won\'t stay buried];],
    [9], [Light-Fingered], [Akmē], [#emph[quick hands];], [#emph[can\'t resist a pocket];],
    [10], [Loyal], [Pneuma], [#emph[stands by my own];], [#emph[blind to my friends\' faults];],
    [11], [Methodical], [Psychē], [#emph[measures twice];], [#emph[slow under pressure];],
    [12], [Nimble], [Akmē], [#emph[light on my feet];], [#emph[too quick to trust my footing];],
    [13], [Observant], [Psychē], [#emph[misses nothing];], [#emph[distracted by detail];],
    [14], [Reckless], [Sōma], [#emph[charges in first];], [#emph[never looks before leaping];],
    [15], [Relentless], [Sōma], [#emph[never stops coming];], [#emph[doesn\'t know when to quit];],
    [16], [Resolute], [Pneuma], [#emph[iron will];], [#emph[rigid when plans change];],
    [17], [Restless], [Akmē], [#emph[can\'t sit still];], [#emph[poor at waiting];],
    [18], [Scholarly], [Psychē], [#emph[well read];], [#emph[lives in books, not boots];],
    [19], [Serene], [Pneuma], [#emph[calm in the storm];], [#emph[slow to anger, slower to act];],
    [20], [Sly], [Akmē], [#emph[always an angle];], [#emph[nobody takes my word];],
    [21], [Steady], [Akmē], [#emph[hands like stone];], [#emph[slow to start];],
    [22], [Stubborn], [Sōma], [#emph[will not be moved];], [#emph[can\'t admit I\'m wrong];],
    [23], [Suspicious], [Psychē], [#emph[notices what\'s off];], [#emph[sees enemies everywhere];],
    [24], [Weathered], [Sōma], [#emph[seen worse than this];], [#emph[old wounds ache];],
  )]
  , kind: table
  )
#pagebreak()
== 3. Descriptors
#columns(2, gutter: 6mm)[
=== 1. Burly
#quote(block: true)[
You fill doorways. People step aside before you ask.
]

- #strong[Pool:] +2 Sōma
- #strong[Power tag:] #emph[built like a door]
- #strong[Weakness tag:] #emph[too big to hide]
- #strong[Suggested Instinct:] \"If something is heavy, I pick it up myself.\"
- #strong[Hook:] What did you carry, haul or break before this life began?

=== 2. Charismatic
#quote(block: true)[
When you speak, people stop and listen, whether they want to or not.
]

- #strong[Pool:] +2 Pneuma
- #strong[Power tag:] #emph[the room turns to me]
- #strong[Weakness tag:] #emph[needs to be liked]
- #strong[Suggested Instinct:] \"If a crowd gathers, I take the stage.\"
- #strong[Hook:] Who once followed you, and where did you lead them?

=== 3. Compassionate
#quote(block: true)[
You have never walked past someone in pain. You have paid for that more than once.
]

- #strong[Pool:] +2 Pneuma
- #strong[Power tag:] #emph[a kind word opens doors]
- #strong[Weakness tag:] #emph[can\'t turn away suffering]
- #strong[Suggested Instinct:] \"If someone is hurting, I stop to help.\"
- #strong[Hook:] Whose suffering did you fail to ease, and does it still weigh on you?

=== 4. Cunning
#quote(block: true)[
You see the board, the pieces and the hand moving them.
]

- #strong[Pool:] +2 Psychē
- #strong[Power tag:] #emph[three moves ahead]
- #strong[Weakness tag:] #emph[trusts no one\'s plan but mine]
- #strong[Suggested Instinct:] \"If someone offers a deal, I look for the catch.\"
- #strong[Hook:] Whose plan did you once see through, and what did it cost them?

=== 5. Curious
#quote(block: true)[
A locked door is a question. You\'ve never been good at leaving questions alone.
]

- #strong[Pool:] +2 Psychē
- #strong[Power tag:] #emph[has to know why]
- #strong[Weakness tag:] #emph[pokes at what\'s best left alone]
- #strong[Suggested Instinct:] \"If something is hidden, I look inside.\"
- #strong[Hook:] What secret did you uncover that you wish you hadn\'t?

=== 6. Furtive
#quote(block: true)[
You keep to walls and corners. Being noticed has never gone well for you.
]

- #strong[Pool:] +2 Akmē
- #strong[Power tag:] #emph[keeps to the edges]
- #strong[Weakness tag:] #emph[uneasy in the open]
- #strong[Suggested Instinct:] \"If I enter a room, I check the shadows first.\"
- #strong[Hook:] Who are you keeping out of sight of, and why?

=== 7. Hardy
#quote(block: true)[
Cold, hunger and pain are old companions. You\'ve learned to walk on with them.
]

- #strong[Pool:] +2 Sōma
- #strong[Power tag:] #emph[shrugs off the cold]
- #strong[Weakness tag:] #emph[ignores my own injuries]
- #strong[Suggested Instinct:] \"If I\'m hurt, I keep going until the job is done.\"
- #strong[Hook:] What hardship did you survive that killed others?

=== 8. Haunted
#quote(block: true)[
Something from your past follows you. Some nights you can almost hear it.
]

- #strong[Pool:] +2 Pneuma
- #strong[Power tag:] #emph[has seen the dark]
- #strong[Weakness tag:] #emph[the past won\'t stay buried]
- #strong[Suggested Instinct:] \"If I\'m alone at night, I keep a light on.\"
- #strong[Hook:] What did you see that you can never forget?

=== 9. Light-Fingered
#quote(block: true)[
Things find their way into your hands. You rarely remember deciding to take them.
]

- #strong[Pool:] +2 Akmē
- #strong[Power tag:] #emph[quick hands]
- #strong[Weakness tag:] #emph[can\'t resist a pocket]
- #strong[Suggested Instinct:] \"If something valuable is left unattended, I take it.\"
- #strong[Hook:] What is the one thing you stole that you can never give back?

=== 10. Loyal
#quote(block: true)[
You chose your people. Nothing will make you abandon them.
]

- #strong[Pool:] +2 Pneuma
- #strong[Power tag:] #emph[stands by my own]
- #strong[Weakness tag:] #emph[blind to my friends\' faults]
- #strong[Suggested Instinct:] \"If someone I trust is threatened, I step between them and it.\"
- #strong[Hook:] Who did you swear to stand by, and have they earned it?

=== 11. Methodical
#quote(block: true)[
Haste makes mistakes. You check everything twice and trust your notes.
]

- #strong[Pool:] +2 Psychē
- #strong[Power tag:] #emph[measures twice]
- #strong[Weakness tag:] #emph[slow under pressure]
- #strong[Suggested Instinct:] \"If I\'m unsure, I make a list.\"
- #strong[Hook:] What disaster taught you never to skip a step?

=== 12. Nimble
#quote(block: true)[
You move like water, over walls and through gaps others never see.
]

- #strong[Pool:] +2 Akmē
- #strong[Power tag:] #emph[light on my feet]
- #strong[Weakness tag:] #emph[too quick to trust my footing]
- #strong[Suggested Instinct:] \"If the ground gives way, I move before I think.\"
- #strong[Hook:] What did you learn to escape from, and who taught you?

=== 13. Observant
#quote(block: true)[
You notice the scuffed boot, the nervous glance, the window left open.
]

- #strong[Pool:] +2 Psychē
- #strong[Power tag:] #emph[misses nothing]
- #strong[Weakness tag:] #emph[distracted by detail]
- #strong[Suggested Instinct:] \"If I enter a place, I count the exits and the people.\"
- #strong[Hook:] What small detail once saved your life?

=== 14. Reckless
#quote(block: true)[
Thinking is for later. Right now, something needs doing.
]

- #strong[Pool:] +2 Sōma
- #strong[Power tag:] #emph[charges in first]
- #strong[Weakness tag:] #emph[never looks before leaping]
- #strong[Suggested Instinct:] \"If there\'s danger ahead, I go at it head-on.\"
- #strong[Hook:] Who got hurt the last time you charged in?

=== 15. Relentless
#quote(block: true)[
You don\'t stop. Not when you\'re tired, not when you\'re hurt, not when it\'s hopeless.
]

- #strong[Pool:] +2 Sōma
- #strong[Power tag:] #emph[never stops coming]
- #strong[Weakness tag:] #emph[doesn\'t know when to quit]
- #strong[Suggested Instinct:] \"If I start a chase, I finish it.\"
- #strong[Hook:] What did you chase and never catch?

=== 16. Resolute
#quote(block: true)[
Your word is iron. Once you decide, the world bends or breaks against you.
]

- #strong[Pool:] +2 Pneuma
- #strong[Power tag:] #emph[iron will]
- #strong[Weakness tag:] #emph[rigid when plans change]
- #strong[Suggested Instinct:] \"If I give my word, I keep it.\"
- #strong[Hook:] What promise are you still keeping, and to whom?
#colbreak()
=== 17. Restless
#quote(block: true)[
Stillness itches. You need to move, act, see what is over the next hill.
]

- #strong[Pool:] +2 Akmē
- #strong[Power tag:] #emph[can\'t sit still]
- #strong[Weakness tag:] #emph[poor at waiting]
- #strong[Suggested Instinct:] \"If things go quiet, I go looking for trouble.\"
- #strong[Hook:] What place could never hold you, and who did you leave there?

=== 18. Scholarly
#quote(block: true)[
You have read more than most people will ever hear spoken.
]

- #strong[Pool:] +2 Psychē
- #strong[Power tag:] #emph[well read]
- #strong[Weakness tag:] #emph[lives in books, not boots]
- #strong[Suggested Instinct:] \"If a problem is new, I look for precedent.\"
- #strong[Hook:] Which book or teacher shaped you, and what did it leave unanswered?

=== 19. Serene
#quote(block: true)[
Storms rage around you. Inside, you are still water.
]

- #strong[Pool:] +2 Pneuma
- #strong[Power tag:] #emph[calm in the storm]
- #strong[Weakness tag:] #emph[slow to anger, slower to act]
- #strong[Suggested Instinct:] \"If panic spreads, I stay still and speak softly.\"
- #strong[Hook:] What taught you peace, and what would shatter it?

=== 20. Sly
#quote(block: true)[
There is always another way in, another word to say, another deal to make.
]

- #strong[Pool:] +2 Akmē
- #strong[Power tag:] #emph[always an angle]
- #strong[Weakness tag:] #emph[nobody takes my word]
- #strong[Suggested Instinct:] \"If there\'s a shortcut, I find it.\"
- #strong[Hook:] Who did you outwit, and are they still looking for you?

=== 21. Steady
#quote(block: true)[
Your hands don\'t shake. When everyone else panics, you are the one who aims.
]

- #strong[Pool:] +2 Akmē
- #strong[Power tag:] #emph[hands like stone]
- #strong[Weakness tag:] #emph[slow to start]
- #strong[Suggested Instinct:] \"If the moment is tense, I breathe and take my time.\"
- #strong[Hook:] When did your steadiness matter most, and who was counting on you?

=== 22. Stubborn
#quote(block: true)[
You\'ve been told no all your life. You\'ve ignored it all your life.
]

- #strong[Pool:] +2 Sōma
- #strong[Power tag:] #emph[will not be moved]
- #strong[Weakness tag:] #emph[can\'t admit I\'m wrong]
- #strong[Suggested Instinct:] \"If someone tells me to stop, I dig in.\"
- #strong[Hook:] What did everyone say was impossible that you did anyway?

=== 23. Suspicious
#quote(block: true)[
Everyone wants something. You just haven\'t worked out what yet.
]

- #strong[Pool:] +2 Psychē
- #strong[Power tag:] #emph[notices what\'s off]
- #strong[Weakness tag:] #emph[sees enemies everywhere]
- #strong[Suggested Instinct:] \"If a stranger is too friendly, I watch their hands.\"
- #strong[Hook:] Who betrayed you, and how did you not see it coming?

=== 24. Weathered
#quote(block: true)[
Wind, sun and years have worn you down to something hard and lasting.
]

- #strong[Pool:] +2 Sōma
- #strong[Power tag:] #emph[seen worse than this]
- #strong[Weakness tag:] #emph[old wounds ache]
- #strong[Suggested Instinct:] \"If conditions turn harsh, I take the worst of it first.\"
- #strong[Hook:] Where did you earn your scars, and who was with you?

]
  
// =====================================================================
//  CHAPTER — GENERIC PLAYBOOKS
// =====================================================================
#chapter("Generic Playbooks", [The six genre-neutral playbooks: Bellator, Furcifer, Savant, Interlocutor, Explorator and Adept. Each has eight special abilities, a capstone and starting equipment for three genres. Setting books can reskin these six or add new ones.], epigraph: [The noun of the character sentence.])

#colbreak(weak: true)
== 1. Playbook Rules
=== 1.1 What a Playbook Gives You
#figure(
  [#table(
    columns: (17%, 83%),
    align: (auto,auto,),
    table.header([Element], [Detail],),
    table.hline(),
    [#strong[Base pools];], [Sōma / Akmē / Psychē / Pneuma, totalling 36. Add 4 points of your choice and +2 from your Descriptor],
    [#strong[Edge];], [3 points: the fixed Edge listed, plus 1 point from the listed choices],
    [#strong[Anchor skill];], [Must be rated +3 or +4 in your pyramid],
    [#strong[Suggested skills];], [A recommended pyramid; change it freely],
    [#strong[Playbook tags];], [Choose #strong[2] power tags from the playbook\'s list],
    [#strong[XP trigger];], [One playbook behaviour that earns XP (Core Rules §12.1)],
    [#strong[Special abilities];], [1 free at creation; up to 2 more at creation for 1 Refresh each],
    [#strong[Starting equipment];], [Signature items (choose 1 of 2), playbook kit, and always-carried items],
    [#strong[BIG examples];], [Sample Beliefs, Goals, and Instincts],
    [#strong[Relationships];], [1 ally and 1 rival from the playbook\'s list],
  )]
  , kind: table
  )

=== 1.2 Ability Notation
- #strong[★ Major] --- costs #strong[1 Refresh] whenever you take it (creation or advancement).
- #strong[◆ Capstone] --- unlocked after #strong[12 Advances] if you have #strong[at least 4 abilities from this playbook];. Costs no Refresh. One capstone per character.
- #strong[Veteran abilities:] after 6 Advances, you may take an ability from another playbook as an Advance. It costs 1 Refresh in addition to any ★ cost.

=== 1.3 Rules References Used in Abilities
#figure(
  [#table(
    columns: (14%, 86%),
    align: (auto,auto,),
    table.header([Term], [Meaning (proposal section)],),
    table.hline(),
    [#strong[Power];], [Successes generated by a roll; spent on Effects (§2.5, §5)],
    [#strong[Effort];], [Spend 3 − Edge from a pool for a bonus die (before rolling) or +1 Power (after a success) (§2.4)],
    [#strong[Resist];], [Roll 2 + Edge d12 and pay pool points by the highest die (no Edge reduction); at Edge −2 or lower, roll |Edge| dice and keep the lowest. Reduce a status by 2 tiers (§6)],
    [#strong[Status];], [Tiered condition 1--6; tier 6 = Taken Out (§5.1)],
    [#strong[Truth];], [Scene, site, region, or campaign tag that shifts Difficulty by ±3 (§8)],
    [#strong[Disposition];], [Conflict \"hit points\" (§10)],
    [#strong[Injury trade];], [Once per conflict, accept a tier-2/3/4 injury to cancel 1/2/3 Disposition loss (§10.9)],
    [#strong[Dying];], [Life-threatening tier-6 physical harm: 3-segment clock; Medicine vs. Hard 18 stabilises (§6.7)],
    [#strong[Checks / Grind];], [Players\' Turn currency and the hardship clock (Module B)],
  )]
  , kind: table
  )

#colbreak(weak: true)
== 2. Equipment Rules
=== 2.1 Load (Blades in the Dark)
Before a mission, choose your #strong[load];. During play, declare items from your playbook kit as you need them and mark their load.

#figure(
  [#table(
    columns: (9%, 14%, 77%),
    align: (auto,auto,auto,),
    table.header([Load], [Capacity], [Effect],),
    table.hline(),
    [#strong[Light];], [3], [You blend in; nothing obvious marks you as armed or burdened],
    [#strong[Normal];], [5], [You look ready for trouble],
    [#strong[Heavy];], [7], [You\'re #emph[encumbered];: Akmē Effort costs +1 and Stealth Difficulty is one step higher],
  )]
  , kind: table
  )

- #strong[Signature items] are chosen at creation and always count against load when carried (most are 1--2).
- #strong[Always-carried items] (load 0) are always on you.
- Items marked #strong[(0)] cost no load.

=== 2.2 Gear as Tags
- Every item is a #strong[power tag] when it\'s relevant, e.g. #emph[crowbar] helps Athletics to force a door. Item tags count toward the #strong[+2 tag cap];.
- #strong[Weapons] also give one or more #strong[conflict action tags] (Core Rules §10.8), e.g. #emph[+1 Attack];.
- #strong[Quality:] a fine or advanced item gives one extra benefit listed in its entry (it doesn\'t raise the cap).

=== 2.3 Armour and Shields
#figure(
  [#table(
    columns: (28%, 8%, 64%),
    align: (auto,auto,auto,),
    table.header([Item], [Load], [Effect],),
    table.hline(),
    [#strong[Light armour];], [1], [#emph[Armour 1];: when you Resist physical harm, reduce it by 1 extra tier],
    [#strong[Heavy armour];], [2], [#emph[Armour 2];: reduce by 2 extra tiers; Akmē Effort +1 while worn],
    [#strong[Shield / riot shield / energy barrier];], [1], [#emph[+1 Defend] in Fight conflicts; counts as cover outside conflicts],
  )]
  , kind: table
  )

Armour that absorbs a tier-4+ hit is #emph[damaged] (−1 Armour) until repaired during downtime. Armour never reduces Disposition loss, an injury you accepted as payment, or a running-dry status (Core Rules §6).

=== 2.4 Common Gear (any playbook)
#figure(
  [#table(
    columns: (8.08%, 34.34%, 31.31%, 26.26%),
    align: (auto,auto,auto,auto,),
    table.header([Load], [Fantasy], [Modern], [Sci-Fi],),
    table.hline(),
    [(0)], [Belt knife, flint & steel, coin purse], [Phone, wallet, keys, pocketknife], [Comm unit, credchip, multitool],
    [1], [Rope (15 m), lantern & oil, trail rations (2 days)], [Flashlight, first-aid kit, water & snacks], [Glow rod, medpatch ×2, ration bars],
    [1], [Bedroll & blanket], [Duffel with spare clothes], [Thermal sheet & sleep sack],
    [1], [Crowbar or pry bar], [Crowbar or bolt cutters], [Hydraulic pry tool],
    [2], [Tent or tarp], [Tent or camping kit], [Pop-up shelter],
  )]
  , kind: table
  )

#pagebreak(weak: true)
== 3. Bellator
#playbook-art-side("01-bellator.jpg", "Bellator playbook character art")[
#quote(block: true)[
Muscle, grit, and a willingness to stand in front of trouble. Soldiers, brawlers, bouncers, gladiators, mercenaries, security officers.
]

#figure(
  [#table(
    columns: (26%, 74%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Akm / Psy / Pne)];], [12 / 10 / 6 / 8],
    [#strong[Edge];], [Sōma 2, plus 1 in Akmē or Pneuma],
    [#strong[Anchor skill];], [Fight or Brawl],
    [#strong[Suggested skills];], [+4 Fight · +3 Athletics, Endure · +2 Brawl, Intimidate, Shoot · +1 Notice, Will, Survival, Medicine],
    [#strong[XP trigger];], [Address a challenge with force or threats],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2):] #emph[built like a wall] · #emph[veteran of the line] · #emph[scarred and unbothered] · #emph[iron grip] · #emph[knows how a fight will go] · #emph[the look that stops trouble]
]

=== 3.1 Special Abilities
#figure(
  [#table(
    columns: (5%, 14%, 81%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Juggernaut];], [When you Resist physical harm with Sōma, reduce the status by #strong[3 tiers] instead of 2.],
    [2], [#strong[Brutal];], [Once per roll, when you spend Power on Attack with Fight or Brawl, the status gains #strong[+1 tier for free];.],
    [3], [#strong[Bodyguard];], [When an ally within reach would suffer a consequence, you may take it instead. If you Resist it, your Edge counts as 1 higher for that roll.],
    [4], [#strong[Cleave];], [When you attack a group or minions, you get #strong[one free Extra Feat] per roll (hit a second target, break their line, and so on).],
    [5], [#strong[Menacing];], [You may use #strong[Sōma] for Intimidate Effort and Resistance. When you succeed on Intimidate against minions, spend 1 Momentum to make them flee, surrender, or freeze.],
    [6], [#strong[Pain Tolerance];], [Ignore the roll penalty from harmful physical statuses of tier 1--2. At tier 3+, the penalty is reduced by 1.],
    [7], [#strong[★ Berserker];], [Once per scene, enter a fury: you get #strong[+1 bonus die] (free) on Fight, Brawl, and Athletics rolls for the rest of the scene. You can\'t script Defend or retreat. At scene end, lose 2 Sōma or take #emph[Weary];.],
    [8], [#strong[★ Unstoppable];], [Once per scene, when a status would reach tier 6 on you, keep acting until the end of the scene. Then you\'re Taken Out as normal.],
    [◆], [#strong[Legend of the Field];], [Your reputation is a #strong[Campaign Truth] (#emph[\"Everyone knows \[name\]\"];). In Fight conflicts, enemy Disposition starts #strong[−2];, and the GM pays +1 Woe for reinforcements while you stand.],
  )]
  , kind: table
  )
#pagebreak()
=== 3.2 Starting Equipment
#strong[Signature weapon (choose 1)]

#figure(
  [#table(
    columns: (9.9%, 48.51%, 41.58%),
    align: (auto,auto,auto,),
    table.header([Genre], [Option A], [Option B],),
    table.hline(),
    [Fantasy], [#strong[Greataxe or warhammer] (2) --- #emph[+1 Attack];, #emph[crushing blows];], [#strong[Longsword & shield] (2) --- #emph[+1 Attack];, #emph[+1 Defend];],
    [Modern], [#strong[Combat shotgun] (2) --- #emph[+1 Attack];, #emph[room-clearer];], [#strong[Baseball bat & pistol] (2) --- #emph[+1 Attack] (bat), #emph[sidearm];],
    [Sci-Fi], [#strong[Shock maul] (2) --- #emph[+1 Attack];, #emph[stuns on hit] (spend 1 Power: add #emph[dazed-1];)], [#strong[Vibro-blade & energy barrier] (2) --- #emph[+1 Attack];, #emph[+1 Defend];],
  )]
  , kind: table
  )

#strong[Playbook kit (declare during play)]

#figure(
  [#table(
    columns: (7.92%, 30.69%, 28.71%, 32.67%),
    align: (auto,auto,auto,auto,),
    table.header([Load], [Fantasy], [Modern], [Sci-Fi],),
    table.hline(),
    [1], [Mail shirt (light armour)], [Tactical vest (light armour)], [Ballistic weave (light armour)],
    [2], [Plate harness (heavy armour)], [Riot gear (heavy armour)], [Combat exo-plate (heavy armour)],
    [1], [Throwing axes ×3 --- #emph[+1 Attack] (range)], [Collapsible baton --- #emph[+1 Attack];], [Concussion grenades ×2 --- #emph[+1 Maneuver];],
    [1], [Manacles & chain], [Zip-cuffs & pepper spray], [Mag-cuffs & stun prod],
    [1], [Whetstone & armourer\'s kit], [Gun-cleaning kit & spare mags], [Field repair kit],
    [1], [Flask of strong drink], [Energy drinks & painkillers], [Stim-shot (restore 2 Sōma, once)],
  )]
  , kind: table
  )

#strong[Always carried (0):] Fantasy: knuckle-wraps, battle trophy. Modern: brass knuckles, gym bag. Sci-Fi: reinforced gloves, unit insignia.

=== 3.3 BIG Examples
- #strong[Belief:] \"Strength is only worth something when it protects the weak.\" / \"Every fight I walk away from comes back worse.\"
- #strong[Goal:] \"Get the merchant to the city gates alive.\" / \"Find out who hired the thugs.\"
- #strong[Instinct:] \"Always stand between my friends and the door.\" / \"Never let an insult pass in public.\"

#strong[Relationships:] Ally --- an old comrade-in-arms, a trainer, a medic who\'s patched you up too often. Rival --- the one who beat you once, a former commander, a rival enforcer.

#pagebreak(weak: true)
== 4. Furcifer
#playbook-art-side("02-furcifer.jpg", "Furcifer playbook character art")[
#quote(block: true)[
Quiet, precise, and always three exits ahead. Thieves, spies, scouts, assassins, infiltrators, saboteurs.
]

#figure(
  [#table(
    columns: (25%, 75%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Akm / Psy / Pne)];], [8 / 12 / 8 / 8],
    [#strong[Edge];], [Akmē 2, plus 1 in Psychē or Sōma],
    [#strong[Anchor skill];], [Stealth],
    [#strong[Suggested skills];], [+4 Stealth · +3 Notice, Craft · +2 Athletics, Deceive, Shoot · +1 Fight, Tech, Investigate, Drive/Pilot],
    [#strong[XP trigger];], [Address a challenge with stealth or precision],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2):] #emph[light on my feet] · #emph[eyes in the back of my head] · #emph[steady hands] · #emph[knows the underworld] · #emph[forgettable face] · #emph[patient as a stone]
]

=== 4.1 Special Abilities
#figure(
  [#table(
    columns: (5%, 14%, 81%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Ghost];], [When you spend Effort on a Stealth roll, your first use of Effort costs 0 pool points. Once per scene, when spotted, spend 1 Momentum to declare you were never seen; you\'re in a nearby hidden position.],
    [2], [#strong[Opportunist];], [When you act against a target that\'s unaware of you or has an #emph[Impeded] status, gain #strong[+1 Power] on a success.],
    [3], [#strong[Light Fingers];], [When you succeed on a theft, plant, or sabotage roll (Stealth or Craft), gain a #strong[free Extra Feat];.],
    [4], [#strong[Infiltrator];], [Once per roll, ignore one Truth that would raise the Difficulty of sneaking, climbing, or bypassing security.],
    [5], [#strong[Quick Reflexes];], [You always act first when violence breaks out. In conflicts, changing one of your scripted actions costs #strong[1 Momentum] instead of 2.],
    [6], [#strong[Escape Artist];], [When you Resist capture, restraint, falls, or traps with Akmē, the cost is #strong[0 on a highest die of 5+];.],
    [7], [#strong[★ Flashback];], [Once per mission, declare a flashback to something you prepared earlier. Pay Momentum by plausibility: 0 (obvious), 1 (reasonable), 2 (a stretch), 3 (wild). Then roll as normal; on a success, it happened.],
    [8], [#strong[★ Deadly Precision];], [Against an unaware or #emph[Impeded] target, Attack effects cost #strong[half Power (round up)];: 2 Power buys a tier-3 or tier-4 status.],
    [◆], [#strong[Nobody Sees Me Coming];], [Once per session, declare you\'re already somewhere you could plausibly have reached. Your first roll there gets #strong[+2 bonus dice for free];, and the GM can\'t spend Woe to reveal you during that roll.],
  )]
  , kind: table
  )
#pagebreak()
=== 4.2 Starting Equipment
#strong[Signature item (choose 1)]

#figure(
  [#table(
    columns: (10%, 34%, 56%),
    align: (auto,auto,auto,),
    table.header([Genre], [Option A], [Option B],),
    table.hline(),
    [Fantasy], [#strong[Twin daggers] (1) --- #emph[+1 Attack];, #emph[+1 Feint];], [#strong[Shortbow & black-fletched arrows] (1) --- #emph[+1 Attack] (range), #emph[silent shots];],
    [Modern], [#strong[Suppressed pistol] (1) --- #emph[+1 Attack];, #emph[quiet];], [#strong[Lockpicks & bypass kit] (1) --- #emph[opens what\'s closed];, Advance security clocks +1 per roll],
    [Sci-Fi], [#strong[Needle pistol] (1) --- #emph[+1 Attack];, #emph[silent];, #emph[toxin-loaded];], [#strong[Holo-cloak] (1) --- #emph[+1 Feint];, #emph[bends light] (Stealth tag)],
  )]
  , kind: table
  )

#strong[Playbook kit]

#figure(
  [#table(
    columns: (8%, 32%, 28%, 32%),
    align: (auto,auto,auto,auto,),
    table.header([Load], [Fantasy], [Modern], [Sci-Fi],),
    table.hline(),
    [1], [Thieves\' tools], [Lockpicks & electronic bypass], [Slicer kit],
    [1], [Grappling hook & silk cord], [Climbing harness & line], [Monofilament line & grapple gun],
    [1], [Dark hooded cloak --- #emph[shadow-dyed];], [Black clothing & balaclava], [Thermal-masking suit],
    [1], [Caltrops & smoke vials --- #emph[+1 Maneuver];], [Smoke grenade --- #emph[+1 Maneuver];], [Sensor jammer --- #emph[+1 Maneuver];],
    [1], [Garrotte & poison vial], [Burner phones ×2], [Spy drone (Discover, 1 use per scene)],
    [1], [Padded leather (light armour)], [Concealed vest (light armour)], [Flex-mesh undersuit (light armour)],
  )]
  , kind: table
  )

#strong[Always carried (0):] Fantasy: hidden blade, chalk. Modern: hairpin picks, earpiece. Sci-Fi: implanted lockpick, false ID chip.

=== 4.3 BIG Examples
- #strong[Belief:] \"Everyone has a price; I just haven\'t found mine.\" / \"The less blood, the better the job.\"
- #strong[Goal:] \"Get the ledger out of the counting house.\" / \"Learn who sold out my old crew.\"
- #strong[Instinct:] \"Always check for a second way out.\" / \"Never touch anything without gloves.\"

#strong[Relationships:] Ally --- a fence, a forger, a former mentor. Rival --- an inspector who\'s close to catching you, a rival thief, the partner who betrayed you.

#pagebreak(weak: true)
== 5. Savant
#playbook-art-side("03-savant.jpg", "Savant playbook character art")[
#quote(block: true)[
Knowledge is a weapon, a shield, and a cure. Scholars, detectives, scientists, physicians, archivists, engineers.
]

#figure(
  [#table(
    columns: (26%, 74%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Akm / Psy / Pne)];], [7 / 8 / 13 / 8],
    [#strong[Edge];], [Psychē 2, plus 1 in Pneuma or Akmē],
    [#strong[Anchor skill];], [Lore or Investigate],
    [#strong[Suggested skills];], [+4 Lore · +3 Investigate, Medicine · +2 Notice, Tech, Empathy · +1 Persuade, Will, Craft, Arcana],
    [#strong[XP trigger];], [Address a challenge with knowledge or insight],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2):] #emph[read everything twice] · #emph[eye for detail] · #emph[steady surgeon\'s hands] · #emph[speaks the old tongues] · #emph[respected in academic circles] · #emph[thinks in diagrams]
]

=== 5.1 Special Abilities
#figure(
  [#table(
    columns: (5%, 15%, 80%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Encyclopedic];], [Once per scene, ask one Discover question about a subject covered by your Lore #strong[without rolling];.],
    [2], [#strong[Analyze];], [When you study a foe or obstacle, each Discover you buy also reveals #strong[one weakness tag] of the target. Creating a story tag that exploits a revealed weakness costs #strong[1 Power] instead of 2.],
    [3], [#strong[Field Medic];], [Restore effects from Medicine cost #strong[1 Power per 2 tiers];. You can treat #emph[Sick] (Module B) at Standard Difficulty instead of Hard.],
    [4], [#strong[Steady Mind];], [When you Resist confusion, illusion, deception, or forbidden knowledge with Psychē, reduce the status by #strong[3 tiers];.],
    [5], [#strong[Decipher];], [Codes, unknown languages, and ancient devices give way. Each success on a deciphering roll Advances its clock #strong[+1 extra segment];.],
    [6], [#strong[Briefing];], [When an ally acts on information you gave them this scene, they get #strong[+1] (counts as a tag). Once per scene, give the whole party this bonus.],
    [7], [#strong[★ Connect the Dots];], [Once per session, propose a hidden Truth based on clues you\'ve found. The GM either makes it true or tells you #strong[one true hidden Truth] about the situation instead.],
    [8], [#strong[★ I Planned for This];], [Once per scene, after any ally rolls, spend #strong[2 Psychē] to let them reroll all dice and keep the better result.],
    [◆], [#strong[Master of the Field];], [Choose one field (medicine, occult, engineering, history, and so on). Rolls in that field are #strong[one Difficulty step lower];. Once per session, ask a Discover question about #strong[what will happen] in that field; the GM answers truthfully.],
  )]
  , kind: table
  )
#pagebreak()
=== 5.2 Starting Equipment
#strong[Signature item (choose 1)]

#figure(
  [#table(
    columns: (10%, 50%, 40%),
    align: (auto,auto,auto,),
    table.header([Genre], [Option A], [Option B],),
    table.hline(),
    [Fantasy], [#strong[Annotated grimoire / great reference] (1) --- #emph[the answer is in here somewhere];; once per scene, +1 to Lore], [#strong[Physician\'s satchel] (1) --- #emph[herbs and blades];; Restore +1 tier once per scene],
    [Modern], [#strong[Laptop with research databases] (1) --- #emph[online archive];], [#strong[Forensics kit] (1) --- #emph[evidence never lies];; +1 to Investigate at scenes],
    [Sci-Fi], [#strong[Datapad with AI assistant] (1) --- #emph[ask the archive];; one free Discover per session], [#strong[Bioscanner] (1) --- #emph[reads the body];; Medicine and Notice tag],
  )]
  , kind: table
  )

#strong[Playbook kit]

#figure(
  [#table(
    columns: (7.92%, 43.56%, 25.74%, 22.77%),
    align: (auto,auto,auto,auto,),
    table.header([Load], [Fantasy], [Modern], [Sci-Fi],),
    table.hline(),
    [1], [Journal, ink, and charcoal], [Notebook, camera, and voice recorder], [Holo-recorder],
    [1], [Magnifying lens & specimen jars], [UV light & evidence bags], [Spectral analyser],
    [1], [Herbalist\'s kit], [Full first-aid kit], [Advanced medkit],
    [1], [Quarterstaff --- #emph[+1 Defend];], [Taser --- #emph[+1 Maneuver];], [Stun baton --- #emph[+1 Maneuver];],
    [1], [Scroll case with maps], [Tablet with offline maps], [Star charts / topographic uplink],
    [1], [Alchemist\'s reagents (1 cypher-like use: Create smoke, light, or acid)], [Chemistry kit], [Nanite sample kit],
  )]
  , kind: table
  )

#strong[Always carried (0):] Fantasy: spectacles, chalk. Modern: reading glasses, pen. Sci-Fi: translator earpiece, stylus.

=== 5.3 BIG Examples
- #strong[Belief:] \"No knowledge is forbidden; only misused.\" / \"The dead deserve the truth about how they died.\"
- #strong[Goal:] \"Translate the inscription before the eclipse.\" / \"Identify the poison.\"
- #strong[Instinct:] \"Always take a sample.\" / \"Never trust a source I can\'t verify.\"

#strong[Relationships:] Ally --- a former teacher, a librarian, a patient who owes you their life. Rival --- an academic rival, an ex-colleague who stole your work, a cultist who wants your research.

#pagebreak(weak: true)
== 6. Interlocutor
#playbook-art-side("04-interlocutor.jpg", "Interlocutor playbook character art")[
#quote(block: true)[
Words open doors that swords can\'t. Diplomats, con artists, nobles, negotiators, preachers, captains.
]

#figure(
  [#table(
    columns: (25%, 75%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Akm / Psy / Pne)];], [7 / 9 / 9 / 11],
    [#strong[Edge];], [Pneuma 2, plus 1 in Psychē or Akmē],
    [#strong[Anchor skill];], [Persuade],
    [#strong[Suggested skills];], [+4 Persuade · +3 Empathy, Deceive · +2 Will, Notice, Intimidate · +1 Lore, Fight, Stealth, Investigate],
    [#strong[XP trigger];], [Address a challenge with charm, lies, or bargaining],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2):] #emph[silver tongue] · #emph[friends in every port] · #emph[reads people like books] · #emph[noble bearing] · #emph[a hundred faces] · #emph[calm under fire]
]

=== 6.1 Special Abilities
#figure(
  [#table(
    columns: (5.05%, 12.12%, 82.83%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Silver Tongue];], [When you Persuade or Deceive, creating a story tag about a target\'s attitude (#emph[convinced];, #emph[trusts us];, #emph[fooled];) costs #strong[1 Power] instead of 2.],
    [2], [#strong[Read the Room];], [Spend 1 Power on Discover to learn an NPC\'s #strong[Belief, Goal, or Instinct];. You get #strong[+1] (counts as a tag) against them for the scene.],
    [3], [#strong[Network];], [Once per session, declare a #strong[contact] in the current location as a story tag (#emph[contact: harbourmaster Elsa];). The GM gives them a quirk or something they want in return.],
    [4], [#strong[Smooth Recovery];], [Once per scene, turn a failed Persuade, Deceive, or Empathy roll into a #strong[Success at a Cost];.],
    [5], [#strong[Many Faces];], [With a moment to prepare, Create the story tag #emph[I belong here] for #strong[1 Power];. It lasts the scene and removes one Truth that would raise the Difficulty of mingling or entry.],
    [6], [#strong[Command];], [In conflicts, your team #strong[ignores the rotation rule] for one volley per exchange. Once per exchange, an ally\'s Defend restores #strong[+1 Disposition];.],
    [7], [#strong[★ Inspire];], [You can spend #strong[your Tychē Points on allies\' rolls];. Enhance effects you create for allies cost #strong[1 Power per 2 tiers];.],
    [8], [#strong[★ Crowd Work];], [You influence a group as if it were one person. In Argument or Negotiation conflicts against a crowd or council, your Attacks remove #strong[+1 Disposition];.],
    [◆], [#strong[Word Is Law];], [Once per session, a non-villain NPC agrees to a reasonable request #strong[without a roll];. In Argument and Negotiation conflicts, your side starts with #strong[+4 Disposition];.],
  )]
  , kind: table
  )
#pagebreak()
=== 6.2 Starting Equipment
#strong[Signature item (choose 1)]

#figure(
  [#table(
    columns: (10%, 50%, 40%),
    align: (auto,auto,auto,),
    table.header([Genre], [Option A], [Option B],),
    table.hline(),
    [Fantasy], [#strong[Signet ring & letters of introduction] (0) --- #emph[carries a name that opens doors];], [#strong[Rapier] (1) --- #emph[+1 Attack];, #emph[+1 Feint];, #emph[duelling style];],
    [Modern], [#strong[Tailored suit & business cards] (0) --- #emph[looks like money];], [#strong[Concealed pistol] (1) --- #emph[+1 Attack];, #emph[never seen it coming];],
    [Sci-Fi], [#strong[Diplomatic credentials] (0) --- #emph[official envoy];], [#strong[Hold-out blaster] (1) --- #emph[+1 Attack];, #emph[hidden in a sleeve];],
  )]
  , kind: table
  )

#strong[Playbook kit]

#figure(
  [#table(
    columns: (8%, 41%, 26%, 25%),
    align: (auto,auto,auto,auto,),
    table.header([Load], [Fantasy], [Modern], [Sci-Fi],),
    table.hline(),
    [1], [Fine clothes for court], [Formal wear & accessories], [Holo-fashion wardrobe],
    [1], [Disguise kit & wigs], [Disguise kit & fake IDs], [Holo-disguise emitter],
    [1], [Purse of gold --- #emph[money talks] (1 use per mission: Create tag #emph[bribed];)], [Credit card --- #emph[money talks] (same)], [Credit stick --- #emph[money talks] (same)],
    [1], [Bottle of fine wine], [Gift basket / bottle of scotch], [Rare off-world delicacy],
    [1], [Forged seals & papers], [Forged documents], [Spoofed ID chip],
    [1], [Brocaded doublet (light armour)], [Armoured coat (light armour)], [Deflector jacket (light armour)],
  )]
  , kind: table
  )

#strong[Always carried (0):] Fantasy: perfume, deck of cards. Modern: smartphone with contacts, breath mints. Sci-Fi: translator implant, personal comm.

=== 6.3 BIG Examples
- #strong[Belief:] \"Every war ends at a table; I\'d rather start there.\" / \"A lie that saves a life is no sin.\"
- #strong[Goal:] \"Get the guild master to sign the truce.\" / \"Find out what the duke really wants.\"
- #strong[Instinct:] \"Always learn someone\'s name.\" / \"Never be the first to name a price.\"

#strong[Relationships:] Ally --- a well-placed patron, a loyal servant, a reporter. Rival --- a political opponent, a jilted lover, someone you conned who wants payback.

#pagebreak(weak: true)
== 7. Explorator
#playbook-art-side("05-explorator.jpg", "Explorator playbook character art")[
#quote(block: true)[
At home where the map ends. Rangers, hunters, pilots, guides, explorers, scouts, voyageurs.
]

#figure(
  [#table(
    columns: (25%, 75%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Akm / Psy / Pne)];], [11 / 11 / 7 / 7],
    [#strong[Edge];], [Sōma 1, Akmē 1, plus 1 in any pool],
    [#strong[Anchor skill];], [Survival],
    [#strong[Suggested skills];], [+4 Survival · +3 Notice, Shoot · +2 Athletics, Endure, Drive/Pilot · +1 Stealth, Medicine, Lore, Fight],
    [#strong[XP trigger];], [Address a challenge with endurance, travel, or knowledge of the land],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2):] #emph[reads the weather] · #emph[never lost] · #emph[sharp-eyed hunter] · #emph[tireless] · #emph[at home in the wild] · #emph[steady at the helm]
]

=== 7.1 Special Abilities
#figure(
  [#table(
    columns: (5%, 13%, 82%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Pathfinder];], [As Guide (Module B), each Power spent on Make Time Advances the Journey clock #strong[+1 extra segment];. Ignore one terrain Truth per leg.],
    [2], [#strong[Forager];], [As Quartermaster, a success also clears #emph[Hungry & Thirsty] for the whole party and gives #strong[+1 Supplies] for free.],
    [3], [#strong[Tracker];], [When you track or read signs, each Discover you buy gives #strong[two answers];.],
    [4], [#strong[Hunter\'s Eye];], [With Shoot, once per roll ignore one Truth about cover, distance, or weather. At long range, gain #strong[+1 Power] on a success.],
    [5], [#strong[Ambusher];], [In wild terrain, if you had time to prepare, your side starts a Fight conflict with #strong[+2 Disposition];, and your first-volley Attack counts as independent regardless of the opponent\'s action.],
    [6], [#strong[At the Helm];], [Drive/Pilot rolls with your own vehicle or boat may use Survival. Your vehicle gains one power tag (#emph[swift];, #emph[rugged];, #emph[nimble];). In Chase conflicts, your side gets #strong[+3 Disposition];.],
    [7], [#strong[★ Animal Companion];], [You have a companion (hound, hawk, horse, drone in sci-fi) with 2 power tags and 1 weakness. Once per scene it gives you a #strong[free bonus die];, or it acts on its own using your Survival. It can take statuses; tier 6 means it\'s lost until downtime.],
    [8], [#strong[★ Weather Sense];], [Once per session, declare the #strong[weather or terrain Truth] for the next scene (#emph[thick fog];, #emph[rising river];, #emph[clear skies];).],
    [◆], [#strong[One With the Wild];], [In wilderness, the party\'s Grind clock is #strong[2 segments larger];, and you can\'t be surprised. Once per session, lead the party into the wild to #strong[end any chase or pursuit] in your favour.],
  )]
  , kind: table
  )
#pagebreak()
=== 7.2 Starting Equipment
#strong[Signature item (choose 1)]

#figure(
  [#table(
    columns: (10%, 42%, 48%),
    align: (auto,auto,auto,),
    table.header([Genre], [Option A], [Option B],),
    table.hline(),
    [Fantasy], [#strong[Longbow] (2) --- #emph[+1 Attack] (range), #emph[hunter\'s draw];], [#strong[Spear & hatchet] (2) --- #emph[+1 Maneuver] (spear), #emph[+1 Attack] (hatchet)],
    [Modern], [#strong[Scoped hunting rifle] (2) --- #emph[+1 Attack] (range), #emph[+1 Maneuver];], [#strong[Canoe or 4×4 truck] (vehicle, 0 load) --- #emph[my rig];, Drive/Pilot tag],
    [Sci-Fi], [#strong[Long-las rifle] (2) --- #emph[+1 Attack] (range), #emph[thermal scope];], [#strong[Grav-bike or skiff] (vehicle, 0 load) --- #emph[my rig];, Drive/Pilot tag],
  )]
  , kind: table
  )

#strong[Playbook kit]

#figure(
  [#table(
    columns: (7.92%, 29.7%, 30.69%, 31.68%),
    align: (auto,auto,auto,auto,),
    table.header([Load], [Fantasy], [Modern], [Sci-Fi],),
    table.hline(),
    [1], [Hunting knife & skinning tools], [Survival knife & multitool], [Survival blade with tool kit],
    [2], [Tent, bedroll & cookpot], [Lightweight tent, sleeping bag & stove], [Pop-up shelter & thermal pack],
    [1], [Snares & fishing line], [Fishing kit & snares], [Auto-snare & water purifier],
    [1], [Map case & compass], [GPS, maps & compass], [Topographic scanner],
    [1], [Leather jerkin (light armour)], [Waxed-canvas jacket (light armour)], [Environment suit (light armour, #emph[sealed];)],
    [1], [Trail rations & waterskins (+2 Supplies)], [Dehydrated meals & filter (+2 Supplies)], [Nutrient packs & reclaimer (+2 Supplies)],
  )]
  , kind: table
  )

#strong[Always carried (0):] Fantasy: tinderbox, whistle. Modern: ferro rod, bug spray. Sci-Fi: emergency beacon, rebreather.

=== 7.3 BIG Examples
- #strong[Belief:] \"The land gives to those who respect it.\" / \"No one gets left on the trail.\"
- #strong[Goal:] \"Reach the trading post before the freeze.\" / \"Find the lost survey team.\"
- #strong[Instinct:] \"Always check the sky before setting out.\" / \"Never camp where you can\'t see the approach.\"

#strong[Relationships:] Ally --- a trapper, a bush pilot, a village elder. Rival --- a poacher, a rival guide, the company that wants your land.

#pagebreak(weak: true)
== 8. Adept
#playbook-art-side("06-adept.jpg", "Adept playbook character art")[
#quote(block: true)[
Power from beyond the ordinary: magic, psionics, faith, or impossible technology. Mages, psychics, priests, hackers, gadgeteers.
]

#figure(
  [#table(
    columns: (24%, 76%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Akm / Psy / Pne)];], [7 / 8 / 9 / 12],
    [#strong[Edge];], [Pneuma 2 (Arcana Adepts) or Psychē 2 (Tech Adepts), plus 1 in any other pool],
    [#strong[Anchor skill];], [Arcana (magic, faith, psionics) or Tech (hacking, gadgets)],
    [#strong[Suggested skills];], [+4 Arcana · +3 Lore, Will · +2 Notice, Medicine, Persuade · +1 Investigate, Empathy, Deceive, Tech],
    [#strong[XP trigger];], [Address a challenge with your powers or gadgets],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2):] #emph[touched by the Other] · #emph[disciplined mind] · #emph[sees what others can\'t] · #emph[blessed] · #emph[tinkerer\'s genius] · #emph[fluent in the old pacts]
]

=== 8.1 Core Feature --- Domain (free)
Every Adept has a #strong[Domain];: a broad power tag describing what they can do (#emph[fire];, #emph[healing];, #emph[telekinesis];, #emph[shadows];, #emph[machines];, #emph[networks];, #emph[the dead];, #emph[weather];).

- #strong[Workings:] within your Domain, you can attempt any effect with your anchor skill. The GM sets Difficulty by scope:

#figure(
  [#table(
    columns: (21.78%, 32.67%, 45.54%),
    align: (auto,auto,auto,),
    table.header([Scope], [Difficulty], [Example (Domain: fire)],),
    table.hline(),
    [Minor, personal], [Easy 12], [Light a candle, warm your hands],
    [Significant], [Standard 15], [Hurl a firebolt, melt a lock],
    [Dramatic], [Hard 18], [Wall of flame across a street],
    [Spectacular], [Formidable 21], [Set a ship ablaze],
    [World-shaking], [Heroic 24 (usually a Ritual)], [Call down a firestorm],
  )]
  , kind: table
  )

- #strong[Cost:] each working costs #strong[1 point] from Pneuma (Arcana) or Psychē (Tech), in addition to any Effort.
- #strong[Backlash:] doubles on a failure or cost cause a backlash. The GM picks a fitting status for you (#emph[burned-2];, #emph[drained-2];, #emph[glitched-2];) or a wild effect, in addition to the normal complication.
- Your Domain counts as a power tag on workings (inside the +2 cap).

=== 8.2 Special Abilities
#figure(
  [#table(
    columns: (5%, 14%, 81%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Focused Channel];], [Workings inside your Domain cost #strong[0 pool points] if you don\'t use Effort on that roll.],
    [2], [#strong[Ward];], [You can create protective statuses (#emph[warded-X];) with Enhance. While warded, an ally reduces supernatural or tech-based harm by #strong[+1 tier] when Resisting.],
    [3], [#strong[Sense the Unseen];], [Once per scene, ask a free Discover question about #strong[hidden supernatural or technological forces] nearby. You always notice when such forces are used near you.],
    [4], [#strong[Overchannel];], [When you use Effort for Power on a working, gain #strong[+2 Power] instead of +1, but take #emph[strained-1];.],
    [5], [#strong[Ritual];], [Given time, materials, and a safe place, run a working as a #strong[progress clock] instead of a single roll (8 segments for Formidable, 12 for Heroic). Ritual results can create Site or Region Truths.],
    [6], [#strong[Bound Servant];], [You have a minor spirit, construct, or drone with one power tag and one weakness. It can scout (one free Discover per scene in places it can reach), carry messages, or handle simple tasks. It can\'t fight.],
    [7], [#strong[★ Second Domain];], [Gain a second Domain. Workings in it use the same rules.],
    [8], [#strong[★ Unleash];], [Once per scene, a working hits #strong[every target] in an area or group: each one receives the full Attack effects you buy. Afterwards, take #emph[Weary] or lose 3 points from your casting pool.],
    [◆], [#strong[Ascendant];], [Once per session, a Heroic-scope working succeeds automatically with #strong[5 Power];, no ritual required. If you use it again before your next downtime, gain a Pneuma or Psychē Scar.],
  )]
  , kind: table
  )

=== 8.3 Starting Equipment
#strong[Signature focus (choose 1)]

#figure(
  [#table(
    columns: (10%, 37%, 53%),
    align: (auto,auto,auto,),
    table.header([Genre], [Option A], [Option B],),
    table.hline(),
    [Fantasy], [#strong[Staff or wand] (1) --- #emph[conduit];; +1 to workings, #emph[+1 Defend] (staff)], [#strong[Holy symbol or ancestral talisman] (0) --- #emph[faith made solid];; Resist supernatural harm with Edge +1],
    [Modern], [#strong[Occult focus] (ring, chalk, athame) (0) --- #emph[conduit];], [#strong[Custom cyberdeck / laptop] (1) --- #emph[my rig];; +1 to Tech workings],
    [Sci-Fi], [#strong[Psi-amp headset] (1) --- #emph[amplifier];; +1 to psionic workings], [#strong[Neural jack & cyberdeck] (1) --- #emph[direct interface];; +1 to Tech workings],
  )]
  , kind: table
  )

#strong[Playbook kit]

#figure(
  [#table(
    columns: (7.92%, 34.65%, 28.71%, 28.71%),
    align: (auto,auto,auto,auto,),
    table.header([Load], [Fantasy], [Modern], [Sci-Fi],),
    table.hline(),
    [1], [Grimoire or prayer book], [Occult library on a tablet], [Encrypted data archive],
    [1], [Spell components pouch], [Salt, chalk, candles & herbs], [Spare power cells & focus crystals],
    [1], [Ritual dagger --- #emph[+1 Attack];], [Pistol --- #emph[+1 Attack];], [Sidearm blaster --- #emph[+1 Attack];],
    [1], [Warding charms ×2 (0-Power #emph[warded-1] once each)], [Talismans ×2 (same)], [Firewall chips ×2 (same)],
    [1], [Robes of the order (light armour, #emph[marks my calling];)], [Long coat with hidden pockets (light armour)], [Insulated bodysuit (light armour)],
    [1], [Scrying bowl or crystal], [Drone with camera], [Micro-drone swarm (Bound Servant gear)],
  )]
  , kind: table
  )

#strong[Always carried (0):] Fantasy: a small familiar token, incense. Modern: tarot deck, phone. Sci-Fi: diagnostic implant, data spike.

=== 8.4 BIG Examples
- #strong[Belief:] \"Power is a debt, and I always pay my debts.\" / \"Knowledge should be free; locks are an insult.\"
- #strong[Goal:] \"Seal the rift before the new moon.\" / \"Crack the corporation\'s archive.\"
- #strong[Instinct:] \"Always ward the room before I sleep.\" / \"Never use my power in front of the authorities.\"

#strong[Relationships:] Ally --- your teacher, a fellow initiate, an entity you\'ve bargained with. Rival --- a rival practitioner, a hunter of your kind, the order that cast you out.

#pagebreak()
== 10. Design Notes
=== 10.1 Balance Targets
#figure(
  [#table(
    columns: (14.14%, 21.21%, 24.24%, 25.25%, 15.15%),
    align: (auto,auto,auto,auto,auto,),
    table.header([Playbook], [Main pool], [Conflict role], [Exploration role], [Social role],),
    table.hline(),
    [Bellator], [Sōma], [Attack / Defend], [Endurance, forcing obstacles], [Intimidation],
    [Furcifer], [Akmē], [Feint / Maneuver], [Infiltration, security], [Deception],
    [Savant], [Psychē], [Maneuver (Discover, analysis)], [Investigation, healing], [Expertise],
    [Interlocutor], [Pneuma], [Argument and Negotiation lead], [Contacts, disguise], [Persuasion],
    [Explorator], [Sōma/Akmē], [Ranged Attack, ambush], [Travel, Grind, tracking], [Local knowledge],
    [Adept], [Pneuma/Psychē], [Flexible (Domain)], [Supernatural or tech access], [Varies by Domain],
  )]
  , kind: table
  )

=== 10.2 Things to Watch in Playtest
- #strong[Discount stacking:] abilities that reduce Power costs (Silver Tongue, Analyze, Field Medic, Deadly Precision, Jury-Rig) are strong when stacked with Effort for Power. Cap at one cost reduction per Effect.
- #strong[Free bonus dice] (Berserker, Animal Companion, Second Wind, Nobody Sees Me Coming) still count toward the +2 bonus die maximum.
- #strong[Adept workings] are the most open-ended. If they overshadow other playbooks, increase the base working cost to 2 pool points, or let Focused Channel apply only to minor and significant workings.
- #strong[Vehicle signature items] (Explorator, modern and sci-fi) are 0 load because they don\'t come on foot missions. Treat them as a story tag when they\'re not present.
- #strong[★ count:] each playbook has two Major abilities and every capstone is free. Characters who take both ★ abilities will be at Refresh 1--2, as intended.

// =====================================================================
//  CHAPTER — GENERIC FOCUSES
// =====================================================================
#chapter("Generic Focuses", [Twenty-four setting-neutral Focuses complete the sentence: "...who [Focus]." Each one has two power tags, a weakness, a link to another player character, and tiered abilities with a choice at Tiers 2 and 3.], epigraph: [The verb of the character sentence.])


== 1. Focus Rules
#columns(2, gutter: 6mm)[
=== 1.1 What a Focus Gives You
#figure(
  [#table(
    columns: (25%, 75%),
    align: (auto,auto,),
    table.header([Element], [Detail],),
    table.hline(),
    [#strong[Power tags];], [2],
    [#strong[Weakness tag];], [1 (can be compelled for Tychē Points)],
    [#strong[PC link];], [A prompt that connects you to another player character],
    [#strong[Tier 1 ability];], [Fixed; gained at creation for free],
    [#strong[Tier 2 ability];], [#strong[Choose 1 of 2];; after 3 Advances, costs an Advance],
    [#strong[Tier 3 ability];], [#strong[Choose 1 of 2];; after 6 Advances, costs an Advance],
  )]
  , kind: table
  )

- #strong[The other option:] once you\'ve reached a tier, you may take its unchosen option later as a normal Advance.
- #strong[★ Major:] costs 1 Refresh when taken (Core Rules §4.1). Every Focus has exactly one ★ option, always at Tier 3, so you can always choose a path that keeps your Refresh.
- #strong[Any playbook can take any Focus.] The \"Suits\" line is a suggestion.
#colbreak()
- #strong[Changing Focus:] at a major milestone, with GM approval, you can swap your Focus. You keep Tier 1 of the new one and rebuy higher tiers with Advances.

=== 1.2 Weird Focuses ◈
Focuses marked #strong[◈ Weird] assume the supernatural, impossible technology, or both. In mundane settings the GM removes them from the list. Every other Focus works in any genre.

=== 1.3 Shared Rules Reminders
- Free bonus dice from Focuses still count toward the #strong[+2 bonus die maximum];.
- Abilities that add bonus above the tag cap only do so for the tag they name, and are limited to #strong[+1 above the normal +2 cap (maximum +3)] unless stated otherwise.
- Only #strong[one cost reduction] applies to a single Effect (e.g. you can\'t combine two \"costs 1 Power instead of 2\" abilities).
]
  
== 2. Quick Reference
#figure(
  [#table(
    columns: (5%, 38%, 21%, 31%, 5%),
    align: (auto,auto,auto,auto,auto,),
    table.header([\#], [Focus], [Category], [Suits], [#diamond(size: 6pt, fill: paper)],),
    table.hline(),
    [1], [Never Leaves Anyone Behind], [Combat], [Bellator, Explorator, Furcifer], [],
    [2], [Leads From the Front], [Combat], [Interlocutor, Bellator, Explorator], [],
    [3], [Masters a Weapon], [Combat], [Bellator, Furcifer, Explorator], [],
    [4], [Fights Dirty], [Combat], [Bellator, Furcifer], [],
    [5], [Moves Like a Shadow], [Stealth & Precision], [Furcifer, Explorator], [],
    [6], [Never Misses], [Stealth & Precision], [Explorator, Furcifer, Bellator], [],
    [7], [Opens Every Lock], [Stealth & Precision], [Furcifer, Savant, Adept], [],
    [8], [Always Has an Escape Plan], [Stealth & Precision], [Furcifer, Interlocutor], [],
    [9], [Builds Impossible Things], [Knowledge], [Savant, Adept, Explorator], [],
    [10], [Heals the Broken], [Knowledge], [Savant, Adept, Interlocutor], [],
    [11], [Solves the Unsolvable], [Knowledge], [Savant, Interlocutor, Furcifer], [],
    [12], [Remembers What Was Forgotten], [Knowledge], [Savant, Adept, Explorator], [],
    [13], [Talks Their Way Out of Anything], [Social], [Interlocutor, Furcifer], [],
    [14], [Wears a Hundred Masks], [Social], [Interlocutor, Furcifer], [],
    [15], [Knows Everyone Worth Knowing], [Social], [Interlocutor, Savant], [],
    [16], [Carries the Weight of a Crown], [Social], [Interlocutor, Bellator], [],
    [17], [Runs With the Pack], [Wilderness & Travel], [Explorator, Bellator], [],
    [18], [Charts the Unknown], [Wilderness & Travel], [Explorator, Savant], [],
    [19], [Lives Off the Land], [Wilderness & Travel], [Explorator, Bellator], [],
    [20], [Was Born Behind the Wheel], [Wilderness & Travel], [Explorator, Furcifer], [],
    [21], [Hunts the Things in the Dark], [Weird], [Savant, Adept, Bellator], [◈],
    [22], [Walks Between Worlds], [Weird], [Adept, Savant], [◈],
    [23], [Made a Bargain With Something Old], [Weird], [Any], [◈],
    [24], [Is More Than Human], [Weird], [Any], [◈],
  )]
  , kind: table
  )

== 3. Combat Focuses
#columns(2, gutter: 6mm)[
=== 1. Never Leaves Anyone Behind
#quote(block: true)[
Loyal to a fault. You go back for the fallen, every time.
]

- #strong[Power tags:] #emph[I\'ve got your back];, #emph[carry them out]
- #strong[Weakness tag:] #emph[can\'t walk away]
- #strong[PC link:] \"I once failed to save someone. \[PC\] reminds me of them.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Shield Bearer];], [When an ally next to you takes a status, spend 1 point from any pool to reduce it by #strong[1 tier] before they Resist.],
    [2a], [#strong[Second Wind];], [Once per scene, when an ally is Taken Out, you may act immediately to reach them. Your next roll to help or rescue them gets a #strong[free bonus die];.],
    [2b], [#strong[Interpose];], [When you accept an injury to cancel Disposition loss from an Attack or Feint, cancel #strong[1 additional] Disposition loss, up to the loss inflicted. All normal injury-trade restrictions apply.],
    [3a], [#strong[No One Left];], [Once per session, when the party retreats or escapes, no one is left behind or captured. Each ally clears one tier-1 or tier-2 status.],
    [3b], [#strong[★ Living Wall];], [Once per scene, until your next action, all harm aimed at allies within reach hits you instead. You Resist each with Edge +1.],
  )]
  , kind: table
  )

=== 2. Leads From the Front
#quote(block: true)[
Captain, chief, or sergeant: people follow you.
]

- #strong[Power tags:] #emph[born to command];, #emph[they believe in me]
- #strong[Weakness tag:] #emph[every loss is on me]
- #strong[PC link:] \"\[PC\] was the first person who ever followed my lead.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Rally];], [Once per scene, spend 1 Momentum to restore #strong[2 points] to one pool of every ally who can hear you.],
    [2a], [#strong[Battle Plan];], [At the start of a conflict, before scripting, look at #strong[one] of the opposing side\'s scripted actions for the first exchange.],
    [2b], [#strong[Lead by Example];], [When you succeed with #strong[3+ Power];, the next ally who acts toward the same goal gets a #strong[free bonus die];.],
    [3a], [#strong[★ Warband];], [Gain a loyal crew (a group with 2 power tags and 1 weakness). It acts as one group, gives free Help once per scene, or holds a position. It takes statuses as a single target.],
    [3b], [#strong[Unbreak-able Line];], [Once per conflict, when your side\'s Disposition would drop to 0, it stays at #strong[1] and you take a tier-2 status.],
  )]
  , kind: table
  )

=== 3. Masters a Weapon
#quote(block: true)[
Years of drill with one weapon: a blade, a rifle, a staff, bare fists.
]

- #strong[Power tags:] #emph[one with my \[weapon\]];, #emph[drilled every day]
- #strong[Weakness tag:] #emph[lost without it]
- #strong[PC link:] \"\[PC\] once saw me lose a duel, and kept it secret.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Signature Style];], [Choose a weapon type. That weapon\'s tag may add #strong[+1 above the normal +2 cap (maximum +3 from tags)];, and it gains a second conflict action tag (e.g. a sword also gives +1 Defend).],
    [2a], [#strong[Riposte];], [In Fight conflicts, when you win a versus roll with Defend, you may spend any of that Power to remove the opposing side\'s Disposition instead of restoring your side\'s.],
    [2b], [#strong[Disarming Master];], [The Disarm maneuver costs #strong[2 Power] instead of 3. Outside conflicts, Weaken can strip an opponent\'s weapon tag for the scene.],
    [3a], [#strong[Perfect Strike];], [Once per scene, after rolling with your weapon, turn one kept die into a #strong[12];. If that creates doubles, apply them.],
    [3b], [#strong[★ Weapon Saint];], [Your weapon becomes an #strong[artifact] (Module A) with one extra power tag and an ability you design with the GM. It never depletes and costs no attunement Refresh.],
  )]
  , kind: table
  )

=== 4. Fights Dirty
#quote(block: true)[
Honour is for people who can afford to lose.
]

- #strong[Power tags:] #emph[no rules in a fight];, #emph[eye for a cheap shot]
- #strong[Weakness tag:] #emph[no one trusts me in a fair fight]
- #strong[PC link:] \"I taught \[PC\] that winning is the only thing that matters. They\'re still deciding if I was right.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Cheap Shot];], [Once per scene, as part of an Attack, Create a story tag (#emph[sand in the eyes];, #emph[low blow];) for #strong[1 Power];.],
    [2a], [#strong[Improvised Arsenal];], [Anything in reach is a weapon for you: chairs, bottles, tools. It gives #strong[+1 Attack or +1 Maneuver] and costs no load.],
    [2b], [#strong[Kick Them While They\'re Down];], [Against a target with a harmful status of tier 2+, gain #strong[+1 Power] on Attack.],
    [3a], [#strong[Every Trick in the Book];], [In Fight conflicts, your Feints remove #strong[+1 Disposition];.],
    [3b], [#strong[★ Nothing Is Off-Limits];], [Once per session, declare a hazard Truth that was already there (#emph[gas leak];, #emph[rotten floor];, #emph[loose cargo];). Your next roll that uses it gets a #strong[free Extra Feat];.],
  )]
  , kind: table
  )
]
  
== 4. Stealth & Precision Focuses
#columns(2, gutter: 6mm)[
=== 5. Moves Like a Shadow
#quote(block: true)[
Silent, patient, and impossible to pin down.
]

- #strong[Power tags:] #emph[silent as snowfall];, #emph[at home in darkness]
- #strong[Weakness tag:] #emph[uneasy in the light]
- #strong[PC link:] \"\[PC\] is the only one who always knows where I am.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Shadow-Born];], [Truths about darkness, noise, or crowds lower your Stealth Difficulty by #strong[two steps] instead of one.],
    [2a], [#strong[Vanish];], [Once per scene, after any roll, become hidden if there\'s any cover nearby. No roll needed.],
    [2b], [#strong[Shadow Escort];], [Up to #strong[two allies] can use your Stealth result instead of rolling their own.],
    [3a], [#strong[Unseen Hand];], [Any action you take while hidden gains #strong[+1 Power] on a success.],
    [3b], [#strong[★ Living Shadow];], [Once per session, pass through a guarded or blocked area unnoticed (no roll) and arrive at a point you choose.],
  )]
  , kind: table
  )

=== 6. Never Misses
#quote(block: true)[
Sniper, archer, gunslinger: steady breath and a sharp eye.
]

- #strong[Power tags:] #emph[steady breath];, #emph[eye like a hawk]
- #strong[Weakness tag:] #emph[clumsy up close]
- #strong[PC link:] \"\[PC\] owes their life to a shot I made.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Called Shot];], [Once per roll with Shoot, a #strong[free Weaken] effect: burn one of the target\'s tags (weapon, cover, mobility) for the scene.],
    [2a], [#strong[Overwatch];], [Once per scene, cancel a status of tier 2 or less about to hit an ally by shooting the source. In conflicts, you may Defend with #strong[Shoot] when covering fire can protect your side.],
    [2b], [#strong[Trick Shot];], [Ignore Truths about cover and angles. A free #strong[Extra Feat] when you shoot objects (cut a rope, hit a switch, ricochet).],
    [3a], [#strong[One Shot];], [Once per session, a Shoot Attack against a non-major NPC #strong[Takes them Out] on a success.],
    [3b], [#strong[★ Sniper\'s Patience];], [Spend a scene setting up (4-segment clock). Your shot gets #strong[+2 bonus dice] for free and #strong[+2 Power] on a success.],
  )]
  , kind: table
  )
#colbreak()
=== 7. Opens Every Lock
#quote(block: true)[
Locks, safes, firewalls, sealed doors: they\'re puzzles, and you love puzzles.
]

- #strong[Power tags:] #emph[nothing stays closed];, #emph[thinks like an architect]
- #strong[Weakness tag:] #emph[can\'t resist a challenge]
- #strong[PC link:] \"\[PC\] keeps me out of trouble, or tries to.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Bypass];], [Each success on a lock, safe, or security clock Advances it #strong[+1 extra segment];.],
    [2a], [#strong[Back Door];], [Once per location, Create the Truth #emph[I know a way in] for #strong[1 Power];.],
    [2b], [#strong[Trap Sense];], [You always notice traps and alarms before triggering them. Resisting traps costs #strong[0 on a highest die of 5+];.],
    [3a], [#strong[Master Key];], [Ordinary locks open without a roll. Complex security is #strong[two Difficulty steps lower];.],
    [3b], [#strong[★ Vault Breaker];], [Once per mission, declare a security layer already cracked: fill one security clock completely.],
  )]
  , kind: table
  )

=== 8. Always Has an Escape Plan
#quote(block: true)[
You never walk into a room without knowing how to leave it.
]

- #strong[Power tags:] #emph[knows every exit];, #emph[slippery]
- #strong[Weakness tag:] #emph[runs first, thinks later]
- #strong[PC link:] \"\[PC\] was with me during my worst getaway.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Exit Strategy];], [When you enter a new scene, ask one free Discover question about exits or escape routes.],
    [2a], [#strong[Clean Getaway];], [In Chase conflicts where you\'re fleeing, your side gets #strong[+3 Disposition];.],
    [2b], [#strong[Contin-gency];], [Once per mission, when things go wrong, reveal a prepared fallback (stashed gear, a getaway vehicle, a safe house) as a story tag. No Momentum needed.],
    [3a], [#strong[Not Here];], [Once per session, escape any scene with every ally who can follow, before the next status lands.],
    [3b], [#strong[★ Dead Man\'s Switch];], [You can\'t be held. When captured or Taken Out, you escape at the start of the next scene. The GM gains 2 Woe.],
  )]
  , kind: table
  )
]
#pagebreak()
== 5. Knowledge Focuses
#columns(2, gutter: 6mm)[
=== 9. Builds Impossible Things
#quote(block: true)[
An artificer, engineer, or inventor who makes what shouldn\'t work, work.
]

- #strong[Power tags:] #emph[workshop hands];, #emph[it\'ll work, trust me]
- #strong[Weakness tag:] #emph[never quite finished]
- #strong[PC link:] \"I built \[PC\]\'s gear, and I\'m still tinkering with it.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Jury-Rig];], [Once per scene, Craft a temporary gadget (a story tag) that lasts the scene and costs #strong[1 Power] to Create.],
    [2a], [#strong[Inventor];], [During downtime, turn a gadget into a permanent item with a 6-segment clock. It gets 1 power tag and 1 action tag.],
    [2b], [#strong[Field Repairs];], [Restore effects work on gear, vehicles, and constructs. Repair damaged armour without downtime.],
    [3a], [#strong[Master-work];], [Create one #strong[artifact] (Module A) with a 12-segment downtime clock. You pay no Refresh to attune your own masterwork.],
    [3b], [#strong[★ Rig the Field];], [Once per scene, rig the area with gadgets: Create #strong[two] story tags for 2 Power total.],
  )]
  , kind: table
  )

=== 10. Heals the Broken
#quote(block: true)[
Doctor, field medic, herbalist, or combat surgeon.
]

- #strong[Power tags:] #emph[calm hands];, #emph[bedside manner]
- #strong[Weakness tag:] #emph[can\'t refuse anyone in pain]
- #strong[PC link:] \"I patched up \[PC\] when no one else would.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Triage];], [Once per scene, reduce an ally\'s harmful status by #strong[1 tier] without a roll.],
    [2a], [#strong[Battlefield Surgeon];], [In conflicts, you may Defend with #strong[Medicine] when you can reach an ally and provide appropriate treatment. On a successful Defend, restore your side\'s Disposition normally and clear one tier-1 harmful status from that ally that your treatment can address.],
    [2b], [#strong[Remedy];], [In each Players\' Turn, clear one Grind condition (Module B) from one ally #strong[without spending a Check];.],
    [3a], [#strong[Miracle Worker];], [Once per session, bring an ally back from a tier-6 physical status. They return at tier 4 and are no longer Taken Out.],
    [3b], [#strong[★ Physician\'s Care];], [Allies you treat during a short rest recover #strong[all] pool points, not just 1 + Edge.],
  )]
  , kind: table
  )

=== 11. Solves the Unsolvable
#quote(block: true)[
Detective, investigator, or analyst: you follow the thread to the end.
]

- #strong[Power tags:] #emph[nothing gets past me];, #emph[follows the thread]
- #strong[Weakness tag:] #emph[obsessed with the case]
- #strong[PC link:] \"\[PC\] was part of the case that made me.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Case File];], [Start a #strong[Mystery clock] (6 or 8) for a case. Every Discover you buy also Advances it 1 segment. When it fills, the GM reveals the core truth.],
    [2a], [#strong[Interro-gator];], [When questioning someone, each Discover gives #strong[two answers];.],
    [2b], [#strong[Recon-struction];], [At the scene of a past event, ask #strong[three] Discover questions for free (once per location).],
    [3a], [#strong[The Reveal];], [Once per session, name the culprit in front of others. If you\'re right, your side starts any conflict against them with #strong[+4 Disposition];, and they get no compromise if they lose.],
    [3b], [#strong[★ One Step Ahead];], [Once per session, reveal that you anticipated an opponent\'s move: #strong[cancel one GM Woe spend] as it happens.],
  )]
  , kind: table
  )

=== 12. Remembers What Was Forgotten
#quote(block: true)[
Historian, archaeologist, or keeper of lost lore.
]

- #strong[Power tags:] #emph[walks among ruins];, #emph[reads dead languages]
- #strong[Weakness tag:] #emph[lives in the past]
- #strong[PC link:] \"\[PC\] helped me recover something that was lost.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Echoes of the Past];], [At any old or abandoned place, ask one free Discover question about its history.],
    [2a], [#strong[Lost Knowledge];], [Once per session, you\'ve read about this before: Create a story tag (#emph[ancient weakness];, #emph[forgotten route];) for #strong[0 Power];.],
    [2b], [#strong[Relic Hunter];], [When you find cyphers or treasure, roll or draw #strong[twice] and choose. You identify artifacts automatically.],
    [3a], [#strong[Living Archive];], [Lore rolls about history, legends, and old cultures are #strong[two Difficulty steps lower];.],
    [3b], [#strong[★ Rewrite History];], [Prove a Campaign Truth is false with a 12-segment research clock. When it fills, the Truth changes (Module C).],
  )]
  , kind: table
  )
]
== 6. Social Focuses
#columns(2, gutter: 6mm)[
=== 13. Talks Their Way Out of Anything
#quote(block: true)[
Charm, quick wit, and the right words at the right time.
]

- #strong[Power tags:] #emph[always has a story ready];, #emph[disarming smile]
- #strong[Weakness tag:] #emph[my mouth writes cheques]
- #strong[PC link:] \"\[PC\] has bailed me out more than once; I owe them.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Fast Talk];], [Once per scene, use Persuade or Deceive in place of any other skill to get out of a bad situation.],
    [2a], [#strong[Change of Plans];], [When a social roll results in a Success at a Cost, you may give the GM 1 Woe #strong[instead] of accepting the consequence.],
    [2b], [#strong[Disarming];], [Once per scene, stop a fight before it starts with a Persuade roll. On a success, the Fight becomes a #strong[Negotiation] conflict.],
    [3a], [#strong[★ The Long Con];], [Start a #strong[long con clock] (8) against a target. Each success against them Advances it. When it fills, they give up something substantial: land, title, a secret, or their master.],
    [3b], [#strong[Golden Tongue];], [Tychē Point invokes on Persuade and Deceive give #strong[+3] instead of +2.],
  )]
  , kind: table
  )

=== 14. Wears a Hundred Masks
#quote(block: true)[
Spy, impostor, or actor: you can be anyone.
]

- #strong[Power tags:] #emph[perfect mimic];, #emph[no one remembers my real face]
- #strong[Weakness tag:] #emph[who am I really?]
- #strong[PC link:] \"\[PC\] is the only one who knows my real name.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Quick Change];], [Create a disguise story tag for #strong[1 Power];, even without a disguise kit.],
    [2a], [#strong[Mimic];], [You can copy voices, mannerisms, and handwriting. Impersonating a specific person gets a #strong[free bonus die];.],
    [2b], [#strong[Deep Cover];], [Keep a cover identity as a permanent story tag with its own contact. The GM must spend #strong[2 Woe] to blow your cover.],
    [3a], [#strong[Belongs Anywhere];], [Ignore Truths about social barriers (#emph[members only];, #emph[high security];, #emph[closed community];).],
    [3b], [#strong[★ Become Them];], [Once per session, take a specific NPC\'s place for a scene. No one can expose you before the scene ends.],
  )]
  , kind: table
  )
#colbreak()
=== 15. Knows Everyone Worth Knowing
#quote(block: true)[
Fixer, socialite, or broker: you\'re one call away from anyone.
]

- #strong[Power tags:] #emph[favours owed];, #emph[always on the guest list]
- #strong[Weakness tag:] #emph[owes favours too]
- #strong[PC link:] \"I introduced \[PC\] to the people who matter.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Contacts];], [Start with #strong[3 named contacts] (story tags). Once per session, call one for a free Discover or a minor favour.],
    [2a], [#strong[Favour Bank];], [In each Players\' Turn, help a contact (spend a Check) to bank a #strong[favour];. Spend a favour for substantial help: a safe house, troops, a pardon.],
    [2b], [#strong[Gossip Network];], [At the start of each session, ask 2 Discover questions about current rumours. When confirming rumours (Module C), roll #strong[twice and choose];.],
    [3a], [#strong[Power Broker];], [Once per World Turn (Module C), Advance or reverse one faction clock by 1.],
    [3b], [#strong[★ The Right Person];], [Once per session, exactly the right contact for the situation happens to be present.],
  )]
  , kind: table
  )

=== 16. Carries the Weight of a Crown
#quote(block: true)[
Noble, officer, executive, or chieftain: you hold authority, and it holds you.
]

- #strong[Power tags:] #emph[voice of authority];, #emph[my name carries weight]
- #strong[Weakness tag:] #emph[duty before self]
- #strong[PC link:] \"\[PC\] serves me, or is the one person who refuses to.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Rank];], [Choose where your authority applies (a realm, company, fleet, or clan). There, Create the Truth #emph[by my order] for #strong[1 Power];.],
    [2a], [#strong[Retainers];], [Gain loyal servants or aides as a group tag. They give free Help once per scene and handle errands.],
    [2b], [#strong[Immunity];], [Once per session, avoid arrest or legal consequences through your status.],
    [3a], [#strong[Command the Field];], [In Battle conflicts, your side gets #strong[+4 Disposition];.],
    [3b], [#strong[★ Holdings];], [Gain a holding (keep, office, ship, estate) as a site with #strong[3 Truths you choose];. Once per Players\' Turn, one action there costs no Check.],
  )]
  , kind: table
  )
]
  #pagebreak()
== 7. Wilderness & Travel Focuses
#columns(2, gutter: 6mm)[
=== 17. Runs With the Pack
#quote(block: true)[
Beast handler, rider, falconer, or dog-musher.
]

- #strong[Power tags:] #emph[animals trust me];, #emph[calm voice]
- #strong[Weakness tag:] #emph[better with animals than people]
- #strong[PC link:] \"\[PC\] is the only person my animals like.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Handler];], [Calm or command ordinary animals with Empathy. If you have an Animal Companion, it gains #strong[+1 power tag];.],
    [2a], [#strong[Pack Tactics];], [Your animals give #strong[free Help] once per scene.],
    [2b], [#strong[Beast Lore];], [Once per scene, Discover a creature\'s weakness tag without rolling.],
    [3a], [#strong[★ The Pack];], [Gain a group of animals (hounds, ravens, horses) with 2 power tags and 1 weakness. It acts as one group and takes statuses as a single target.],
    [3b], [#strong[Trusted Mount];], [Gain a superb mount (or upgrade one). In Chase conflicts your side gets #strong[+3 Disposition];, and the mount carries 3 extra load.],
  )]
  , kind: table
  )

=== 18. Charts the Unknown
#quote(block: true)[
Explorer, navigator, or surveyor drawn to the blank parts of the map.
]

- #strong[Power tags:] #emph[always knows north];, #emph[mapmaker\'s eye]
- #strong[Weakness tag:] #emph[can\'t resist the horizon]
- #strong[PC link:] \"\[PC\] backed my first expedition.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Carto-grapher];], [Any area you\'ve travelled becomes a #strong[map] (story tag). It permanently lowers travel Difficulty there by one step.],
    [2a], [#strong[Shortcut];], [Once per journey, skip one leg entirely (no rolls, no Supplies spent).],
    [2b], [#strong[First Contact];], [Your first Persuade or Empathy roll with a new people or culture gets a #strong[free bonus die];.],
    [3a], [#strong[Discoverer];], [Once per session, discover a new site (Module C). You define #strong[one of its three Truths];.],
    [3b], [#strong[★ Lands Unknown];], [When the party enters an uncharted region, you name #strong[one Region Truth];.],
  )]
  , kind: table
  )
#colbreak()
=== 19. Lives Off the Land
#quote(block: true)[
Survivalist, forager, or homesteader: you need nothing the world doesn\'t give.
]

- #strong[Power tags:] #emph[nothing goes to waste];, #emph[knows what\'s edible]
- #strong[Weakness tag:] #emph[distrusts civilization]
- #strong[PC link:] \"I taught \[PC\] how to survive their first winter.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Forager\'s Eye];], [The party loses Supplies only #strong[every other leg];. You clear #emph[Hungry & Thirsty] with an Easy Survival roll.],
    [2a], [#strong[Shelter Builder];], [Allies who rest in a camp you built each clear #strong[one Grind condition];.],
    [2b], [#strong[Natural Remedies];], [Use Survival in place of Medicine for Restore effects, using what you gather.],
    [3a], [#strong[Hardened];], [Your personal Grind clock is #strong[2 segments larger];, and you ignore #emph[Exposed];.],
    [3b], [#strong[★ Living Larder];], [The party never runs out of Supplies in any wild terrain that supports life.],
  )]
  , kind: table
  )

=== 20. Was Born Behind the Wheel
#quote(block: true)[
Driver, pilot, sailor, or rider: you and your vehicle are one.
]

- #strong[Power tags:] #emph[my rig is part of me];, #emph[nerves of steel at speed]
- #strong[Weakness tag:] #emph[can\'t leave her behind]
- #strong[PC link:] \"\[PC\] has ridden shotgun since day one.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Signature Vehicle];], [Gain a vehicle (horse and cart, truck, canoe, starship) with #strong[2 power tags];, or give your existing one 2 more.],
    [2a], [#strong[Stunt Driver];], [In Chase conflicts, your Maneuvers gain #strong[+1 Power];.],
    [2b], [#strong[Grease Monkey];], [Repair your vehicle in the field with Craft. Restore on vehicle statuses costs #strong[1 Power per 2 tiers];.],
    [3a], [#strong[Ace];], [Once per scene, reroll a Drive/Pilot roll for free.],
    [3b], [#strong[★ Legendary Ride];], [Your vehicle becomes an #strong[artifact] with one special ability (ram, jump, stealth mode, impossible speed). It costs no attunement Refresh.],
  )]
  , kind: table
  )
]
#pagebreak()
== 8. Weird Focuses ◈
#columns(2, gutter: 6mm)[
=== 21. Hunts the Things in the Dark ◈
#quote(block: true)[
Monster-hunter, exorcist, or investigator of the strange.
]

- #strong[Power tags:] #emph[knows their weaknesses];, #emph[silver, salt, and iron]
- #strong[Weakness tag:] #emph[the dark hunts me back]
- #strong[PC link:] \"\[PC\] saw what I saw that night, and they\'re the only one who believes me.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Monster Lore];], [Once per scene, Discover a supernatural creature\'s weakness tag without rolling.],
    [2a], [#strong[Bane];], [Your Attacks against a creature whose weakness you\'ve exploited inflict #strong[+1 tier];.],
    [2b], [#strong[Ward the Threshold];], [Spend a scene preparing a location. For one night, supernatural creatures must beat #strong[Formidable 21] to cross it.],
    [3a], [#strong[Unshake-able];], [When you Resist fear, possession, or corruption with Pneuma, the cost is #strong[0 on a highest die of 5+];, and you reduce the status by 3 tiers.],
    [3b], [#strong[★ Nemesis];], [Name a supernatural foe. You always sense its direction, and your rolls against it get a #strong[free bonus die];.],
  )]
  , kind: table
  )

=== 22. Walks Between Worlds ◈
#quote(block: true)[
Touched by the spirit world, the Otherworld, or the deep net.
]

- #strong[Power tags:] #emph[one foot across the veil];, #emph[spirits whisper to me]
- #strong[Weakness tag:] #emph[not quite of this world]
- #strong[PC link:] \"\[PC\] anchors me. Without them, I\'d drift away.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Spirit Sight];], [You can see and speak with spirits, ghosts, or digital entities. Once per scene, a Discover about them costs #strong[0 Power];.],
    [2a], [#strong[Crossing];], [With a 4-segment ritual clock, step into the other world and back, bringing up to two allies.],
    [2b], [#strong[Ghostly Ally];], [A minor spirit follows you. Once per scene, it gives a free Discover about places it can reach.],
    [3a], [#strong[Ally Beyond];], [Gain a powerful patron in the other world. Once per session, call on it for a #strong[Heroic-scope favour];; the GM gets a compel on your weakness tag in return.],
    [3b], [#strong[★ Half-Step];], [Once per scene, become intangible until your next action. Ignore one incoming physical status.],
  )]
  , kind: table
  )
#colbreak()
=== 23. Made a Bargain With Something Old ◈
#quote(block: true)[
Warlock, cursed heir, or desperate deal-maker. You have power, and a debt.
]

- #strong[Power tags:] #emph[patron\'s gift];, #emph[knows the old names]
- #strong[Weakness tag:] #emph[the debt comes due]
- #strong[PC link:] \"\[PC\] knows what I traded, and hasn\'t told anyone.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Patron\'s Gift];], [Gain a #strong[minor Domain] (Generic Playbooks §8.1) tied to your patron. You can perform Easy and Standard workings with Arcana, paying Pneuma. If you\'re already an Adept, your Domain gets #strong[+1 power tag] instead.],
    [2a], [#strong[Ask the Patron];], [Once per session, ask #strong[two] Discover questions. The GM gains 1 Woe.],
    [2b], [#strong[Not Yet];], [Once per session, when you\'d be Taken Out, your patron intervenes: you stay at tier 5. The GM gets a free compel on #emph[the debt comes due] next session.],
    [3a], [#strong[Greater Gift];], [Your patron Domain works up to #strong[Formidable 21];.],
    [3b], [#strong[★ Borrowed Might];], [Once per session, call on your patron\'s power directly: gain #strong[4 Power] to spend on any Effects without a roll. The GM gains 3 Woe.],
  )]
  , kind: table
  )

=== 24. Is More Than Human ◈
#quote(block: true)[
Mutant, cyborg, half-fae, or carrier of a strange bloodline.
]

- #strong[Power tags:] #emph[\[your trait\]];, #emph[unnatural resilience]
- #strong[Weakness tag:] #emph[outsider]
- #strong[PC link:] \"\[PC\] saw me change and stayed anyway.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Gift];], [Choose a trait (claws, enhanced senses, night vision, gills, wings, cyber-arm). Its tag may add #strong[+1 above the normal +2 cap (maximum +3)] on related rolls. Gain +2 to one pool.],
    [2a], [#strong[Second Trait];], [Choose another trait. It also may add #strong[+1 above the normal cap (maximum +3)];.],
    [2b], [#strong[Regeneration];], [A short rest clears #strong[one tier-1 physical status];. A full rest clears 2 tiers from every physical status.],
    [3a], [#strong[Apex Form];], [Once per scene, unleash your nature: a #strong[free bonus die] on Sōma and Akmē skills for the scene. At scene end, take #emph[Weary];.],
    [3b], [#strong[★ Beyond Limits];], [Gain #strong[+1 Edge] in two pools (max 3 each).],
  )]
  , kind: table
  )
]
== 9. Design Notes
#columns(2, gutter: 6mm)[
=== 9.1 Coverage by Playbook
#figure(
  [#table(
    columns: (19%, 81%),
    align: (auto,auto,),
    table.header([Playbook], [Strong fits],),
    table.hline(),
    [Bellator], [1, 2, 3, 4, 6, 16, 17, 19, 21],
    [Furcifer], [1, 3, 4, 5, 6, 7, 8, 11, 13, 14, 20],
    [Savant], [7, 9, 10, 11, 12, 15, 18, 21, 22],
    [Interlocutor], [2, 8, 10, 11, 13, 14, 15, 16],
    [Explorator], [1, 2, 3, 5, 6, 9, 12, 17, 18, 19, 20],
    [Adept], [7, 9, 10, 12, 21, 22, 23],
    [Any], [23, 24],
  )]
  , kind: table
  )

Off-type combinations are encouraged: an #emph[Interlocutor who Masters a Weapon] is a duellist-diplomat; an #emph[Adept who Was Born Behind the Wheel] is a witch with a haunted truck.

=== 9.2 Things to Watch in Playtest
- #strong[Tag-cap exceptions] (Masters a Weapon, Is More Than Human): #strong[resolved (v0.3)] --- both abilities now add #strong[+1 above the normal +2 cap (maximum +3 from tags)] instead of ignoring the cap outright. Re-test rolls at Formidable/Heroic Difficulty after this change to confirm it still feels earned rather than trivial.
- #strong[Once-per-session \"auto-wins\"] (One Shot, The Reveal, Not Here, Become Them, The Right Person): these are deliberate spotlight moments. If several players have them, the GM may limit the table to one per scene.
- #strong[Overlap with playbook abilities:] a few Focus abilities echo playbook abilities (Beast Lore / Monster Lore, Trap Sense / Escape Artist). That\'s intended for off-type characters; for on-type characters, the two don\'t stack. Take the better one.
- #strong[★ distribution:] every Focus has exactly one ★ option, and it\'s never the Tier 1 ability, so you can always reach Tier 3 at full Refresh.
- #strong[Gaps for v0.3:] a dedicated faith/priest Focus (non-Weird reading: \"Keeps the Faith\"), a scholar-of-war Focus, a merchant/trader Focus, and a performer/artist Focus.
]
  
// =====================================================================
//  APPENDIX — QUICK REFERENCE
// =====================================================================
#chapter("Quick Reference",
  [The core procedures on one spread, for the table and the screen. Full rules are in Chapter II.],
  numbered: false, label-text: "Appendix")


#columns(2,gutter:6mm)[
== The Roll
*2d12 + Skill + Modifiers vs. Difficulty.* Skill +0 to +4. Power tags +1 each, *maximum +2 per roll* (tag-cap exceptions: maximum +3). Weakness tags −1 each, no cap. Statuses ± tier. Truths shift Difficulty, not the roll (Core Rules §2.1).

== Difficulty
#table(columns: (1fr, auto),
  table.header([Difficulty], [Target]),
  [Routine], [No roll], [Easy], [12], [Standard], [15], [Hard], [18], [Formidable], [21], [Heroic], [24])

== Outcomes
#table(columns: (34%, 66%),
  table.header([Result], [Outcome]),
  [Meet the target], [*Success*: 1 Power, +1 per full 3 over],
  [Miss by 1–3], [*Success at a Cost*: 1 Power, and the GM adds a consequence or gains 1 Woe (player's choice)],
  [Miss by 4+], [*Failure*: the GM makes a move and gains 1 Woe])
Unspent Power becomes *Momentum* (party pool, max 6).
,

== Doubles (Twists)
If the two kept dice match: on a success, a *Critical* (+1 Power and a flourish). On a failure or cost, a *Complication* (GM gains 2 Woe or adds a complication now). *Double 12s* always succeed with +2 Power. *Double 1s* always bring a complication.
#colbreak()
== Bonus Dice
Keep the best two dice; maximum +2 bonus dice.
#table(columns: (34%, 66%),
  table.header([Source], [Cost]),
  [Effort], [3 − Edge from the pool (min 0); or buy +1 Power after a success],
  [Momentum], [1 for the first die, 2 for the second],
  [Woe], [Give the GM 1 Woe per die],
  [Help], [An ally spends 1 pool point and shares the risk])

== Resist (Core Rules §6)
Roll *2 + Edge* d12, take the *highest die*, and pay the listed cost (don't subtract Edge): *two or more 12s* cost 0 and clear a tier-1 status · *9–12* costs 1 · *5–8* costs 2 · *1–4* costs 3. This reduces the status by 2 tiers. *Negative Edge:* −1 rolls 1d12; −2 or lower rolls that many dice (2d12 at −2, 3d12 at −3) and keeps the *lowest*.

== Running Dry (Core Rules §6.1--6.3)
A cost that empties a pool, or is more than what's left in it, imposes a running-dry status at *tier 1 + overrun* (overrun = cost − points left). Only Resistance and imposed costs can overrun; a cost of 0 never runs dry. The status stacks normally. At *tier 6* you are Taken Out within its scope and gain *one Scar* (at most one per event). The pool and the status recover separately: 2 recovery points remove 1 depletion tier.
#colbreak()
== Damage Cycle (Core Rules §6, §10)
Each side has *one shared Disposition* total, reduced at setup by the opponent's *Superiority* (0--3, minimum 1); Attacks and Feints remove their committed Power + 1 and nothing else, and Defend restores it. A side loses at 0 or when no participant can continue. *Injury trade:* one per Attack or Feint, once per conflict, accept a tier 2/3/4 injury to cancel 1/2/3 loss; it can't be Resisted. Treatment removes at most 1 tier of a lasting injury until healing time does. Tier-6 life-threatening harm makes you *Dying*: 3-segment clock, Medicine vs. Hard 18 to stabilise. Compromise statuses are tier 2/3/4.

== Rest and Recovery
#table(columns: (16%, 52%, 32%),
  table.header([Rest], [Time], [Recovery]),
  [First], [A few seconds; 1 action mid-encounter], [½ d12, round up],
  [Second], [10 minutes], [½ d12, round up, +1],
  [Third], [1 hour], [½ d12, round up, +2],
  [Fourth], [10 hours (overnight)], [All pools full])
Divide the points among Sōma, Akmē, Psychē and Pneuma, up to each pool's maximum. Edge does not apply. *Hardened* (one-time Advance): +1 point on every recovery roll.
#colbreak()
== The Four Currencies
#table(columns: (30%, 22%, 48%),
  table.header([Resource], [Owner], [Job]),
  [Pools (Sōma, Akmē, Psychē, Pneuma)], [Each PC], [Effort and Resistance],
  [Tychē Points], [Each PC], [Invoke tags, accept compels],
  [Momentum], [The party], [Surplus Power from strong rolls (max 6)],
  [Woe], [The GM], [Complications and escalation])
]
#v(1fr)
#align(center, ornament-rule(width: 40%))
#v(6pt)
#align(center, text(font: display-font, size: 9pt, fill: dust, tracking: 0.2em)[END OF THE CORE RULEBOOK · 2026-10-19])




