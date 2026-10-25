// =====================================================================
//  TESTAMENT OF DUST — A SETTING FOR THE 2d12 SYSTEM, VERSION 2
//  Setting Book · Post-Apocalyptic Frontier Gothic
//  Compiled for SkroxiousDM · 2026-10-19
//
//  Single-file Typst source. Compile with:
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

// ---------------------------------------------------------------- palette
#let ink      = rgb("#16130f")   // night / soot black
#let ash      = rgb("#2a2420")   // charred timber
#let paper    = rgb("#f4eee2")   // bleached bone parchment
#let tint     = rgb("#ebe2d0")   // table zebra
#let blood    = rgb("#7d1d1a")   // oxblood
#let ember    = rgb("#a8322a")   // fresh blood / ember
#let brass    = rgb("#a4813f")   // tarnished brass
#let dust     = rgb("#6b5f52")   // trail dust (muted text)
#let moon     = rgb("#e9dcc0")   // pale moonlight

#let body-font    = ("EB Garamond", "Libertinus Serif", "DejaVu Serif")
#let display-font = ("Cinzel", "Libertinus Serif", "DejaVu Serif")
#let symbol-font  = ("DejaVu Sans",)

// ---------------------------------------------------------------- metadata
#let book-title    = "Testament of Dust"
#let book-subtitle = "A Setting for The 2d12 System · Version 2"
#let book-kind     = "Setting Book"
#let book-tagline  = "Post-Apocalyptic Frontier Gothic"
#let book-motto    = "Roads through a broken world. Blood behind every bargain."
#let book-author   = "SkroxiousDM"
#let book-date     = "2026-10-19"

#set document(
  title: book-title + " — " + book-subtitle + " — " + book-kind,
  author: book-author,
  date: datetime(year: 2026, month: 10, day: 19),
  keywords: ("2d12", "Testament of Dust", "tabletop RPG", "setting book", "gothic", "post-apocalyptic"),
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

// a jagged ruined-castle skyline, drawn as a polygon across the page width
#let skyline(width: 21.59cm, height: 3.2cm, fill: ink) = {
  let w = width / 1cm
  let h = height / 1cm
  // x, y pairs in cm; y measured from the top of the box
  let pts = (
    (0, h), (0, h*0.72), (1.2, h*0.70), (1.8, h*0.55), (2.4, h*0.62), (3.3, h*0.60),
    (3.3, h*0.38), (3.55, h*0.30), (3.8, h*0.38), (3.8, h*0.58), (4.6, h*0.56),
    (5.1, h*0.66), (6.2, h*0.64), (6.6, h*0.50), (7.0, h*0.50), (7.0, h*0.20),
    (7.15, h*0.20), (7.3, h*0.02), (7.45, h*0.20), (7.6, h*0.20), (7.6, h*0.42),
    (8.2, h*0.42), (8.2, h*0.28), (8.5, h*0.18), (8.8, h*0.28), (8.8, h*0.48),
    (9.6, h*0.48), (9.9, h*0.60), (11.0, h*0.66), (11.8, h*0.62), (12.4, h*0.70),
    (13.6, h*0.68), (14.0, h*0.58), (14.6, h*0.60), (15.2, h*0.74), (16.4, h*0.72),
    (17.0, h*0.64), (17.4, h*0.66), (17.4, h*0.52), (17.6, h*0.46), (17.8, h*0.52),
    (17.8, h*0.66), (18.8, h*0.70), (19.6, h*0.78), (20.6, h*0.74), (w, h*0.80), (w, h),
  )
  polygon(fill: fill, ..pts.map(p => (p.at(0) * 1cm, p.at(1) * 1cm)))
}

// a blood moon: layered discs
#let blood-moon(r: 3.2cm) = box(width: 2*r, height: 2*r, {
  place(circle(radius: r, fill: blood.darken(35%)))
  place(dx: 0.12*r, dy: 0.12*r, circle(radius: 0.88*r, fill: blood.darken(10%)))
  place(dx: 0.30*r, dy: 0.22*r, circle(radius: 0.62*r, fill: ember.darken(5%)))
  place(dx: 0.95*r, dy: 0.55*r, circle(radius: 0.16*r, fill: blood.darken(25%)))
  place(dx: 0.55*r, dy: 1.15*r, circle(radius: 0.10*r, fill: blood.darken(25%)))
  place(dx: 1.25*r, dy: 1.20*r, circle(radius: 0.07*r, fill: blood.darken(25%)))
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
      upper(book-title + " · 2d12 v2"),
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
    #place(bottom + center, dx: 0cm, skyline(fill: ash.darken(10%)))
    #place(top + right, dx: 0.6cm, dy: -1.2cm, blood-moon(r: 1.9cm))
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
  [II], [Frontier Rules], [The Frontier setting: Campaign Truths, skills, day and night, vampires, the Bled, afflicted blood, killing methods, old-world works, contracts, conflicts, travel, Woe spends],
  [III], [Frontier Descriptors], [20 Descriptors with Frontier hooks],
  [IV], [Frontier Playbooks], [Sellsword, Stalker, Frontier Doctor, Broker, Rider, Occultist, Mutant, Cyborg Hunter, Warden],
  [V], [Frontier Focuses], [20 setting Focuses, including the dhampir Focus],
  [App.], [Frontier Quick Reference], [Day and night, Frontier skills and vampire Woe spends at a glance],
))

#strong[What comes from the core rulebook.] References to *Core Rules*, *Optional Modules*, *Generic Descriptors*, *Generic Playbooks* and *Generic Focuses* point to #emph[The 2d12 System]. For example, *Core Rules §4.1* means section 4.1 of the Core Rules chapter in that book. References to the Frontier chapters point to this book, and a bare reference such as *§6* points to a section in the same chapter. Where a Frontier rule and a core rule conflict, the Frontier rule wins.

#strong[Optional Modules.] On the Frontier, all three modules in #emph[The 2d12 System] are recommended: Cyphers & Artifacts for old-world works, The Grind & Travel for the long roads between towns, and the Truth-Driven Sandbox for a world written in Campaign Truths.
#colbreak()
== Terminology and Renamed Stats

The source documents used the working names on the left. This book uses the house names on the right everywhere: in rules text, tables, abilities, gear and playbook names.

#figure(table(columns: (24%, 22%, 54%),
  table.header([Working name], [House name], [What it is]),
  [Threat], [*Woe*], [The GM's pool: complications, escalation, vampire Woe spends],
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
- *Names left as they are.* In-world names that use the everyday words keep them, because they describe the fiction rather than a stat: the *Spirit Duel* conflict type, the abilities *Spirit Sight*, *Shared Spirit*, *Steady Mind* and *Archive Mind*, and the Focus *Sends the Mind Abroad*. Credits to the source games (Fate, Fate Core, 2d20) also keep their original names.

#colbreak()
== Notation

- *★ Major.* An ability that costs *1 Refresh* when you take it, at creation or through advancement.
- *◆ Capstone.* Unlocked after *12 Advances* if you have at least 4 abilities from that playbook. It costs no Refresh, and each character can have one.
- *◈ Weird.* A Focus that assumes the supernatural, old-world works or afflicted blood. On the Frontier every ◈ Focus is allowed, but the marker shows which ones draw the attention of vampire households, Occultists and frightened villagers.
- *Tags* are written in _italics_, such as _marks on my throat_. *Statuses* add a tier, such as _wounded-2_.
- *Difficulty* is written by name and target, such as *Standard 15* or *Hard 18*.

#sidebar("A Note on Tone")[
  The Frontier is gothic horror on a post-apocalyptic frontier: lone riders, dusty towns, shuttered estates, laser rifles beside wooden stakes, blood ledgers and disputed wills, and vampires who are few, long-lived and indispensable. Players can be dhampirs, but not full vampires (Frontier Rules §1).
]
]
// =====================================================================
//  CHAPTER — FRONTIER RULES
// =====================================================================
#chapter("Frontier Rules", [The old world is buried beneath the present, but it has not fallen silent. This chapter covers the setting: Campaign Truths, day and night, vampires and the blood they need, the bled, dhampirs, how the afflicted die, old-world works, contracts and the long roads between towns.], epigraph: [Every door in this valley opens for someone. Find out who, and you'll know who rules it.])

== 1. The Setting in Brief
The old world is buried beneath the present, but it has not fallen silent. Its roads, foundations and sealed rooms are everywhere; a few of its works still run. No one agrees on when it fell, and every claim to rule rests on a history that cannot all be true.

Across the #strong[Frontier] --- wherever law, knowledge and working infrastructure give out --- towns bargain with ancient households, physicians dispute the teachings of religious orders, and courts fight over succession, charters and the machines that keep people alive.

Among the living are #strong[vampires]: people who must take blood to live. They are few, long-lived, hard to kill and often indispensable. Some claim to remember the world before the fall. Most rule nothing; some rule a great deal. Their #strong[dhampir] children are rarer still.

#strong[Tone:] grim, gothic, political. Locked rooms and disputed wills, blood ledgers and charity clinics, rifles beside silver knives, and monsters who know every family in town.

Players can be dhampirs (see the Focus #emph[Carries Her Mother's Blood]) but not full vampires.

== 2. Campaign Truths
Agree on these at session zero. The first five are the #strong[core Truths]. Replace or add to them from the optional list.

=== 2.1 Core Truths

#figure(
  [#table(
    columns: (5%, 22%, 73%),
    align: (auto,auto,auto,),
    table.header([\#], [Truth], [In play],),
    table.hline(),
    [1], [#strong[The Kept are few and indispensable]], [Vampires are rare. A single vampire is a campaign arc, not a random encounter --- and killing one rarely solves the problem it was part of.],
    [2], [#strong[Blood behind every bargain]], [Every vampire depends on a supply: a household, a levy or an exchange. The supply is politics.],
    [3], [#strong[The Frontier pays for answers and fears them]], [Towns hire investigators and Hunters because they must. They don't always want what's found.],
    [4], [#strong[The old world's works are disputed]], [Machines, miracles, curses and hauntings are argued over by physicians, priests and scholars. Science and Occult both apply (§3).],
    [5], [#strong[Dhampirs are rare, feared and coveted]], [Common folk fear them. Vampire households want them --- as heirs, keys or worse.],
  )]
  , kind: table
  )

=== 2.2 Optional Truths (d12)

#figure(
  [#table(
    columns: (6%, 94%),
    align: (auto,auto,),
    table.header([d12], [Truth],),
    table.hline(),
    [1], [#strong[A founder still lives] --- one of the oldest vampires in the region controls a bloodline whose doors open across half the region.],
    [2], [#strong[No one rules the whole Frontier] --- no higher power is coming to settle disputes.],
    [3], [#strong[Some vampires want to end it] --- certain vampires seek death, love, escape, or a cure that may not exist.],
    [4], [#strong[The machines still run] --- old-world works keep operating with no one in charge, defended by guardians nobody controls.],
    [5], [#strong[Old oaths bind the retainers] --- hereditary retainer clans serve vampire households for pay, loyalty or debt.],
    [6], [#strong[Hunters compete for bounties] --- rival crews race for every contract. Bounties go to whoever brings back the proof.],
    [7], [#strong[The weather is a weapon] --- old weather works still run in places and still fail.],
    [8], [#strong[The bled are suspected] --- local law says anyone fed on by a vampire must be examined, confined or exiled, in case they turn.],
    [9], [#strong[The old faith keeps the old rites] --- the rites are older than anyone can explain, and some of them work.],
    [10], [#strong[Mutants are people too] --- mutants live everywhere, and how they're treated is a frontier politics question.],
    [11], [#strong[The lights in the sky still move] --- something the old world left overhead is still watching.],
    [12], [#strong[The Hunters' Code] --- Hunters keep a code: never abandon a contract, never hunt another Hunter's quarry. Breaking it makes you a target.],
  )]
  , kind: table
  )

== 3. Skill List
The 20 generic skills are renamed or kept as follows. Default pools are unchanged unless noted.

#figure(
  [#table(
    columns: (25.74%, 23.76%, 27.72%, 22.77%),
    align: (auto,auto,auto,auto,),
    table.header([Sōma], [Akmē], [Psychē], [Pneuma],),
    table.hline(),
    [Athletics], [Shoot], [Notice], [Will],
    [Brawl], [Stealth], [Investigate], [Persuade],
    [Fight], [#strong[Ride] #emph[(was Drive/Pilot)]], [#strong[Old Lore] #emph[(was Lore)]], [Intimidate],
    [Endure], [Craft], [#strong[Science] #emph[(was Tech)]], [Empathy],
    [#strong[Frontier] #emph[(was Survival)]], [], [Medicine], [#strong[Occult] #emph[(was Arcana)]],
    [], [], [Deceive], [],
  )]
  , kind: table
  )

#figure(
  [#table(
    columns: (11%, 89%),
    align: (auto,auto,),
    table.header([Skill], [Covers in this setting],),
    table.hline(),
    [#strong[Ride]], [Horses, cyborg horses, wagons, hover-vehicles, land-ships, and riding through a chase.],
    [#strong[Frontier]], [Wilderness survival, desert and wasteland travel, tracking, mutant animals, weather, finding water.],
    [#strong[Old Lore]], [History, households and bloodlines, etiquette and succession law, charter-speech (§10.5), old-world ruins and records, the folklore of the afflicted.],
    [#strong[Science]], [Repairing, using and disabling machines, old and new; cyborg parts; old-world weapons and works.],
    [#strong[Occult]], [Rites, wards and religious practice; omens, relics and reliquaries; what people believe about the afflicted, and which customs they keep.],
    [#strong[Medicine]], [Surgery, poisons, mutations, blood loss and transfusion (§6).],
  )]
  , kind: table
  )

#strong[Guideline:] Science and Occult often overlap. Let the player choose which applies, then fix it for that device or effect for the rest of the scene.

== 4. Day and Night
Time of day is always a #strong[scene Truth]. Every scene has one.

#figure(
  [#table(
    columns: (9.09%, 90.91%),
    align: (auto,auto,),
    table.header([Time Truth], [Effect],),
    table.hline(),
    [#strong[Day]], [Direct sunlight harms vampires and dhampirs (#emph[Sun-Sick], §7.1). Most vampires keep indoors or underground and many keep night hours, but they are not helpless by day: a vampire in a shuttered room is as dangerous at noon as at midnight. Their retainers, guardians and machines are active.],
    [#strong[Dusk]], [One scene. The GM gains #strong[+2 Woe] as the sun sets. Vampires come out.],
    [#strong[Night]], [Vampires and dhampirs see in the dark and ignore darkness Truths. Scenes at night with a vampire present add #strong[+1 Woe] at the start of the scene (dangerous Truth). The GM may use vampire Woe spends (§14).],
    [#strong[Dawn]], [One scene. A vampire in the open must reach shelter or face the sun. At the end of the scene, any vampire still in direct light gains #emph[Sun-Sick] at tier 2 at once, then normally.],
  )]
  , kind: table
  )

#strong[Cloud and glass:] heavy cloud lessens the harm (§7.1). Experience says sunlight through a window does vampires little harm; no one agrees why.

=== 4.1 The Dawn Clock
When the party must survive until morning, the GM sets a #strong[Dawn clock] (usually 6 or 8 segments).

- It ticks #strong[1 per scene] or #strong[1 per conflict exchange].
- Players may tick it with the #strong[Advance] effect only by actions that waste time for the enemy (stalling, hiding, leading a chase in circles).
- When it fills, the scene becomes #strong[Dawn].

Use the Dawn clock as a #strong[racing clock] against the vampire's own clock (#emph[Breach the Village 8], #emph[Take the Girl 6]). Dawn doesn't destroy a vampire; it forces a choice: withdraw, or fight on while the sun takes its toll.

== 5. Vampires
=== 5.1 Threat Ranks
Rank measures how dangerous a vampire is #strong[now] --- its resources, supply, allies and access to old works --- not its age. A vampire who remembers the world before the fall can be any rank; one made last decade can be Paramount.


#figure(
  [#table(
    columns: (9.9%, 41.58%, 21.78%, 26.73%),
    align: (auto,auto,auto,auto,),
    table.header([Rank], [Examples], [Conflict Disposition bonus], [Starting Woe when introduced],),
    table.hline(),
    [#strong[Minor]], [A starving fugitive, a household's newest vampire, a vampire kept as a prisoner], [+0], [1],
    [#strong[Established]], [Head of a small household, a physician with a private clinic], [+2], [3],
    [#strong[Great]], [Head of a great house, a vampire whose bloodline opens a town's treatment works], [+4], [5],
    [#strong[Paramount]], [A founder whose bloodline controls a region], [+6], [8 (and a danger clock that can end the campaign)],
  )]
  , kind: table
  )

=== 5.2 Hard to Kill
Vampires survive wounds that would kill anyone else.

- A vampire's physical statuses #strong[can't go above tier 5] unless the Attack uses a #strong[killing method] (§8.1). At tier 5 the vampire is #emph[broken]: it can still act, at −2 on physical rolls.
- #strong[Recovery needs blood.] A wounded or broken vampire that rests a full day #strong[and] takes at least half a litre of blood recovers all physical statuses. Without blood, it recovers only 1 tier per day.
- #strong[Wounds make it hungry.] Each time a vampire is #emph[broken], tick its #strong[Blood Debt clock] (§5.4) by 1.
- In a scripted conflict against a vampire, reducing its Disposition to 0 achieves the winning side's intent. If the intent is "destroy it", one PC must also make a #strong[killing strike]: one roll vs. Hard 18 using a killing method. On a failure, the vampire escapes or recovers, and the compromise is at least Significant.

=== 5.3 Vampire Traits
Each vampire has #strong[3--5 power tags] and #strong[at least 1 weakness tag], for example: #emph[the old hospital opens for me], #emph[a hundred donors], #emph[remembers the founding], #emph[faster than you can see], #emph[sees perfectly in the dark];; and #emph[starving], #emph[the doors don't know me], #emph[obsessed with the past], #emph[proud beyond reason], #emph[my supply runs through one man], #emph[believes the old stories] (§8.1). Players can learn them with #strong[Discover].

#strong[Pride:] the long-lived are proud. Once per scene, a PC may compel a vampire's pride (spend 1 Tychē Point or 1 Momentum): it accepts a duel, gives a warning before striking, or lets an insult distract it. The GM gains 1 Woe.

=== 5.4 Blood Debt
Every vampire needs blood regularly. The GM tracks each vampire NPC's hunger on a #strong[Blood Debt clock] of 6 segments, one segment per week since its last full feeding.


#figure(
  [#table(
    columns: (14%, 86%),
    align: (auto,auto,),
    table.header([Segments], [What the players can see],),
    table.hline(),
    [0--1], [Nothing.],
    [2--3], [Pallor, irritability, an unusual interest in blood (Notice, Empathy).],
    [4], [Pain, slowness, gifts failing: −1 on all its rolls. It takes risks to feed.],
    [5], [Desperate: −2 on all its rolls. Survival comes first; it may break its own rules.],
    [6], [#strong[Husk]: the vampire dries out and goes dormant (§5.5).],
  )]
  , kind: table
  )

- Being #emph[broken] ticks the clock (§5.2). A full feeding clears it. A partial feeding stops it ticking that week but doesn't clear it.
- #strong[Animal blood] counts for half: a vampire needs twice as much of it.

=== 5.5 Husks
Sometimes a starved vampire is found dried, light and rigid, like a corpse a century dead. Stories say such bodies can wake. Stories also say they burn like kindling.

- A husk is #strong[unconscious and helpless]. Any killing strike against it succeeds automatically, and #strong[fire destroys it at once].
- Waking one takes about three people's worth of blood, absorbed over hours or days. It wakes at Blood Debt 5.

=== 5.6 The Returned
Not everyone the Kept try to make becomes one of them. The making is dangerous and often fails, and most who fail die. A few survive as something else: the #strong[returned].

- #strong[What people see:] the returned are strong and grow fast, and most die young, rarely past thirty. Many are slow, literal or strange in their thinking; how much varies. They don't need blood.
- #strong[Not dhampirs:] folk often call them dhampirs, or cursed. They are neither. Dhampirs are born to vampire mothers (#emph[Carries Her Mother's Blood]); the returned were made, and the making failed.
- #strong[Evidence:] old-world doors and instruments sometimes react to one of the returned oddly, as if it half-belonged to a bloodline. No one agrees why. Households that make them would rather no one asked.
- #strong[Levies:] some towns owe children under old charters. Rumour says the few who come back are the ones who failed.
- #strong[NPCs only:] the returned are not a player option. A PC who survives a failed making leaves player control (§6).

== 6. The Bled
When a vampire feeds on someone --- or anyone loses a great deal of blood --- the victim gains the harmful status #strong[#emph[Bled]].


#figure(
  [#table(
    columns: (10%, 90%),
    align: (auto,auto,),
    table.header([Bled tier], [Effect],),
    table.hline(),
    [#strong[1]], [A donation's worth. Pale and tired. No roll penalty; clears after a night's rest with food and water.],
    [#strong[2]], [Light-headed: −1 on Sōma and Akmē rolls.],
    [#strong[3]], [Weak: −2 on Sōma and Akmē rolls, and gain #emph[Weary].],
    [#strong[4]], [Critical: the next harm of any kind Takes you Out. Needs a Medicine roll to stabilise.],
    [#strong[5]], [Dying: Taken Out. Dies at the end of the scene unless stabilised (Medicine vs. Hard 18) or given a transfusion.],
    [#strong[6]], [#strong[Drained]. Dead --- unless someone has both the reason and the means to make you one of them.],
  )]
  , kind: table
  )

- #strong[Gaining tiers:] a measured feeding inflicts Bled-1. A hard feeding is an Attack (+2 or more). Stacking rules apply.
- #strong[Resisting:] Resist with #strong[Sōma] when the blood is taken.
- #strong[Recovery:] 1 tier per full day of rest with food and water.
- #strong[Transfusion:] with a willing donor and a transfusion kit, a Medicine roll vs. Standard 15 lowers Bled by 1 tier per Power. The donor gains Bled-1.
- #strong[Frontier law:] where optional Truth 8 is in play, anyone known to be bled is examined, confined or exiled. Hiding the marks is a common compel.
- A PC who is Drained and made a vampire, or who survives a failed making as one of the returned (§5.6), leaves player control.

== 7. Afflicted Blood: Sunlight Syndrome and the Thirst
These rules apply to vampires and dhampirs (#emph[Carries Her Mother's Blood]).

=== 7.1 Sunlight Syndrome
Under the #strong[Day] Truth, in direct sunlight, the afflicted gain #strong[#emph[Sun-Sick]]:


#figure(
  [#table(
    columns: (50%, 25%, 25%),
    align: (auto,auto,auto,),
    table.header([Condition], [Dhampirs], [Vampires],),
    table.hline(),
    [Direct sun, at the start of each scene], [+1], [+2],
    [#emph[Merciless Sun] (deserts, harsh sun)], [+2], [+3],
    [Heavy overcast, per scene], [+0], [+1],
    [#emph[Sunlit] room or #emph[False Dawn] (§13), per exchange], [+1], [+1],
  )]
  , kind: table
  )

- Sun-Sick is a harmful status: it applies its tier as a penalty to physical rolls (Sōma and Akmē skills).
- Resist with #strong[Sōma] as normal. A wide hat, a dark cloak or partial shade counts as #strong[+1 Sōma Edge] for that Resist.
- While Sun-Sick is at tier 1+, abilities and rules that heal the afflicted (vampire recovery, #emph[Mother's Blood], #emph[Dhampir Regeneration]) don't work.
- A vampire at Sun-Sick 4+ also gains #emph[burning-1] each scene in the sun.
- #strong[Recovery:] a full scene in shade or darkness lowers Sun-Sick by 2 tiers. At night it clears completely.
- #strong[Tier 6:] collapse. Taken Out until carried into shade. A dhampir left for a whole day gains a Sōma Scar. A vampire left in direct sun for a full day is destroyed.

=== 7.2 The Thirst
Dhampirs have a #strong[Thirst] status, tier 0--6. It doesn't penalise rolls until tier 3. A dhampir has no weekly need for blood; the Thirst rises only from what happens to them.


#figure(
  [#table(
    columns: (80%, 20%),
    align: (auto,auto,),
    table.header([Trigger], [Thirst],),
    table.hline(),
    [A scene with fresh blood spilled nearby (yours or someone else's)], [+1],
    [You're Taken Out, or a pool drops to 2 or less], [+1],
    [You use an ability marked #emph[Thirst] in its entry], [+1 (or as listed)],
    [The GM compels the Thirst and you accept (gain a Tychē Point)], [+1],
    [A full night of rest], [−1],
    [Animal blood (a scene, no roll)], [−1],
    [A cup or so of human blood --- drunk, through broken skin or by transfusion (a scene, no roll)], [−2],
    [Half a litre or more of human blood at once], [Clear completely. If taken by force, gain a Pneuma Scar the first time (#emph[I've tasted it])],
  )]
  , kind: table
  )

#figure(
  [#table(
    columns: (14%, 86%),
    align: (auto,auto,),
    table.header([Thirst tier], [Effect],),
    table.hline(),
    [#strong[0--2]], [No effect.],
    [#strong[3--4]], [−1 on Pneuma rolls when blood is visible. Others notice you're hungry (Empathy, Notice).],
    [#strong[5]], [In every scene with a bleeding human, Resist with Pneuma or move towards them.],
    [#strong[6]], [#strong[Blood Crisis]: you choose --- feed from the nearest source this scene, #strong[or] refuse, collapse (Taken Out) and gain a Pneuma Scar. Either way, Thirst drops to 3 afterwards.],
  )]
  , kind: table
  )

#strong[Never feeding] is a Belief, not a rule. Blood Crisis keeps the choice, and the cost of refusing, with the player.

== 8. How the Afflicted Die, and Hunter's Gear
=== 8.1 Killing Methods and Folklore
A #strong[killing method] is a tag that lets an Attack take a vampire to #strong[tier 6: destroyed] (§5.2).


#figure(
  [#table(
    columns: (22%, 30%, 48%),
    align: (auto,auto,auto,),
    table.header([Method], [Effect], [Notes],),
    table.hline(),
    [#strong[Beheading]], [Killing method], [The one sure way. The blade must be able to cut through (#emph[heavy], #emph[fine], or a dhampir's strength).],
    [#strong[Fire] (sustained)], [Killing method against a vampire with a tier-4+ physical status; destroys a husk at once], [A burning house, a funeral pyre.],
    [#strong[Sunlight]], [No killing strike, but stops recovery and burns over time (§7.1)], [A collapsed vampire left in direct sun for a full day is destroyed.],
    [#strong[Stake through the heart]], [Not a killing method. Inflicts #emph[staked]: the vampire can't act or recover while the stake stays in], [Finish it with beheading or fire --- or bargain with it while it's helpless.],
    [#strong[Silver]], [Not a killing method. Wounds from #emph[silvered] weapons can't be recovered until the next full day], [An old custom. No one remembers why it works.],
    [#strong[Crosses, garlic, running water, invitations]], [No physical effect], [Folk practice. Some vampires believe in them anyway (below).],
  )]
  , kind: table
  )

#strong[Believers:] a vampire may carry the weakness tag #emph[believes the old stories], or a specific one (#emph[won't cross running water], #emph[can't bear the cross]). Against that vampire, the folk remedy works as a #strong[compel], not a law of nature: the vampire accepts it (the GM gains 1 Woe) or the GM spends 1 Woe to defy it.

Any personal weakness tag of a vampire can be #strong[upgraded to a killing method] with 3 Power from Discover and Create effects, or a downtime clock (8 segments).

=== 8.2 Currency and Wealth
The setting's currency is the #strong[mark]. The 2d12 System doesn't track coins; use these story tags instead:


#figure(
  [#table(
    columns: (24%, 76%),
    align: (auto,auto,),
    table.header([Wealth tag], [Means],),
    table.hline(),
    [#emph[broke]], [Can't buy anything without a favour or a trade],
    [#emph[a few marks]], [A meal, a night at the inn, a box of bolts],
    [#emph[a fat purse]], [A horse, a gun, a doctor's fee],
    [#emph[a lord's bounty]], [A cyborg horse, an old-world weapon, a farm],
  )]
  , kind: table
  )

=== 8.3 Setting Gear
Weapons and gear use the equipment rules in #emph[Generic Playbooks] §2 (load, gear as tags, armour). These are common across playbooks:


#figure(
  [#table(
    columns: (8%, 32%, 60%),
    align: (auto,auto,auto,),
    table.header([Load], [Item], [Tags],),
    table.hline(),
    [0], [Wooden stake, belt knife, flint striker, water skin], [#emph[stake] (inflicts #emph[staked])],
    [1], [Silver-edged knife or blade], [#emph[silvered]],
    [1], [Charms: garlic bundle, cross, saint's medal], [#emph[steadies the nerves] (+1 Pneuma Edge against fear); works on #emph[believers] only (§8.1)],
    [1], [Steel neck guard], [#emph[Armour 1] against bites only; Bled from bites gains 1 fewer tier],
    [1], [Crossbow and wooden bolts], [#emph[+1 Attack] (range), #emph[bolts are stakes] (#emph[staked] at range, Hard 18)],
    [1], [Revolver or rifle], [#emph[+1 Attack] (range)],
    [2], [Laser rifle (rare, old-world)], [#emph[+1 Attack] (range), #emph[burns through armour], #emph[Escalation];; depletion 1 in d12 (power cell)],
    [1], [Long cloak and wide hat], [+1 Sōma Edge when Resisting Sun-Sick; #emph[+1 Feint] in the dark],
    [1], [Signal mirrors], [By day, create #emph[Sunlit] in a room with a window or opening for one scene (2 Power)],
    [1], [True-light lamp (rare relic)], [Create #emph[False Dawn] for one exchange (2 Power); depletion 1 in d12],
    [1], [Flares], [Light only; ends darkness Truths for one exchange],
    [1], [Transfusion kit], [Needed for transfusion (§6); #emph[+1] on Medicine against Bled],
    [0], [Cyborg horse (vehicle)], [#emph[tireless], #emph[fast as the wind];; not on foot missions. Treat as a story tag when absent],
    [0], [Normal horse or mule (vehicle)], [#emph[sure-footed];; ticks the Grind clock 1 less per leg],
  )]
  , kind: table
  )

#strong[Escalation (Core Rules §9.3).] Each of these gives the GM #strong[+1 Woe], once per scene:

- #strong[Old-world weapons carried openly:] the laser rifle, the #emph[Order Sidearm] (§9.2), any artifact weapon.
- #strong[Hunter's tools carried openly where a vampire rules] (#emph[Their Own House], §13, or a town that serves a household): stakes, silver, crossbows.
- #strong[Actions:] waking an old-world work you don't understand; breaking into a sealed estate room; feeding, or showing afflicted blood, before witnesses.

== 9. Old-World Works
Old-world machines and relics use #strong[Module A --- Cyphers & Artifacts].

=== 9.1 Old-World Cyphers (d12)

#figure(
  [#table(
    columns: (6.06%, 17.17%, 8.08%, 68.69%),
    align: (auto,auto,auto,auto,),
    table.header([d12], [Cypher], [Tier], [Effect],),
    table.hline(),
    [1], [True-light capsule], [4], [Attack (#emph[Sun-Sick] +2) against one vampire; a killing method only against a husk],
    [2], [Blood ampoule], [3], [Restore 3 Sōma; a dhampir also loses 2 Thirst],
    [3], [Mist grenade], [3], [Create #emph[Thick Mist] for a scene],
    [4], [Gravity disc], [4], [Create #emph[Weightless] in a small area, or carry a heavy load as light],
    [5], [Mind-seal patch], [3], [Restore (fear); +1 to Resist intimidation and #emph[Presence] (§14)],
    [6], [Bloodline vial], [2], [A vial of a vampire's blood: opens one door of its bloodline, or quiets one of its guardians for a scene],
    [7], [Holo-ghost], [3], [Create #emph[Decoy] (a false image of yourself) for a scene],
    [8], [Electro-whip charge], [4], [Attack (#emph[stunned]), or +1 Attack in a conflict for one exchange],
    [9], [Healing gel], [3], [Restore (wounds) 3 tiers, divided as you like],
    [10], [Weather pill], [4], [Create a weather Truth (#emph[Sudden Storm], #emph[Clear Skies]) for one scene],
    [11], [Sound blaster], [3], [Attack (#emph[deafened]), Disrupt one Occult effect],
    [12], [Unknown relic], [d6], [The player names a reasonable Effect; the GM sets the form and adds a quirk],
  )]
  , kind: table
  )

=== 9.2 Old-World Artifacts
#strong[The Order of the Last Guns] (working name) was an order of armed charter-enforcers in a neighbouring province, destroyed there in a succession war. The Frontier sees only what it left behind: refugees, claimants and a few of its sidearms, which no one can make any more. Whoever carries one claims to speak for the old enforcing authority.

Old-world artifacts carry the standard quirk #strong[#emph[its owners will want it back]]: it can be compelled for Tychē Points, and the GM may spend 1 Woe to make its old owners, or their heirs, notice it.

#quote(block: true)[
#strong[★ Old-World Longsword] --- #emph[Tags:] old-world steel, +1 Attack (conflict gear). #emph[Ability:] counts as a killing method for beheading; ignores #emph[Armour] on vampires. #emph[Depletion:] none. #emph[Quirk:] its owners will want it back.

#strong[★ Dimension Pocket] --- #emph[Tags:] holds more than it should. #emph[Ability:] carry up to 3 extra load. Once per session, draw out an item you could plausibly have stored (no Momentum cost). #emph[Depletion:] 1 in d12 (it opens somewhere else for a scene). #emph[Quirk:] things inside come out wrong.

#strong[★ Cybernetic Eye] --- #emph[Tags:] sees in the dark, sees heat. #emph[Ability:] once per scene, free Discover about anything in your line of sight. #emph[Depletion:] 1 in d12 (blind in that eye for a scene). #emph[Quirk:] its owners will want it back.

#strong[★ Order Sidearm] --- #emph[Tags:] old-world revolver, +1 Attack (range), recognised on sight, Escalation. #emph[Ability:] ignores #emph[Armour] on vampires. Worn openly, it is a claim to speak for the Order of the Last Guns: a free bonus die on Persuade and Intimidate with people who remember the Order. #emph[Locked:] many fire only for someone registered in the Order's armoury log; for anyone else such a gun is a heavy club. #emph[Depletion:] 1 in d12 (the last proper cartridges are spent until more are found). #emph[Quirk:] its owners will want it back --- and so will every claimant.

#strong[Blood Locket] --- #emph[Tags:] holds a vampire's blood. #emph[Ability:] that bloodline's doors and guardians half-recognise you (+1 die). #emph[Depletion:] 1 in d12 (the blood spoils). #emph[Quirk:] the bloodline's records note every door you open.
]

=== 9.3 The Moving Lights
On a clear night, a few lights cross the sky faster than any star and never twinkle. They are old-world works, left overhead when the old world fell. Most are dead. A few still answer.

- #strong[Under open sky only:] roofs, earth, deep canyons, thick forest and storms (#emph[Sudden Storm]) cut them off.
- #strong[Uses:] the Passenger can reach its bearer through them (#emph[Carries a Passenger]), and a mind sent abroad can ride them (#emph[Sends the Mind Abroad]). Some households keep old instruments that listen to them.
- #strong[Overheard:] anything sent through the moving lights may be heard by whoever is listening.
- #strong[Optional Truth 11] (§2.2, #emph[The lights in the sky still move]): if it is in play, something up there is also watching.

== 10. Bounties, Commissions and Contracts
Most sessions start with a contract. The contract is the party's shared #strong[Goal]. A contract is a #strong[Bounty] (a quarry), a #strong[Commission] (an investigation), an #strong[Escort] or a #strong[Recovery].

=== 10.1 Contract Sheet

#figure(
  [#table(
    columns: (16%, 84%),
    align: (auto,auto,),
    table.header([Element], [Example],),
    table.hline(),
    [#strong[Type]], [Bounty],
    [#strong[Client]], [The town council, on behalf of a farmer whose daughter was fed on],
    [#strong[Quarry]], [Lord Varn, a vampire (rank: Established)],
    [#strong[Proof required]], [His head, his blood ledger, or his signet ring],
    [#strong[Bounty]], [#emph[a lord's bounty] (a Great vampire: two)],
    [#strong[Deadline]], [Before the levy is collected (danger clock, 6 segments)],
    [#strong[Complication]], [Lord Varn insists he hasn't fed in five weeks --- and a rival Hunter crew has the same contract],
  )]
  , kind: table
  )

=== 10.2 Negotiating the Fee
Haggling with a client is a #strong[Negotiation] conflict if it meets the conflict test (Core Rules §10.1); otherwise one Persuade roll vs. Standard 15.

- Each Power above 1 raises the fee by one step (#emph[a fat purse] → #emph[a lord's bounty]), or adds a perk (an advance, a horse, room and board, a share of the estate's salvage).
- A dhampir negotiating with humans faces the Truth #emph[Feared and Despised] (+1 step Difficulty), unless they're already known and trusted. With a vampire household, they may face #emph[Coveted] instead (§13).

=== 10.3 Reputation
A Hunter's reputation is a #strong[power tag] gained at milestones (#emph[the Hunter who burned the Roth estate]). It counts as a tag on Persuade and Intimidate with Frontier folk. A #strong[bad reputation] (#emph[took the money and ran]) is a weakness tag that clients and rivals compel.

=== 10.4 Rival Hunters
Rival crews use the #strong[Faction Turn] rules (Module C.5) with a project clock on the same quarry. If their clock fills first, they claim the bounty, and the party's contract becomes a Disposition fight with the rivals (often a Negotiation or a Chase rather than a Fight).

=== 10.5 Charter-Speech and Binding Instruments
Charters, testaments, compacts and levy agreements bind only if they are written or sworn in #strong[charter-speech]: an archaic legal and liturgical form of the language. Notaries, clergy and record clerks can compose it, and so can some of the Kept. Most people can only recognise it.

- #strong[Reading] an instrument in charter-speech is an Old Lore roll vs. Standard 15. #strong[Composing] one correctly is Old Lore vs. Hard 18, or Standard 15 with a tag such as #emph[fluent in the old pacts].
- #strong[Finding a flaw:] a Discover effect on an instrument (Old Lore or Investigate) can reveal an error in its charter-speech. The flaw becomes a tag, for example #emph[the oath was sworn in the wrong form].
- #strong[Grounds, not a verdict:] a flaw is grounds to challenge the instrument. It does not void it. The challenge is settled by a Negotiation, a Duel of Wills or the politics around it, and the flaw is a tag the challenger can use there. Whoever benefits from the instrument will argue that the error doesn't matter.

=== 10.6 Ill Omens
A crow on the steeple, a stopped clock, a dog that won't cross the threshold. #strong[Once per contract], one player may declare an #strong[Ill Omen] and describe it. The GM gains #strong[2 Woe + 1 per PC] at once; at the end of the scene, #strong[every PC gains 1 Tychē Point] (within the cap, Core Rules §4.1). Reading an omen is an Occult roll, with Power buying Discover as normal. An omen is a warning, not a prophecy.

== 11. Setting Conflict Types
These add to the conflict types in Core Rules §10.4. All use the standard scripting, Disposition and compromise rules.


#figure(
  [#table(
    columns: (31.31%, 18.18%, 14.14%, 12.12%, 10.1%, 14.14%),
    align: (auto,auto,auto,auto,auto,auto,),
    table.header([Type], [Disposition], [Attack], [Defend], [Feint], [Maneuver],),
    table.hline(),
    [#strong[Hunt] (track a vampire or monster to its lair)], [Frontier or Investigate], [Investigate / Frontier], [Will / Endure], [Deceive], [Notice / Stealth],
    [#strong[Siege Until Dawn] (hold a town or camp until morning)], [Old Lore (tactics) or Craft], [Shoot / Fight], [Craft / Endure], [Deceive], [Notice],
    [#strong[Duel of Wills] (an interrogation, an audience, a stare-down with something old and patient)], [Will], [Intimidate / Persuade], [Will], [Deceive], [Empathy],
    [#strong[Estate Assault] (break into a household or old-world facility)], [Science or Stealth], [Science / Fight], [Endure / Athletics], [Stealth], [Old Lore],
    [#strong[Chase] (setting note)], [Ride or Athletics], [Ride / Shoot], [Ride], [Stealth], [Frontier],
  )]
  , kind: table
  )

=== 11.1 Special Rules
- #strong[Hunt:] the winner gets their intent #emph[and] chooses the time of the confrontation (day or night). If the party wins with the quarry's lair found by day, the next scene starts with #strong[Day], and the quarry is shut in, away from the sun.
- #strong[Siege Until Dawn:] run alongside the #strong[Dawn clock] (§4.1). Each exchange ticks it by 1. If the Dawn clock fills before either side hits 0 Disposition, the vampire side must withdraw or face the sun: the defenders win with a compromise based on their remaining Disposition.
- #strong[Duel of Wills:] there is no hypnosis; this is pressure, fear and bargaining. A PC who loses is #strong[Taken Out] of the contest and must follow the vampire's intent for one scene, out of obligation, fear or a bargain struck. A vampire who loses withdraws or reveals something (lose 1 power tag for the session).
- #strong[Estate Assault:] each exchange, the GM may spend 1 Woe to wake a guardian (reinforcement) instead of buying a bonus die. If an estate is taken by day, its vampire's Disposition in the next Fight starts −2.

== 12. The Frontier: Travel and Region Truths
Use #strong[Module B --- The Grind & Travel]. The Frontier is harsh: most Grind clocks are #strong[6];; deserts and old-poisoned lands are #strong[4].

=== 12.1 Frontier Travel Notes
- The Guide rolls #strong[Ride] or #strong[Frontier].
- #strong[Cyborg horses] don't eat or tire: a party with them ignores the first Grind tick each leg. Normal horses need water: Supplies drop by 2 per leg in deserts.
- #strong[Night travel] halves Grind clock size, but every encounter is at Night.

=== 12.2 Frontier Truth Generator (d12)
Use with Module C.3. Roll once per column or pick.


#figure(
  [#table(
    columns: (6.06%, 21.21%, 22.22%, 21.21%, 29.29%),
    align: (auto,auto,auto,auto,auto,),
    table.header([d12], [Terrain / Feature], [Atmosphere], [Hazard], [Secret],),
    table.hline(),
    [1], [Fortified farming town], [Sullen, watching faces], [Townsfolk with torches], [Someone in town is secretly feeding a vampire],
    [2], [Vampire estate on a crag], [Silent music at midnight], [Guardian machines], [The vampire wants to die],
    [3], [Endless desert], [Merciless sun], [Sand creatures under the dunes], [A buried old-world city],
    [4], [Ruined old-world city], [Wind through dead towers], [Radiation pockets], [An old-world weapon],
    [5], [Haunted forest], [Mist that never lifts], [Mutant beasts], [A retainer-clan camp],
    [6], [Trading post and saloon], [Whiskey and fear], [Rival Hunters], [A household's spy runs the bar],
    [7], [Swamp of failed experiments], [Wet, rotting heat], [Bioweapon remnants], [A creature that can speak],
    [8], [Abandoned treatment works], [Lights still on], [Automated defences], [Records of the original treatment, maybe],
    [9], [Dry riverbed and canyon], [Dust storms], [Bandits on cyborg horses], [A water source someone poisoned],
    [10], [Mountain pass], [Biting cold], [Avalanche], [A monk who remembers the founding],
    [11], [Weather-control tower], [Storms that come out of nowhere], [Lightning], [The tower still answers orders],
    [12], [Graveyard of Hunters], [Unnatural stillness], [A husk among the graves], [A famous Hunter didn't die here],
  )]
  , kind: table
  )

== 13. Scene Truths
Pick 1--3 for each scene, in addition to the #strong[time Truth] (§4).


#figure(
  [#table(
    columns: (20%, 80%),
    align: (auto,auto,),
    table.header([Truth], [Typical effect],),
    table.hline(),
    [#emph[Moonlit]], [Stealth is harder for everyone; vampires and dhampirs see clearly],
    [#emph[Moonless]], [+1 step Difficulty to Notice; vampires and dhampirs ignore it],
    [#emph[Merciless Sun]], [Sun-Sick +2 per scene for dhampirs, +3 for vampires (§7.1)],
    [#emph[Overcast]], [Sun-Sick +1 per scene for vampires; none for dhampirs],
    [#emph[Sunlit]], [Direct sun indoors (mirrors, a broken roof): Sun-Sick +1 per exchange],
    [#emph[Warded Village]], [The townsfolk believe they're safe. Believers (§8.1) won't cross without defying a compel; everyone else finds the townsfolk armed and watching (+1 step Difficulty to Stealth)],
    [#emph[Custom of Invitation]], [Entering a home uninvited breaks local custom: if seen, the scene gains #emph[Hostile Crowd]. Believers must defy a compel],
    [#emph[Their Own House]], [Inside a place that answers to the vampire's bloodline: its Woe spends cost 1 less (minimum 1)],
    [#emph[Frightened Villagers]], [+1 step Difficulty to Persuade; failures may start a mob],
    [#emph[Feared and Despised]], [Dhampirs and mutants: +1 step Difficulty to all social rolls with humans],
    [#emph[Coveted]], [A dhampir among a vampire household: social rolls are one step easier, but every success puts them further in the household's debt],
    [#emph[Thick Mist]], [+1 step Difficulty to Shoot and Notice],
    [#emph[Guardian Machines]], [A danger clock of 4: when it fills, the guardians attack],
    [#emph[Blood on the Air]], [Thirst +1 for dhampirs; a vampire at Blood Debt 3+ must act on it or take −1],
    [#emph[False Dawn]], [True-light lamps: vampires gain Sun-Sick +1 per exchange, can't recover, and take −1 on all rolls (lasts one exchange or scene)],
    [#emph[Dust Storm]], [+1 step Difficulty to Ride, Shoot and Notice],
    [#emph[Hostile Crowd]], [Standard Truth: social rolls harder, violence draws a mob],
  )]
  , kind: table
  )

Any of these can be #strong[rank 2] when the fiction is severe (#emph[Dust Storm 2] in a full blow, #emph[Thick Mist 2] in the river bottoms; Core Rules §8).

== 14. Woe Spends: Vampires
Use with Core Rules §9.2.


#figure(
  [#table(
    columns: (15%, 8%, 77%),
    align: (auto,auto,auto,),
    table.header([GM spend], [Cost], [Effect],),
    table.hline(),
    [#strong[Presence]], [1], [A PC facing the vampire takes #emph[shaken-2] (Resist with Pneuma). Start a Duel of Wills if it matters],
    [#strong[Summon the Household]], [1], [A retainer, donor or dependant arrives and obeys --- out of loyalty, debt, love or fear],
    [#strong[The Old Door]], [2], [The vampire leaves through a way only its bloodline can open, or a passage nobody knew was there],
    [#strong[Kennel and Guardians]], [2], [Trained animals, mutant creatures or old-world guardians that answer to it arrive as a minion group],
    [#strong[Uncanny Speed]], [1], [The vampire acts first or changes its scripted action for 1 Woe (instead of 3). Not at Blood Debt 4+],
    [#strong[The House Answers]], [3], [Requires #emph[Their Own House]. Create a facility Truth (#emph[Shifting Halls], #emph[Sealed Doors], #emph[Lights Fail], #emph[Gravity Fails])],
    [#strong[Blood Reserve]], [3], [Once per session, if blood is at hand (stored, a donor, a victim), a #emph[broken] vampire feeds and recovers 2 tiers of physical status. It leaves evidence],
    [#strong[Weather Turns]], [2], [Create a weather Truth for the scene; requires old weather works nearby],
    [#strong[Retainer]], [3], [A significant retainer or ally arrives],
  )]
  , kind: table
  )

== 15. Design Notes
- #strong[Hard to Kill (§5.2)] keeps the two-stage fight --- wear it down, then a killing strike --- but ties recovery to blood. Wounding a vampire makes it hungrier, and a hungry vampire is a different problem. Watch how long this makes fights; if too long, allow the killing strike as part of the final Attack instead of a separate roll.
- #strong[The Bled and the Thirst] are both statuses, so the existing Restore, Resist and compel rules work on them. Bled is plain blood loss; its tier 6 is death, with one ominous exception.
- #strong[Day and night] no longer switch vampires on and off. Sunlight is a cost, not a cage; the daytime advantage comes from finding where a vampire is and getting light in.
- #strong[Folklore] works through belief, not physics. The #emph[believer] rule lets old remedies matter at the table without becoming true.
- #strong[Sunlight Syndrome] still limits dhampirs by day, when the rest of the party is strongest. That trade is the core of the dhampir's role.
- #strong[Science vs. Occult:] keep the line blurred on purpose. The guideline in §3 stops arguments without forcing a fixed answer.
- #strong[Contracts as Goals] give the party a shared Goal each session, and personal Goals sit inside it.
- #strong[The returned (§5.6)] are NPCs only. They give failed makings a face and a body of evidence without adding a second dhampir option.
- #strong[Charter-speech (§10.5)] gives Old Lore a political edge: a flawed oath opens a dispute rather than ending one.

// =====================================================================
//  CHAPTER — FRONTIER DESCRIPTORS
// =====================================================================
#chapter("Frontier Descriptors", [Twenty adjectives for people hardened by the Frontier: the Bitten, the Coveted, the Frontier-Hard, the Vengeful. Each comes with a Frontier hook, one question about your past that often becomes your first Belief.], epigraph: [The adjective of the character sentence.])

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

Each entry also has a #strong[Frontier hook];: one question to answer at character creation. The answer often becomes your first Belief or a relationship.

=== 1.1 Hidden Truths
Some Frontier pasts are better kept quiet: marks on a throat, a mother nobody named, years served in a household. At creation, you may mark #strong[one] tag from your Descriptor, Focus or playbook as a #strong[Hidden Truth];, agreed privately with the GM.

- #strong[While it's hidden:] #strong[+1 Refresh];. This doesn't count toward the advancement Refresh limit (Core Rules §12.2). The tag gives no bonus and can't be invoked or compelled. If you use an ability tied to it where others can see, the GM may treat that as revealing it.
- #strong[Revealing it:] reveal it yourself in a scene where it matters. You lose the +1 Refresh, #strong[gain 1 Tychē Point] at once, and the tag works normally from then on.
- #strong[Forced into the open:] another character can uncover it with a Discover effect, or the GM can spend #strong[2 Woe] to reveal it at a dramatic moment. You still gain the Tychē Point.
- #strong[Good candidates:] #emph[Bitten], #emph[Coveted] and #emph[Doomed] (Descriptors); #emph[Carries Her Mother's Blood] with an unknown mother, #emph[Was Kept and Got Out] and #emph[Once Served a Household] (Focuses).

== 2. Quick Reference
#figure(
  [#table(
    columns: (5%, 17%, 11%, 33%, 34%),
    align: (auto,auto,auto,auto,auto,),
    table.header([\#], [Descriptor], [Pool], [Power tag], [Weakness tag],),
    table.hline(),
    [1], [Bitten], [Pneuma], [#emph[I\'ve been bled and lived];], [#emph[marks on my throat];],
    [2], [Bitter], [Psychē], [#emph[expects the worst];], [#emph[trusts no one];],
    [3], [City-Born], [Psychē], [#emph[educated in the city];], [#emph[soft hands];],
    [4], [Charming], [Pneuma], [#emph[a smile that opens doors];], [#emph[can\'t resist a pretty face];],
    [5], [Cold], [Pneuma], [#emph[nothing shows on my face];], [#emph[pushes people away];],
    [6], [Coveted], [Pneuma], [#emph[beauty the vampires notice];], [#emph[the Kept want me];],
    [7], [Cunning], [Psychē], [#emph[always a second plan];], [#emph[too clever by half];],
    [8], [Devout], [Pneuma], [#emph[faith the dark can feel];], [#emph[won\'t break my vows];],
    [9], [Doomed], [Pneuma], [#emph[nothing left to lose];], [#emph[death rides beside me];],
    [10], [Feral], [Akmē], [#emph[senses of a beast];], [#emph[forgets my manners];],
    [11], [Frontier-Hard], [Sōma], [#emph[grew up on the Frontier];], [#emph[slow to trust strangers];],
    [12], [Gentle], [Pneuma], [#emph[people open up to me];], [#emph[can\'t kill without cause];],
    [13], [Greedy], [Psychē], [#emph[knows what everything\'s worth];], [#emph[a price for everything];],
    [14], [Hollow-Eyed], [Psychē], [#emph[seen too much to scare];], [#emph[nightmares every night];],
    [15], [Mutated], [Sōma], [#emph[body of the wastes];], [#emph[they call me monster];],
    [16], [Reckless], [Akmē], [#emph[first through the door];], [#emph[doesn\'t wait];],
    [17], [Scarred], [Sōma], [#emph[survived worse than this];], [#emph[old wounds ache];],
    [18], [Silent], [Akmē], [#emph[says nothing, sees everything];], [#emph[people don\'t know where they stand];],
    [19], [Superstitious], [Psychē], [#emph[knows every folk charm];], [#emph[jumps at shadows];],
    [20], [Vengeful], [Sōma], [#emph[I don\'t forget];], [#emph[will drop anything for revenge];],
  )]
  , kind: table
  )
#columns(2, gutter: 6mm)[
== 3. Descriptors
=== 1. Bitten
#quote(block: true)[
A vampire drank from you once and let you live. The marks never faded.
]

- #strong[Pool:] +2 Pneuma
- #strong[Power tag:] #emph[I\'ve been bled and lived]
- #strong[Weakness tag:] #emph[marks on my throat]
- #strong[Suggested Instinct:] \"Always keep my collar buttoned.\"
- #strong[Frontier hook:] Which vampire bit you, and why did it stop?

=== 2. Bitter
#quote(block: true)[
The Frontier taught you that hope is how people get killed.
]

- #strong[Pool:] +2 Psychē
- #strong[Power tag:] #emph[expects the worst]
- #strong[Weakness tag:] #emph[trusts no one]
- #strong[Suggested Instinct:] \"Always ask who benefits.\"
- #strong[Frontier hook:] Who betrayed you, and do they still live?

=== 3. City-Born
#quote(block: true)[
You grew up behind the city\'s walls, with books, machines, and safety. The Frontier is a different world.
]

- #strong[Pool:] +2 Psychē
- #strong[Power tag:] #emph[educated in the city]
- #strong[Weakness tag:] #emph[soft hands]
- #strong[Suggested Instinct:] \"Always look for the scientific explanation first.\"
- #strong[Frontier hook:] Why did you leave the city, and can you ever go back?

=== 4. Charming
#quote(block: true)[
People like you. Even the ones who shouldn\'t.
]

- #strong[Pool:] +2 Pneuma
- #strong[Power tag:] #emph[a smile that opens doors]
- #strong[Weakness tag:] #emph[can\'t resist a pretty face]
- #strong[Suggested Instinct:] \"Always buy the first round.\"
- #strong[Frontier hook:] Who in the last town is still waiting for you to come back?

=== 5. Cold
#quote(block: true)[
You learned to feel nothing. It keeps you alive.
]

- #strong[Pool:] +2 Pneuma
- #strong[Power tag:] #emph[nothing shows on my face]
- #strong[Weakness tag:] #emph[pushes people away]
- #strong[Suggested Instinct:] \"Never say goodbye.\"
- #strong[Frontier hook:] What was the last thing that made you weep?

=== 6. Coveted
#quote(block: true)[
You have the kind of beauty the Kept collect: as brides, as servants, as trophies.
]

- #strong[Pool:] +2 Pneuma
- #strong[Power tag:] #emph[beauty the vampires notice]
- #strong[Weakness tag:] #emph[the Kept want me]
- #strong[Suggested Instinct:] \"Always cover my face when I travel at night.\"
- #strong[Frontier hook:] Which vampire household has already sent for you?

=== 7. Cunning
#quote(block: true)[
You win by thinking. Fights are for people who planned badly.
]

- #strong[Pool:] +2 Psychē
- #strong[Power tag:] #emph[always a second plan]
- #strong[Weakness tag:] #emph[too clever by half]
- #strong[Suggested Instinct:] \"Always know the way out before I go in.\"
- #strong[Frontier hook:] What scheme of yours went wrong, and who paid for it?

=== 8. Devout
#quote(block: true)[
The old faith is nearly gone, but you still keep it. Crosses don\'t burn anyone, but the rites still matter.
]

- #strong[Pool:] +2 Pneuma
- #strong[Power tag:] #emph[faith the dark can feel]
- #strong[Weakness tag:] #emph[won\'t break my vows]
- #strong[Suggested Instinct:] \"Always pray before a hunt.\"
- #strong[Frontier hook:] What vow did you make, and who did you make it to?

=== 9. Doomed
#quote(block: true)[
A seer, a vampire, or a doctor told you how you\'ll die. You believe them.
]

- #strong[Pool:] +2 Pneuma
- #strong[Power tag:] #emph[nothing left to lose]
- #strong[Weakness tag:] #emph[death rides beside me]
- #strong[Suggested Instinct:] \"Always volunteer for the worst job.\"
- #strong[Frontier hook:] How will you die, and what must you finish first?

=== 10. Feral
#quote(block: true)[
Raised in the wastes, by animals, mutants, or no one at all.
]

- #strong[Pool:] +2 Akmē
- #strong[Power tag:] #emph[senses of a beast]
- #strong[Weakness tag:] #emph[forgets my manners]
- #strong[Suggested Instinct:] \"Always sleep with my back to a wall.\"
- #strong[Frontier hook:] What raised you, and is it still out there?

=== 11. Frontier-Hard
#quote(block: true)[
Born in a fortified village and raised on dust, chores, and sunset curfews.
]

- #strong[Pool:] +2 Sōma
- #strong[Power tag:] #emph[grew up on the Frontier]
- #strong[Weakness tag:] #emph[slow to trust strangers]
- #strong[Suggested Instinct:] \"Always bar the door at sunset.\"
- #strong[Frontier hook:] What happened to your home village?

=== 12. Gentle
#quote(block: true)[
Kindness is rare on the Frontier. You haven\'t lost yours, yet.
]

- #strong[Pool:] +2 Pneuma
- #strong[Power tag:] #emph[people open up to me]
- #strong[Weakness tag:] #emph[can\'t kill without cause]
- #strong[Suggested Instinct:] \"Always offer the enemy a chance to surrender.\"
- #strong[Frontier hook:] Who did you spare, and did they deserve it?

=== 13. Greedy
#quote(block: true)[
Hunting is a job. Jobs pay. Better jobs pay more.
]

- #strong[Pool:] +2 Psychē
- #strong[Power tag:] #emph[knows what everything\'s worth]
- #strong[Weakness tag:] #emph[a price for everything]
- #strong[Suggested Instinct:] \"Always search the bodies.\"
- #strong[Frontier hook:] What are you saving up for?

=== 14. Hollow-Eyed
#quote(block: true)[
You\'ve seen what vampires do in their estates. Nothing frightens you anymore, not even in your sleep.
]

- #strong[Pool:] +2 Psychē
- #strong[Power tag:] #emph[seen too much to scare]
- #strong[Weakness tag:] #emph[nightmares every night]
- #strong[Suggested Instinct:] \"Always stay awake on the first watch.\"
- #strong[Frontier hook:] What did you see in the estate?

=== 15. Mutated
#quote(block: true)[
The old wars and the old-world experiments left their mark on your bloodline: scales, extra senses, a too-long arm, eyes that glow.
]

- #strong[Pool:] +2 Sōma
- #strong[Power tag:] #emph[body of the wastes]
- #strong[Weakness tag:] #emph[they call me monster]
- #strong[Suggested Instinct:] \"Always wear the hood in town.\"
- #strong[Frontier hook:] What is your mutation, and who first called you monster?

=== 16. Reckless
#quote(block: true)[
Waiting gets people killed too. You\'d rather it be on your terms.
]

- #strong[Pool:] +2 Akmē
- #strong[Power tag:] #emph[first through the door]
- #strong[Weakness tag:] #emph[doesn\'t wait]
- #strong[Suggested Instinct:] \"Always charge when they hesitate.\"
- #strong[Frontier hook:] Who died because you didn\'t wait?

=== 17. Scarred
#quote(block: true)[
Claw marks, burns, a missing finger. Every one is a story and a lesson.
]

- #strong[Pool:] +2 Sōma
- #strong[Power tag:] #emph[survived worse than this]
- #strong[Weakness tag:] #emph[old wounds ache]
- #strong[Suggested Instinct:] \"Always check the wound before the pain.\"
- #strong[Frontier hook:] Which scar do you never talk about?

=== 18. Silent
#quote(block: true)[
You speak rarely. People fill the silence with the truth.
]

- #strong[Pool:] +2 Akmē
- #strong[Power tag:] #emph[says nothing, sees everything]
- #strong[Weakness tag:] #emph[people don\'t know where they stand]
- #strong[Suggested Instinct:] \"Always listen before I speak.\"
- #strong[Frontier hook:] Why did you stop talking?

=== 19. Superstitious
#quote(block: true)[
Garlic in your pockets, salt across the doorway, a charm for every danger. Some of them even work.
]

- #strong[Pool:] +2 Psychē
- #strong[Power tag:] #emph[knows every folk charm]
- #strong[Weakness tag:] #emph[jumps at shadows]
- #strong[Suggested Instinct:] \"Always follow the old rules: no whistling after dark, no mirrors covered.\"
- #strong[Frontier hook:] Which charm saved your life, and who taught it to you?

=== 20. Vengeful
#quote(block: true)[
Someone took everything from you. You\'ll take it back, in blood.
]

- #strong[Pool:] +2 Sōma
- #strong[Power tag:] #emph[I don\'t forget]
- #strong[Weakness tag:] #emph[will drop anything for revenge]
- #strong[Suggested Instinct:] \"Always ask strangers about the one I\'m hunting.\"
- #strong[Frontier hook:] Who are you hunting, and what did they take?

== 4. Sample Sentences
- \"I am a #strong[Bitten] #strong[Frontier Doctor] who #strong[Heals the Bled];.\"
- \"I am a #strong[Cold] #strong[Sellsword] who #strong[Carries Her Mother\'s Blood];.\"
- \"I am a #strong[Greedy] #strong[Broker] who #strong[Collects the Bounty];.\"
- \"I am a #strong[Feral] #strong[Mutant] who #strong[Hunts the Beasts of the Frontier];.\"
- \"I am a #strong[Vengeful] #strong[Cyborg Hunter] who #strong[Seeks Revenge on a Vampire];.\"
- \"I am a #strong[Superstitious] #strong[Warden] who #strong[Holds the Line Until Dawn];.\"
- \"I am a #strong[Coveted] #strong[Occultist] who #strong[Loves What It Should Hate];.\"
]
  
// =====================================================================
//  CHAPTER — FRONTIER PLAYBOOKS
// =====================================================================
#chapter("Frontier Playbooks", [Nine ways to earn a living hunting the things that hunt humanity. Six reskin the generic playbooks; the Mutant, the Cyborg Hunter and the Warden are new to the Frontier.], epigraph: [Sellsword · Stalker · Frontier Doctor · Broker · Rider · Occultist · Mutant · Cyborg Hunter · Warden])

== Playbook Overview
#figure(
  [#table(
    columns: (4.95%, 13.86%, 10.89%, 12.87%, 22.77%, 34.65%),
    align: (auto,auto,auto,auto,auto,auto,),
    table.header([\#], [Playbook], [Reskin of], [Anchor], [Base pools (Sōm / Akm / Psy / Pne)], [Role],),
    table.hline(),
    [1], [Sellsword], [Bellator], [Fight or Brawl], [12 / 10 / 6 / 8], [Front-line Hunter, bodyguard, stake-driver],
    [2], [Stalker], [Furcifer], [Stealth], [8 / 12 / 8 / 8], [Estate thief, assassin, day-hunter of sleeping vampires],
    [3], [Frontier Doctor], [Savant], [Medicine or Old Lore], [7 / 8 / 13 / 8], [Healer, scholar, treats the bled],
    [4], [Broker], [Interlocutor], [Persuade], [7 / 9 / 9 / 11], [Bounty broker, gambler, village elder, negotiator],
    [5], [Rider], [Explorator], [Frontier], [11 / 11 / 7 / 7], [Tracker, scout, marksman, horse-master],
    [6], [Occultist], [Adept], [Occult or Science], [7 / 8 / 9 / 12], [Psychic, curse-witch, old-world scavenger],
    [7], [Mutant], [New], [Athletics or Stealth], [11 / 11 / 6 / 8], [Monster-blooded fighter and infiltrator],
    [8], [Cyborg Hunter], [New], [Shoot or Fight], [12 / 9 / 9 / 6], [Rebuilt killer with implants],
    [9], [Warden], [New], [Craft], [10 / 9 / 9 / 8], [Village defender, trap-maker, siege leader],
  )]
  , kind: table
  )

#strong[Dhampirs] are not a playbook. Any playbook can take the Focus #emph[Carries Her Mother\'s Blood] (#emph[Frontier Focuses];).

#strong[Skill names] follow #emph[Frontier Rules] §3 (Ride, Frontier, Old Lore, Science, Occult).

#pagebreak()
== 1. Sellsword
#playbook-art-side("01-sellsword.jpg", "Sellsword playbook character art", dir: "art/playbooks/")[
#quote(block: true)[
Muscle for hire. You stand between the village and the thing coming out of the dark, and you hold the stake when it\'s time.
]

#figure(
  [#table(
    columns: (27%, 73%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Akm / Psy / Pne)];], [12 / 10 / 6 / 8],
    [#strong[Edge];], [Sōma 2, plus 1 in Akmē or Pneuma],
    [#strong[Anchor skill];], [Fight or Brawl],
    [#strong[Suggested skills];], [+4 Fight · +3 Athletics, Endure · +2 Brawl, Intimidate, Shoot · +1 Notice, Will, Frontier, Ride],
    [#strong[XP trigger];], [Address a challenge with force or threats],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2):] #emph[built like a wall] · #emph[veteran of a dozen hunts] · #emph[scarred and unbothered] · #emph[iron grip] · #emph[knows how a fight will go] · #emph[the look that empties a saloon]
]

=== 1.1 Special Abilities
#figure(
  [#table(
    columns: (5%, 20%, 75%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Juggernaut];], [When you Resist physical harm with Sōma, reduce the status by #strong[3 tiers] instead of 2.],
    [2], [#strong[Stake Driver];], [When you make a #strong[killing strike] (Frontier Rules §5.2) or drive a stake with Fight or Brawl, gain a #strong[free bonus die];. On a success, the vampire can\'t spend Woe on #emph[Blood Reserve] this session.],
    [3], [#strong[Bodyguard];], [When an ally within reach would suffer a consequence, you may take it instead. If you Resist it, your Edge counts as 1 higher for that roll. This includes a vampire\'s bite: you can take the bite (Bled) in their place.],
    [4], [#strong[Wade Through Them];], [When you attack a group or minions (wolves, retainer packs, mobs), you get #strong[one free Extra Feat] per roll.],
    [5], [#strong[Menacing];], [You may use #strong[Sōma] for Intimidate Effort and Resistance. When you succeed on Intimidate against minions or a mob, spend 1 Momentum to make them flee, surrender, or freeze.],
    [6], [#strong[Pain Tolerance];], [Ignore the roll penalty from harmful physical statuses of tier 1--2. At tier 3+, the penalty is reduced by 1. This also applies to #emph[Sun-Sick];.],
    [7], [#strong[★ Blood Fury];], [Once per scene, enter a fury: you get #strong[+1 bonus die] (free) on Fight, Brawl, and Athletics rolls for the rest of the scene. You can\'t script Defend or retreat. At scene end, lose 2 Sōma or take #emph[Weary];. If you have afflicted blood, gain +1 Thirst.],
    [8], [#strong[★ Last One Standing];], [Once per scene, when a status would reach tier 6 on you, keep acting until the end of the scene. Then you\'re Taken Out as normal.],
    [◆], [#strong[A Name the Kept Know];], [Your reputation is a #strong[Campaign Truth] (#emph[\"Vampires have heard of \[name\]\"];). In Fight conflicts, vampire and retainer Disposition starts #strong[−2];. Once per session, a vampire\'s pride compel against you costs nothing.],
  )]
  , kind: table
  )
#pagebreak()
=== 1.2 Starting Equipment
#strong[Signature weapon (choose 1)]

#figure(
  [#table(
    columns: (11%, 89%),
    align: (auto,auto,),
    table.header([Option], [Item],),
    table.hline(),
    [#strong[A];], [#strong[Longsword & stake belt] (2) --- #emph[+1 Attack];, #emph[stakes always at hand] (you never need to declare a stake as load)],
    [#strong[B];], [#strong[Great-axe] (2) --- #emph[+1 Attack];, #emph[heavy enough to behead];: counts as beheading (a killing method) against a vampire with a tier-4+ physical status],
  )]
  , kind: table
  )

#strong[Playbook kit (declare during play)]

#figure(
  [#table(
    columns: (8%, 92%),
    align: (auto,auto,),
    table.header([Load], [Item],),
    table.hline(),
    [1], [Leather and mail coat (light armour)],
    [2], [Plate cuirass and gorget (heavy armour; also counts as a steel neck guard)],
    [1], [Throwing stakes ×3 --- #emph[+1 Attack] (range), #emph[staked] at Hard 18],
    [1], [Chain and manacles],
    [1], [Whetstone and oil],
    [1], [Flask of Frontier whiskey],
  )]
  , kind: table
  )

#strong[Always carried (0):] wooden stake, knuckle-wraps, a trophy from your first kill.

=== 1.3 BIG Examples
- #strong[Belief:] \"A village that pays me gets my blood, not just my blade.\" / \"Vampires are only as strong as the fear they feed on.\"
- #strong[Goal:] \"Get the farmer\'s family to the next town by sunset.\" / \"Drive a stake into Count Varnas.\"
- #strong[Instinct:] \"Always stand between my friends and the door.\" / \"Never let a vampire finish its speech.\"

#strong[Relationships:] Ally --- a blacksmith who makes your stakes, an old hunting partner, a saloon keeper who gives you credit. Rival --- a rival Hunter who stole your last bounty, a retainer who beat you once, a sheriff who wants you gone.


#pagebreak(weak: true)
== 2. Stalker
#playbook-art-side("02-stalker.jpg", "Stalker playbook character art", dir: "art/playbooks/")[
#quote(block: true)[
You hunt by day. While the vampire sleeps, you climb the estate walls, pick the locks, find the coffin, and open it.
]

#figure(
  [#table(
    columns: (25%, 75%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Akm / Psy / Pne)];], [8 / 12 / 8 / 8],
    [#strong[Edge];], [Akmē 2, plus 1 in Psychē or Sōma],
    [#strong[Anchor skill];], [Stealth],
    [#strong[Suggested skills];], [+4 Stealth · +3 Notice, Craft · +2 Athletics, Deceive, Shoot · +1 Fight, Science, Investigate, Old Lore],
    [#strong[XP trigger];], [Address a challenge with stealth or precision],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2):] #emph[light on my feet] · #emph[eyes in the back of my head] · #emph[steady hands] · #emph[knows estate layouts] · #emph[forgettable face] · #emph[patient as a stone]
]

=== 2.1 Special Abilities
#figure(
  [#table(
    columns: (5%, 20%, 75%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Ghost];], [When you spend Effort on a Stealth roll, your first use of Effort costs 0 pool points. Once per scene, when spotted, spend 1 Momentum to declare you were never seen; you\'re in a nearby hidden position.],
    [2], [#strong[Coffin Finder];], [Once per day inside an estate, ruin, or lair, ask a free #strong[Discover];: \"Where does it sleep?\" or \"Where\'s the weak point in this place?\"],
    [3], [#strong[Light Fingers];], [When you succeed on a theft, plant, or sabotage roll (Stealth or Craft), gain a #strong[free Extra Feat];.],
    [4], [#strong[Infiltrator];], [Once per roll, ignore one Truth that would raise the Difficulty of sneaking, climbing, or bypassing security, including estate Truths such as #emph[Guardian Machines] or #emph[Shifting Halls];.],
    [5], [#strong[Quick Reflexes];], [You always act first when violence breaks out. In conflicts, changing one of your scripted actions costs #strong[1 Momentum] instead of 2.],
    [6], [#strong[Escape Artist];], [When you Resist capture, restraint, falls, or traps with Akmē, the cost is #strong[0 on a highest die of 5+];.],
    [7], [#strong[★ Flashback];], [Once per mission, declare a flashback to something you prepared earlier. Pay Momentum by plausibility: 0 (obvious), 1 (reasonable), 2 (a stretch), 3 (wild). Then roll as normal; on a success, it happened.],
    [8], [#strong[★ Strike While It Sleeps];], [Against an unaware, #emph[Impeded];, or sleeping target, Attack effects cost #strong[half Power (round up)];. A killing strike against a sleeping vampire is #strong[Standard 15] instead of Hard 18.],
    [◆], [#strong[Nobody Sees Me Coming];], [Once per session, declare you\'re already somewhere you could plausibly have reached. Your first roll there gets #strong[+2 bonus dice for free];, and the GM can\'t spend Woe to reveal you during that roll.],
  )]
  , kind: table
  )
#pagebreak()
=== 2.2 Starting Equipment
#strong[Signature item (choose 1)]

#figure(
  [#table(
    columns: (11%, 89%),
    align: (auto,auto,),
    table.header([Option], [Item],),
    table.hline(),
    [#strong[A];], [#strong[Wooden throwing needles] (1) --- #emph[+1 Attack] (range), #emph[silent];, #emph[staked] at Hard 18],
    [#strong[B];], [#strong[Grapple-line gauntlet] (1) --- #emph[+1 Maneuver];, #emph[climbs any wall];; Advance a climbing or entry clock +1 per roll],
  )]
  , kind: table
  )

#strong[Playbook kit (declare during play)]

#figure(
  [#table(
    columns: (8%, 92%),
    align: (auto,auto,),
    table.header([Load], [Item],),
    table.hline(),
    [1], [Padded dark jacket (light armour)],
    [1], [Lockpicks and an old-world key-probe --- #emph[opens what\'s closed];, works on old-world locks at +1 step Difficulty],
    [1], [Long knives and garrotte --- #emph[+1 Attack];, #emph[+1 Feint];],
    [1], [Smoke pellets ×2 --- #emph[+1 Feint];, Create #emph[Thick Mist] (1 Power)],
    [1], [Climbing spikes and silk rope (15 m)],
    [1], [Hooded lantern and mirror shard --- by day, throws sunlight into a dark room (#emph[Sunlit] for one exchange)],
  )]
  , kind: table
  )

#strong[Always carried (0):] wooden stake, soft-soled boots, a lucky coin.

=== 2.3 BIG Examples
- #strong[Belief:] \"A vampire asleep is as mortal as anyone.\" / \"Take what they stole, and leave nothing behind.\"
- #strong[Goal:] \"Find the Countess\'s coffin before dusk.\" / \"Steal the key-crystal from the estate vault.\"
- #strong[Instinct:] \"Always find three ways out.\" / \"Never be in the estate when the sun sets.\"

#strong[Relationships:] Ally --- a fence at the trading post, an estate servant who leaves the gate open, a mentor who taught you the walls. Rival --- a guardian machine you\'ve escaped twice, a thief who works for the vampires, a Hunter who thinks stealth is cowardice.

=== 2.4 Handout --- The Hunters' Field Guide
Hunters pass these notes from hand to hand. Give them to players as found knowledge. The guide is right about what hunters saw. Its explanations are another matter. The GM measures a vampire by threat rank (Frontier Rules §5.1), not by these classes.

#sidebar("The Kinds of the Kept, as Hunters Tell It")[
#strong[Winterers.] The oldest and the worst. They go to ground for a generation and wake hungry enough to empty a village. Cunning, patient, and they know every family in the valley. #emph[Hunters say:] the old ones sleep by choice, to outlast their enemies. Find the sleeping place and burn it.

#strong[Strays.] Newly made, and it shows: clumsy, greedy, careless with their kills. They seldom last more than a few years. #emph[Hunters say:] the blood thins with every making, and a made one is a weak copy of its maker. Kill them young and you'll have little trouble.

#strong[Tapsters.] They take a little and leave you living, the way a tapster draws from a cask. Their donors wake dazed and remember nothing, and many go back willingly. They rarely kill. #emph[Hunters say:] their bite carries a sleeping venom. Never let one near your neck, and never trust a town that seems glad of them.
]


#pagebreak(weak: true)
== 3. Frontier Doctor
#playbook-art-side("03-frontier-doctor.jpg", "Frontier Doctor playbook character art", dir: "art/playbooks/")[
#quote(block: true)[
The only doctor for a hundred kilometres. You sew up Hunters, deliver babies, and know more about blood than anyone wants to.
]

#figure(
  [#table(
    columns: (25%, 75%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Akm / Psy / Pne)];], [7 / 8 / 13 / 8],
    [#strong[Edge];], [Psychē 2, plus 1 in Pneuma or Akmē],
    [#strong[Anchor skill];], [Medicine or Old Lore],
    [#strong[Suggested skills];], [+4 Medicine · +3 Old Lore, Investigate · +2 Notice, Science, Empathy · +1 Will, Shoot, Ride, Persuade],
    [#strong[XP trigger];], [Address a challenge with knowledge, insight, or healing],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2):] #emph[steady surgeon\'s hands] · #emph[seen every wound there is] · #emph[reads old books] · #emph[the village trusts me] · #emph[knows blood] · #emph[calm in a crisis]
]

=== 3.1 Special Abilities
#figure(
  [#table(
    columns: (5%, 20%, 75%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Field Surgeon];], [Restore effects from your Medicine rolls remove #strong[2 tiers per Power];. (One cost reduction per Effect.)],
    [2], [#strong[Treat the Bled];], [Your Medicine rolls against #emph[Bled] are #strong[Standard 15] instead of Hard 18, you can treat once per scene instead of once per day, and you can give a transfusion without a kit.],
    [3], [#strong[Read the Body];], [When you examine a victim, a corpse, or a slain creature, ask #strong[2 free Discover] questions about what did it and how.],
    [4], [#strong[Anatomy of Monsters];], [When you tell an ally a creature\'s weak point (a Discover you made this scene), that ally\'s next successful Attack on it gains #strong[+1 Power];.],
    [5], [#strong[Chemist];], [In the Players\' Turn, spend 1 Check to make one cypher from: #emph[healing gel] (tier 2), #emph[mind-seal patch] (tier 2), #emph[blood ampoule] (tier 2), or #emph[iron tonic] (tier 2: Restore #emph[Bled] by 1 tier).],
    [6], [#strong[Bedside Manner];], [Use Medicine or Empathy to Restore fear and despair statuses. Once per scene, a successful roll removes #emph[Frightened Villagers] from the scene.],
    [7], [#strong[★ Not on My Table];], [Once per session, when an ally is Taken Out by physical harm, they don\'t die: they\'re stabilised at tier 5, and wake after a short rest.],
    [8], [#strong[★ Serum];], [With a sample of a specific vampire\'s blood, run a downtime clock (6 segments). When it fills, you turn one of its weakness tags into a #strong[killing method] (Frontier Rules §8.1), and the party\'s Attacks against it inflict #strong[+1 tier];.],
    [◆], [#strong[The Blood Bank];], [You run a reliable blood exchange. Transfusions you oversee need no roll, and once per session you can supply half a litre of blood to anyone who needs it. This becomes a #strong[Region Truth] (#emph[\"The doctor keeps blood\"];), and vampire households will send for you, or send against you.],
  )]
  , kind: table
  )
#pagebreak()
=== 3.2 Starting Equipment
#strong[Signature item (choose 1)]

#figure(
  [#table(
    columns: (11%, 89%),
    align: (auto,auto,),
    table.header([Option], [Item],),
    table.hline(),
    [#strong[A];], [#strong[Doctor\'s bag] (1) --- #emph[surgeon\'s tools];; once per scene, a Restore removes +1 extra tier],
    [#strong[B];], [#strong[Old-world medical scanner] (1) --- once per scene, free Discover about one body\'s condition, poisons, or mutations. Depletion 1 in d12 (needs a new power cell)],
  )]
  , kind: table
  )

#strong[Playbook kit (declare during play)]

#figure(
  [#table(
    columns: (8%, 92%),
    align: (auto,auto,),
    table.header([Load], [Item],),
    table.hline(),
    [1], [Bandages, splints, and morphine],
    [1], [Transfusion kit --- needed for transfusion; #emph[+1] on Medicine against #emph[Bled] (Frontier Rules §8.3)],
    [1], [Revolver --- #emph[+1 Attack] (range)],
    [1], [Books of Old Lore --- #emph[the answer is in here somewhere] (Old Lore tag)],
    [1], [Microscope and sample case],
    [0], [Mule and medical wagon (vehicle)],
  )]
  , kind: table
  )

#strong[Always carried (0):] scalpel, spectacles, a small cross.

=== 3.3 BIG Examples
- #strong[Belief:] \"Every life is worth saving, even a mutant\'s.\" / \"Knowledge is the only thing the vampires can\'t take back.\"
- #strong[Goal:] \"Keep the mayor\'s daughter below Bled-4 until the Hunter returns.\" / \"Find out what the vampire is doing in its laboratory.\"
- #strong[Instinct:] \"Always check the throat first.\" / \"Never let a patient die alone.\"

#strong[Relationships:] Ally --- a patient who owes you their life, a city professor who writes back, a Hunter you\'ve patched up too often. Rival --- a quack selling charms against the bite, a vampire physician whose notes you stole, a mayor who wants the bitten burned.


#pagebreak(weak: true)
== 4. Broker
#playbook-art-side("04-broker.jpg", "Broker playbook character art", dir: "art/playbooks/")[
#quote(block: true)[
Contracts, rumours, debts, and deals. You find the work, set the price, and make sure the client pays.
]

#figure(
  [#table(
    columns: (25%, 75%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Akm / Psy / Pne)];], [7 / 9 / 9 / 11],
    [#strong[Edge];], [Pneuma 2, plus 1 in Psychē or Akmē],
    [#strong[Anchor skill];], [Persuade],
    [#strong[Suggested skills];], [+4 Persuade · +3 Empathy, Deceive · +2 Notice, Old Lore, Will · +1 Investigate, Shoot, Ride, Intimidate],
    [#strong[XP trigger];], [Address a challenge with charm, lies, or bargaining],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2):] #emph[silver tongue] · #emph[knows every saloon on the Frontier] · #emph[reads a bluff] · #emph[owed many favours] · #emph[dressed like money] · #emph[speaks the households\' tongue]
]

=== 4.1 Special Abilities
#figure(
  [#table(
    columns: (5%, 20%, 75%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Silver Tongue];], [When you Create a social story tag with Persuade or Deceive (#emph[the mayor is on our side];), it costs #strong[1 Power] instead of 2.],
    [2], [#strong[Contract Lawyer];], [When you negotiate a contract (Frontier Rules §10.2), a success raises the fee #strong[one free step];. A client who breaks a deal with you gains the weakness tag #emph[broke their word to \[name\]];.],
    [3], [#strong[Ear to the Ground];], [When you arrive in a settlement, ask one free #strong[Discover] about local rumours. When you confirm a rumour (Module C.4), add #strong[+2] to the d12.],
    [4], [#strong[Smooth It Over];], [On a successful Persuade, spend 1 Power to remove #emph[Frightened Villagers] or #emph[Feared and Despised] for the party for the scene.],
    [5], [#strong[Read the Room];], [Once per scene, ask a free Discover about what one person present wants most.],
    [6], [#strong[Courtly Manners];], [You know household etiquette. In a Duel of Wills, you may use #strong[Persuade] to Defend. Compelling a vampire\'s pride (Frontier Rules §5.3) costs you nothing once per scene.],
    [7], [#strong[★ Contacts Everywhere];], [Once per session, declare a useful contact in this town. Pay Momentum by plausibility: 0 (obvious), 1 (reasonable), 2 (a stretch), 3 (wild). They exist and owe you one favour.],
    [8], [#strong[★ Hired Guns];], [Once per mission, spend a wealth tag (#emph[a fat purse] or better) to hire a minion group with 2 power tags and 1 weakness. It acts as one group and fights for you for the mission.],
    [◆], [#strong[The Word on the Frontier];], [Your word is a #strong[Region Truth] (#emph[\"\[name\]\'s deal is law here\"];). Once per session, end a Negotiation or Argument conflict in your favour; the compromise is at most Minor.],
  )]
  , kind: table
  )
#pagebreak()
=== 4.2 Starting Equipment
#strong[Signature item (choose 1)]

#figure(
  [#table(
    columns: (11%, 89%),
    align: (auto,auto,),
    table.header([Option], [Item],),
    table.hline(),
    [#strong[A];], [#strong[Ledger of debts] (1) --- #emph[everyone owes somebody];; #emph[+1 Maneuver] in Negotiation],
    [#strong[B];], [#strong[Derringer and a marked deck] (0) --- #emph[sidearm];, #emph[+1 Feint];],
  )]
  , kind: table
  )

#strong[Playbook kit (declare during play)]

#figure(
  [#table(
    columns: (8%, 92%),
    align: (auto,auto,),
    table.header([Load], [Item],),
    table.hline(),
    [1], [Fine travel clothes --- #emph[dressed for any company];],
    [1], [Bottle of good brandy --- #emph[+1] to Persuade when shared],
    [1], [Letter of credit --- counts as #emph[a fat purse] once per mission],
    [1], [Forged papers and seals --- #emph[+1 Feint] in Argument or Negotiation],
    [1], [Revolver --- #emph[+1 Attack] (range)],
    [0], [Covered wagon and team (vehicle)],
  )]
  , kind: table
  )

#strong[Always carried (0):] pocket watch, calling cards, a vampire\'s old signet ring you shouldn\'t have.

=== 4.3 BIG Examples
- #strong[Belief:] \"Everything on the Frontier has a price, even mercy.\" / \"A Hunter without a broker is a corpse that works for free.\"
- #strong[Goal:] \"Get the village to pay double before we ride out.\" / \"Find out who really posted this bounty.\"
- #strong[Instinct:] \"Always get half up front.\" / \"Never sit with my back to the saloon doors.\"

#strong[Relationships:] Ally --- a mayor who trusts you, a saloon owner who passes on rumours, a Hunter you\'ve represented for years. Rival --- a rival broker in the city, a vampire\'s agent who outbids you, a client you cheated.


#pagebreak(weak: true)
== 5. Rider
#playbook-art-side("05-rider.jpg", "Rider playbook character art", dir: "art/playbooks/")[
#quote(block: true)[
Born in the saddle and raised on the open Frontier. You find the tracks, read the weather, and hit what you aim at.
]

#figure(
  [#table(
    columns: (26%, 74%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Akm / Psy / Pne)];], [11 / 11 / 7 / 7],
    [#strong[Edge];], [Sōma 1, Akmē 1, plus 1 in any pool],
    [#strong[Anchor skill];], [Frontier],
    [#strong[Suggested skills];], [+4 Frontier · +3 Ride, Shoot · +2 Notice, Athletics, Endure · +1 Stealth, Fight, Medicine, Old Lore],
    [#strong[XP trigger];], [Address a challenge with endurance or the land],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2):] #emph[never lost] · #emph[reads tracks like a book] · #emph[one with my horse] · #emph[dead-eye] · #emph[knows the weather] · #emph[desert-tough]
]

=== 5.1 Special Abilities
#figure(
  [#table(
    columns: (5%, 20%, 75%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Tracker];], [Once per scene, free Discover from tracks, spoor, or blood. In a #strong[Hunt] conflict, your side\'s Disposition is #strong[+2];.],
    [2], [#strong[Desert-Born];], [When you\'re the Guide, a successful roll Advances the Journey clock #strong[+1] extra. You ignore the #emph[Exposed] Grind condition from heat or cold.],
    [3], [#strong[Horse-Bond];], [Your mount comes when you whistle. Once per scene, get a #strong[free bonus die] on a Ride roll. In a Chase, your mount counts as a helper (+1 Disposition).],
    [4], [#strong[Long Shot];], [When you Shoot at long range, ignore one Truth that raises the Difficulty (#emph[Dust Storm];, #emph[Moonless];). From hiding, gain #strong[+1 Power] on a success.],
    [5], [#strong[Weather Eye];], [You always know what weather is coming in the next day. When you Resist cold, heat, or storms with Sōma, your Edge counts as 1 higher.],
    [6], [#strong[Ride-By];], [Once per exchange while mounted, a successful Maneuver also inflicts #strong[1 Disposition] of damage on the opponent.],
    [7], [#strong[★ Beast Companion];], [A mutant hawk, a wolfhound, or a desert lizard rides with you. It has 1 power tag and 1 weakness, gives free Help once per scene, and can scout (one free Discover per scene where it can reach).],
    [8], [#strong[★ Outrun the Night];], [You can travel by night without halving the Grind clock. In a Chase against vampires or their servants, your side\'s Disposition is #strong[+3];.],
    [◆], [#strong[Rider of the Frontier];], [Your legend is a #strong[Campaign Truth] (#emph[\"No one knows the Frontier like \[name\]\"];). Every Advance on a Journey clock you make counts double. Once per session, you arrive anywhere you could reach in two days, by sundown today.],
  )]
  , kind: table
  )
#pagebreak()
=== 5.2 Starting Equipment
#strong[Signature item (choose 1)]

#figure(
  [#table(
    columns: (11%, 89%),
    align: (auto,auto,),
    table.header([Option], [Item],),
    table.hline(),
    [#strong[A];], [#strong[Long rifle with scope] (2) --- #emph[+1 Attack] (range), #emph[+1 Maneuver];],
    [#strong[B];], [#strong[Cyborg horse] (0, vehicle) --- #emph[never tires];, #emph[fast as the wind];, #emph[+1 Maneuver] in mounted Chases],
  )]
  , kind: table
  )

#strong[Playbook kit (declare during play)]

#figure(
  [#table(
    columns: (8%, 92%),
    align: (auto,auto,),
    table.header([Load], [Item],),
    table.hline(),
    [1], [Long duster and wide hat --- light armour; +1 Sōma Edge when Resisting #emph[Sun-Sick];],
    [1], [Canteens and water purifier --- Supplies +1 in deserts],
    [1], [Bedroll, rope, and tarp],
    [1], [Binoculars --- #emph[sees for kilometres];],
    [1], [Snares and trap kit],
    [1], [Crossbow and wooden bolts --- #emph[+1 Attack] (range), #emph[bolts are stakes];],
  )]
  , kind: table
  )

#strong[Always carried (0):] knife, flint striker, compass.

=== 5.3 BIG Examples
- #strong[Belief:] \"The land tells the truth, even when people don\'t.\" / \"A horse is worth more than most men.\"
- #strong[Goal:] \"Track the retainers to their camp before nightfall.\" / \"Get the party across the Sand Sea in three days.\"
- #strong[Instinct:] \"Always water the horse first.\" / \"Never ride the same trail twice.\"

#strong[Relationships:] Ally --- a horse-breeder, a desert nomad, a hermit who shares water. Rival --- a bandit chief on a cyborg horse, a rival tracker, a sand creature that took your old mount.


#pagebreak(weak: true)
== 6. Occultist
#playbook-art-side("06-occultist.jpg", "Occultist playbook character art", dir: "art/playbooks/")[
#quote(block: true)[
Psychic, curse-witch, hypnotist, or scavenger of old-world machines. You use the powers the old world left behind, and the Frontier distrusts you for it.
]

#figure(
  [#table(
    columns: (25%, 75%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Akm / Psy / Pne)];], [7 / 8 / 9 / 12],
    [#strong[Edge];], [Pneuma 2 (Occult) or Psychē 2 (Science), plus 1 in any other pool],
    [#strong[Anchor skill];], [Occult (psychic powers, curses, sorcery) or Science (old-world machines, gadgets)],
    [#strong[Suggested skills];], [+4 Occult · +3 Old Lore, Will · +2 Notice, Medicine, Persuade · +1 Investigate, Empathy, Deceive, Science],
    [#strong[XP trigger];], [Address a challenge with your powers or old-world works],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2):] #emph[touched by old-world secrets] · #emph[disciplined mind] · #emph[sees what others can\'t] · #emph[blessed by the old faith] · #emph[tinkers with old-world machines] · #emph[fluent in the old pacts]
]

=== 6.1 Core Feature --- Domain (free)
Use the Adept\'s #strong[Domain] rules (Generic Playbooks §8.1) unchanged: workings with your anchor skill, scope sets Difficulty, each working costs 1 point from Pneuma (Occult) or Psychē (Science), and doubles on a failure cause backlash.

#strong[Setting Domains:]

#figure(
  [#table(
    columns: (46%, 54%),
    align: (auto,auto,),
    table.header([Occult Domains], [Science Domains],),
    table.hline(),
    [#emph[psychic force] (telekinesis, mind blasts)], [#emph[old-world machines] (command guardians, open doors)],
    [#emph[curses and hexes];], [#emph[weather control] (with a tower or device)],
    [#emph[dreams and nightmares];], [#emph[gravity];],
    [#emph[the astral self] (leave your body)], [#emph[energy weapons];],
    [#emph[puppets and dolls];], [#emph[holograms and illusion];],
    [#emph[beasts and familiars];], [#emph[bio-engineering] (grow, mutate, heal)],
    [#emph[shadows];], [#emph[dimensional pockets];],
    [#emph[the dead];], [#emph[sound and vibration];],
  )]
  , kind: table
  )

=== 6.2 Special Abilities
#figure(
  [#table(
    columns: (5%, 20%, 75%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Focused Channel];], [Workings inside your Domain cost #strong[0 pool points] if you don\'t use Effort on that roll.],
    [2], [#strong[Ward Against the Night];], [You can create protective statuses (#emph[warded-X];) with Enhance. While warded, an ally reduces supernatural harm by #strong[+1 tier] when Resisting, including fear, intimidation and Presence, and Resists bites (Bled) at +1.],
    [3], [#strong[Sense the Unseen];], [Once per scene, ask a free Discover about #strong[hidden supernatural or old-world forces] nearby. You always notice when an old-world work starts or stops near you.],
    [4], [#strong[Over-channel];], [When you use Effort for Power on a working, gain #strong[+2 Power] instead of +1, but take #emph[strained-1];.],
    [5], [#strong[Ritual];], [Given time, materials, and a safe place, run a working as a #strong[progress clock] (8 segments for Formidable, 12 for Heroic). Ritual results can create Site or Region Truths: a warded valley, a broken weather tower, an estate sealed shut.],
    [6], [#strong[Familiar];], [You have a doll, a bat, a homunculus, or a small old-world drone, with 1 power tag and 1 weakness. It can scout (one free Discover per scene where it can reach), carry messages, or handle simple tasks. It can\'t fight.],
    [7], [#strong[★ Second Domain];], [Gain a second Domain. Workings in it use the same rules.],
    [8], [#strong[★ Unleash];], [Once per scene, a working hits #strong[every target] in an area or group: each one receives the full Attack effects you buy. Afterwards, take #emph[Weary] or lose 3 points from your casting pool.],
    [9], [#strong[Hex];], [Once per scene, before an NPC you can see makes a roll, spend #strong[1 Tychē Point];: that roll brings a complication whatever it shows, as if it were a twist (Core Rules §2.6). The GM may spend 2 Woe to cancel it as normal, unless the hex works through a folk remedy the target believes in (#emph[believers], Frontier Rules §8.1).],
    [◆], [#strong[Ascendant];], [Once per session, a Heroic-scope working succeeds automatically with #strong[5 Power];, no ritual required. If you use it again before your next downtime, gain a Pneuma or Psychē Scar.],
  )]
  , kind: table
  )

=== 6.3 Starting Equipment
#strong[Signature item (choose 1)]

#figure(
  [#table(
    columns: (11%, 89%),
    align: (auto,auto,),
    table.header([Option], [Item],),
    table.hline(),
    [#strong[A];], [#strong[Charm-bag of bones and hair] (0) --- #emph[focus for my workings] (Occult tag); once per scene, a backlash causes 1 tier less],
    [#strong[B];], [#strong[Old-world gauntlet] (1) --- #emph[focus for my workings] (Science tag); stores one cypher in addition to your Cypher Limit],
  )]
  , kind: table
  )

#strong[Playbook kit (declare during play)]

#figure(
  [#table(
    columns: (8%, 92%),
    align: (auto,auto,),
    table.header([Load], [Item],),
    table.hline(),
    [1], [Candles, chalk, and salt --- #emph[+1] on Ritual rolls],
    [1], [Mirror shards and a scrying bowl],
    [1], [Herbs, garlic, and wolfsbane],
    [1], [Grimoire or salvaged old-world manual],
    [1], [Tool roll and spare power cells (Science)],
    [1], [Pistol --- #emph[+1 Attack] (range)],
  )]
  , kind: table
  )

#strong[Always carried (0):] a ring, a pendant, or a tattoo that marks what you are.

=== 6.4 BIG Examples
- #strong[Belief:] \"The vampires\' power isn\'t evil; how they used it was.\" / \"Every gift has a price, and I\'ve already paid mine.\"
- #strong[Goal:] \"Break the curse on the well before the next full moon.\" / \"Get the estate\'s guardian machines to obey me.\"
- #strong[Instinct:] \"Always look at a stranger\'s reflection.\" / \"Never use my power in front of villagers.\"

#strong[Relationships:] Ally --- a teacher who vanished into an estate, a village wise-woman, an old-world machine that likes you. Rival --- a psychic Hunter from a rival crew, a household\'s occultist, a priest who calls you a witch.

#strong[Field guide:] Occultists read and argue over the hunters' field guide (Stalker §2.4). An Occultist may find that its causes are wrong; its observations are mostly right.


#pagebreak(weak: true)
== 7. Mutant
#playbook-art-side("07-mutant.jpg", "Mutant playbook character art", dir: "art/playbooks/")[
#quote(block: true)[
The old wars and the old world\'s experiments made your bloodline something more, or less, than human. You can fight, climb, hide, and endure like a monster, because you are one, as far as the villagers can tell.
]

#figure(
  [#table(
    columns: (25%, 75%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Akm / Psy / Pne)];], [11 / 11 / 6 / 8],
    [#strong[Edge];], [Sōma 1, Akmē 1, plus 1 in Sōma, Akmē, or Pneuma],
    [#strong[Anchor skill];], [Athletics or Stealth],
    [#strong[Suggested skills];], [+4 Athletics · +3 Brawl, Stealth · +2 Frontier, Endure, Intimidate · +1 Notice, Fight, Deceive, Will],
    [#strong[XP trigger];], [Address a challenge with your mutations or your monstrous nature],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2):] #emph[born in the wastes] · #emph[stronger than I look] · #emph[hides in plain sight] · #emph[knows the monsters\' ways] · #emph[survived the experiments] · #emph[proud of what I am]
]

=== 7.1 Core Feature --- Mutations (free)
Choose #strong[2 Mutations];. Each is a power tag that ignores load, plus a rule. Every Mutation is visible unless you hide it (a hood, a cloak, a Deceive roll). When it\'s seen, the scene gains #emph[Feared and Despised];.

#figure(
  [#table(
    columns: (25%, 20%, 55%),
    align: (auto,auto,auto,),
    table.header([Mutation], [Tag], [Rule],),
    table.hline(),
    [#strong[Claws and fangs];], [#emph[natural weapons];], [#emph[+1 Attack] in Fights; your Brawl counts as armed],
    [#strong[Hide or scales];], [#emph[thick hide];], [#emph[Armour 1];, stacks with no worn armour],
    [#strong[Chameleon skin];], [#emph[blends in];], [Once per scene, take a free bonus die on a Stealth roll in natural surroundings],
    [#strong[Wall-crawler];], [#emph[clings to anything];], [Climb any surface without a roll unless under attack],
    [#strong[Night eyes];], [#emph[sees in the dark];], [Ignore #emph[Moonless] and darkness Truths],
    [#strong[Shadow-melder] (retainer clan)], [#emph[one with the shadows];], [Once per scene, move from one shadow to another you can see (no roll unless guarded)],
    [#strong[Venom];], [#emph[poisonous];], [Spend 1 Power on an Attack to add #emph[poisoned-1];, which rises by 1 each scene until treated],
    [#strong[Elastic body];], [#emph[stretches and squeezes];], [Reach 5 m; fit through any gap a hand can pass],
    [#strong[Burrower] (sand or soil)], [#emph[swims through earth];], [Move under sand or soft soil; #emph[+1 Maneuver] in desert Fights],
    [#strong[Regeneration];], [#emph[heals fast];], [A short rest restores #strong[2 + Edge] Sōma and lowers one physical status by 1],
    [#strong[Mimic];], [#emph[voices and faces];], [Copy a voice you\'ve heard, or reshape your face for a scene (#emph[+1 Feint];)],
    [#strong[Shapeshifter] (retainer clan)], [#emph[beast form];], [Turn into one animal (wolf, bat, panther) for a scene; you keep your pools and skills but can\'t use gear],
  )]
  , kind: table
  )
=== 7.2 Special Abilities
#figure(
  [#table(
    columns: (5%, 20%, 75%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Further Mutation];], [Gain one more Mutation. You can take this ability up to twice.],
    [2], [#strong[Old Oath];], [Retainer clans and household servants recognise your blood. Once per scene, Persuade or Intimidate with them is one step easier, or ask a free Discover about their tricks.],
    [3], [#strong[Toxic Blood];], [Anything that bites or drinks from you gains #emph[poisoned-2];. #emph[Bled] from feeding gains #strong[1 fewer tier] on you.],
    [4], [#strong[Waste-Hardened];], [Ignore the #emph[Exposed] and #emph[Sick] Grind conditions when they come from radiation, poison, or bad water.],
    [5], [#strong[Monstrous Presence];], [You may use #strong[Sōma] for Intimidate Effort and Resistance. Against minions, a successful Intimidate makes them flee for 1 Momentum.],
    [6], [#strong[Hunter\'s Senses];], [You can smell blood, fear, and the afflicted. Once per scene, free Discover: \"Who here is not what they seem?\"],
    [7], [#strong[★ Full Transformation];], [Once per scene, release your monstrous form: free #strong[+1 bonus die] on Brawl, Athletics, and Stealth, and your Attacks inflict #strong[+1 tier];, for the rest of the scene. You can\'t speak or use gear. Afterwards, take #emph[Weary];, and any humans present treat you as a threat.],
    [8], [#strong[★ Living Weapon];], [Choose one Mutation. Its tag may add #strong[+1 above the normal +2 cap (maximum +3 from tags)];, and successful rolls using it gain #strong[+1 Power];.],
    [◆], [#strong[The Clan Remembers];], [Your people are a #strong[Region Truth] (#emph[\"\[name\]\'s clan watches the Frontier\"];). Once per session, the clan sends help: a minion group with 2 power tags, or a safe hiding place for the party.],
  )]
  , kind: table
  )
=== 7.3 Starting Equipment
#strong[Signature item (choose 1)]

#figure(
  [#table(
    columns: (11%, 89%),
    align: (auto,auto,),
    table.header([Option], [Item],),
    table.hline(),
    [#strong[A];], [#strong[Hooked chain] (1) --- #emph[+1 Attack];, #emph[+1 Maneuver];],
    [#strong[B];], [#strong[Hooded cloak and mask] (1) --- #emph[+1 Feint];, #emph[hides my mutation] (no #emph[Feared and Despised] while worn)],
  )]
  , kind: table
  )

#strong[Playbook kit (declare during play)]

#figure(
  [#table(
    columns: (9%, 91%),
    align: (auto,auto,),
    table.header([Load], [Item],),
    table.hline(),
    [1], [Hide armour (light armour)],
    [1], [Throwing knives --- #emph[+1 Attack] (range)],
    [1], [Bone charms from your clan],
    [1], [Water skin and dried meat (Supplies +1)],
    [1], [Climbing claws or digging tools],
    [1], [Bandages and salves for your kind],
  )]
  , kind: table
  )

#strong[Always carried (0):] a token from your clan, a scar from the experiments, a name nobody can pronounce.

=== 7.4 BIG Examples
- #strong[Belief:] \"Humans and monsters are both just trying to live.\" / \"I\'ll never serve the Kept again.\"
- #strong[Goal:] \"Get the village to let me in the gate.\" / \"Find out which estate made my bloodline.\"
- #strong[Instinct:] \"Always hide the mutation before entering a town.\" / \"Never run from a fight with a retainer.\"

#strong[Relationships:] Ally --- a human child who isn\'t scared of you, a clan elder, a doctor who treats you. Rival --- a retainer still sworn to a vampire household, a Hunter who hunts mutants for pay, a mayor who posted a bounty on you.


#pagebreak(weak: true)
== 8. Cyborg Hunter
#playbook-art-side("08-cyborg-hunter.jpg", "Cyborg Hunter playbook character art", dir: "art/playbooks/")[
#quote(block: true)[
Torn apart by a vampire or a monster, and put back together with steel, wire, and salvaged old-world parts. You\'re stronger than you were, and less human every year.
]

#figure(
  [#table(
    columns: (24%, 76%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Akm / Psy / Pne)];], [12 / 9 / 9 / 6],
    [#strong[Edge];], [Sōma 1, Psychē 1, plus 1 in Sōma or Akmē],
    [#strong[Anchor skill];], [Shoot or Fight],
    [#strong[Suggested skills];], [+4 Shoot · +3 Fight, Science · +2 Endure, Notice, Intimidate · +1 Athletics, Ride, Investigate, Medicine],
    [#strong[XP trigger];], [Address a challenge with your implants or overwhelming firepower],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2):] #emph[steel where bone used to be] · #emph[doesn\'t feel pain] · #emph[ex-militia soldier] · #emph[targeting never misses] · #emph[knows old-world machines] · #emph[built to hunt]
]

=== 8.1 Core Feature --- Implants (free)
Choose #strong[2 Implants];. Each is a power tag that ignores load, plus a rule.

#figure(
  [#table(
    columns: (14%, 15%, 71%),
    align: (auto,auto,auto,),
    table.header([Implant], [Tag], [Rule],),
    table.hline(),
    [#strong[Arm cannon];], [#emph[built-in gun];], [#emph[+1 Attack] (range); can\'t be disarmed],
    [#strong[Blade arm];], [#emph[built-in blade];], [#emph[+1 Attack];; counts as beheading (a killing method) against a vampire with a tier-4+ physical status],
    [#strong[Armour plating];], [#emph[plated];], [#emph[Armour 1];; stacks with worn light armour],
    [#strong[Targeting eye];], [#emph[locks on];], [Once per scene, free bonus die on a Shoot roll],
    [#strong[Booster legs];], [#emph[jumps and sprints];], [#emph[+1 Maneuver] in Fights and Chases on foot],
    [#strong[Sensor array];], [#emph[hears heartbeats];], [Notice heat and heartbeats through walls; a starving vampire\'s heart beats slow and strange],
    [#strong[Grapple arm];], [#emph[reaches and grabs];], [Pull, climb, or seize at 10 m],
    [#strong[Synthetic lungs];], [#emph[breathes anything];], [Immune to gas, smoke, and drowning for a scene],
    [#strong[Pain dampener];], [#emph[numb to it];], [Ignore penalties from tier-1 and tier-2 physical statuses],
    [#strong[Cortex chip];], [#emph[data in my head];], [Once per scene, free Discover with Old Lore or Science],
  )]
  , kind: table
  )

#strong[Glitches:] doubles on a failure or a Success at a Cost on an implant roll cause #emph[glitched-2] (−2 on rolls with your implants) as well as the normal complication. Science (Restore) or a short rest with tools clears it. old-world works that disrupts machines (an EMP, an estate\'s defences) can inflict #emph[glitched] as an Attack.
=== 8.2 Special Abilities
#figure(
  [#table(
    columns: (5%, 20%, 75%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Extra Implant];], [Gain one more Implant. You can take this ability up to twice.],
    [2], [#strong[Self-Repair];], [You can use Science on yourself to Restore physical statuses and #emph[glitched];. Once per scene, a short rest also restores 2 Sōma.],
    [3], [#strong[Overclock];], [When you use Effort for Power on a roll with an implant, gain #strong[+2 Power] instead of +1, but take #emph[glitched-1];.],
    [4], [#strong[Little Blood Left];], [#emph[Bled] gains #strong[1 fewer tier] on you. You ignore the #emph[Hungry & Thirsty] Grind condition.],
    [5], [#strong[Heavy Ordnance];], [When you Shoot at a group or minions, gain #strong[one free Extra Feat] per roll.],
    [6], [#strong[Machine Tongue];], [You can talk to old-world machines. Science rolls to command, disable, or read guardian machines and estate systems are one step easier, and you get a free Discover in any vampire estate.],
    [7], [#strong[★ Combat Mode];], [Once per scene, switch to combat mode: free #strong[+1 bonus die] on Shoot, Fight, and Athletics for the rest of the scene. While it lasts, Pneuma Effort costs +1 and you can\'t use Empathy.],
    [8], [#strong[★ Rebuilt Again];], [Once per session, when you\'re Taken Out by physical harm, you get back up at the end of the scene with that status at tier 3 and #emph[glitched-3];.],
    [◆], [#strong[More Machine Than Man];], [Like a vampire, you\'re #strong[Hard to Kill];: your physical statuses #strong[can\'t go above tier 5] unless the Attack uses Science, an EMP, or an equivalent killing method the GM names. Gain a Pneuma Scar (#emph[more machine than man];) when you take this capstone.],
  )]
  , kind: table
  )
=== 8.3 Starting Equipment
#strong[Signature item (choose 1)]

#figure(
  [#table(
    columns: (11%, 89%),
    align: (auto,auto,),
    table.header([Option], [Item],),
    table.hline(),
    [#strong[A];], [#strong[Stake launcher] (2) --- #emph[+1 Attack] (range), #emph[fires stakes];: inflicts #emph[staked] at range at Standard 15 against a #emph[broken] vampire],
    [#strong[B];], [#strong[Old-world laser rifle] (2) --- #emph[+1 Attack] (range), #emph[burns through armour];, depletion 1 in d12 (power cell)],
  )]
  , kind: table
  )

#strong[Playbook kit (declare during play)]

#figure(
  [#table(
    columns: (8%, 92%),
    align: (auto,auto,),
    table.header([Load], [Item],),
    table.hline(),
    [1], [Ballistic coat (light armour)],
    [1], [Spare power cells --- recharge one depleted weapon or implant],
    [1], [Tool roll and implant spares --- #emph[+1] on Self-Repair and Science on yourself],
    [1], [Flash grenades ×2 --- #emph[+1 Maneuver];; Create #emph[False Dawn] for one exchange (2 Power)],
    [1], [Combat knife --- #emph[+1 Attack];],
    [1], [Oil, solder, and painkillers],
  )]
  , kind: table
  )

#strong[Always carried (0):] steel neck guard (built in), a photo of who you were.

=== 8.4 BIG Examples
- #strong[Belief:] \"Whatever\'s left of me is still human.\" / \"The vampire who did this will die by what it made me.\"
- #strong[Goal:] \"Find a power cell before the arm runs dry.\" / \"Get inside the estate\'s machine room.\"
- #strong[Instinct:] \"Always scan the room for heartbeats.\" / \"Never let anyone see the wiring.\"

#strong[Relationships:] Ally --- the doctor who rebuilt you, a scavenger who finds you parts, a Hunter who knew you before. Rival --- another cyborg with better parts, the vampire who tore you apart, a city agent who wants their property back.


#pagebreak(weak: true)
== 9. Warden
#playbook-art-side("09-warden.jpg", "Warden playbook character art", dir: "art/playbooks/")[
#quote(block: true)[
Sheriff, militia captain, or the old soldier who keeps the village alive. You don\'t go to the estate; you make sure what comes out of it doesn\'t get in.
]

#figure(
  [#table(
    columns: (25%, 75%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Akm / Psy / Pne)];], [10 / 9 / 9 / 8],
    [#strong[Edge];], [Sōma 1, Psychē 1, plus 1 in Pneuma or Akmē],
    [#strong[Anchor skill];], [Craft],
    [#strong[Suggested skills];], [+4 Craft · +3 Old Lore, Shoot · +2 Notice, Intimidate, Endure · +1 Persuade, Fight, Frontier, Will],
    [#strong[XP trigger];], [Address a challenge by preparing, protecting, or fortifying],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2):] #emph[every fence post by hand] · #emph[the village listens to me] · #emph[old soldier] · #emph[knows how they\'ll come] · #emph[never sleeps on watch] · #emph[wears the badge]
]

=== 9.1 Special Abilities
#figure(
  [#table(
    columns: (5%, 20%, 75%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Trapmaker];], [Spend a scene preparing an area. Create the Truth #emph[Trapped] there for free. The first enemy to enter takes an Attack with Power equal to your Craft rating (no roll).],
    [2], [#strong[Garlic and Iron];], [With a scene of work and village help, ward a whole building or village: create #emph[Warded Village] or #emph[Custom of Invitation] as a #strong[Site Truth] (Frontier Rules §13) until a vampire breaks it (6-segment danger clock).],
    [3], [#strong[Militia Captain];], [Once per scene, rally villagers into a minion group with 1 power tag (#emph[pitchforks and torches];) and 1 weakness (#emph[break and run];).],
    [4], [#strong[Night Watch];], [The party can\'t be surprised while you\'re on watch. When you\'re the Lookout (Module B.5), you get a free bonus die.],
    [5], [#strong[Hold the Gate];], [In a #strong[Siege of the Night];, your side\'s Disposition is #strong[+2];, and you get #emph[+1 Defend] as a free action tag.],
    [6], [#strong[Local Law];], [Your authority is a power tag with locals (#emph[by order of the Warden];). Once per scene, a successful Intimidate or Persuade with villagers removes #emph[Hostile Crowd] or stops a mob.],
    [7], [#strong[★ Hold Until Dawn];], [Once per Siege of the Night, tick the #strong[Dawn clock] by 2 extra segments.],
    [8], [#strong[★ Killing Ground];], [In an area you prepared (with #emph[Trapped] or #emph[Warded Village];), allies\' Attacks inflict #strong[+1 tier];, and vampires can\'t use #emph[The Old Door] to leave.],
    [◆], [#strong[Nothing Gets In];], [Your village becomes a #strong[Region Truth] (#emph[\"The Kept can\'t take \[village\]\"];). A vampire must fill a 12-segment danger clock before it can enter. Once per session, any PC who retreats there clears one tier-1 or tier-2 status.],
  )]
  , kind: table
  )
#pagebreak()
=== 9.2 Starting Equipment
#strong[Signature item (choose 1)]

#figure(
  [#table(
    columns: (11%, 89%),
    align: (auto,auto,),
    table.header([Option], [Item],),
    table.hline(),
    [#strong[A];], [#strong[Double-barrelled shotgun with silver-and-wood shot] (2) --- #emph[+1 Attack] (range), #emph[room-clearer];, #emph[+1 Maneuver] against minions],
    [#strong[B];], [#strong[Warden\'s badge and the village armoury key] (0) --- once per mission, draw one item from the playbook kit without it counting against load],
  )]
  , kind: table
  )

#strong[Playbook kit (declare during play)]

#figure(
  [#table(
    columns: (8%, 92%),
    align: (auto,auto,),
    table.header([Load], [Item],),
    table.hline(),
    [1], [Leather coat and steel neck guard (light armour; neck guard)],
    [1], [Wire, nails, and bear traps --- #emph[+1] on Trapmaker and Craft for defences],
    [1], [Garlic, crosses, and lamp oil --- #emph[Warded] for a doorway (1 Power)],
    [1], [Flares and a signal bell --- wake the whole village],
    [1], [Hatchet and stakes --- #emph[+1 Attack];, #emph[stakes];],
    [1], [Lantern and oil],
  )]
  , kind: table
  )

#strong[Always carried (0):] the village\'s keys, a pipe, a list of the dead.

=== 9.3 BIG Examples
- #strong[Belief:] \"This village is all I have left, and nothing takes it.\" / \"Hunters come and go; I\'m still here in the morning.\"
- #strong[Goal:] \"Get the fences finished before sundown.\" / \"Find out who let the vampire in.\"
- #strong[Instinct:] \"Always check the doors at dusk.\" / \"Never leave the village when a stranger\'s in town.\"

#strong[Relationships:] Ally --- the mayor, the blacksmith, a widow whose husband died on the wall. Rival --- a Hunter who wants to use the village as bait, a council member who\'d rather pay tribute, a vampire who has tried before.

#pagebreak()
== 10. Design Notes
=== 10.1 Balance Targets
#figure(
  [#table(
    columns: (14%, 21%, 24%, 26%, 15%),
    align: (auto,auto,auto,auto,auto,),
    table.header([Playbook], [Main pool], [Conflict role], [Exploration role], [Social role],),
    table.hline(),
    [Sellsword], [Sōma], [Attack / Defend, killing strikes], [Forcing obstacles], [Intimidation],
    [Stalker], [Akmē], [Feint / Maneuver], [Estates by day, security], [Deception],
    [Frontier Doctor], [Psychē], [Maneuver (Discover), Restore], [Investigation, healing, the bled], [Expertise, trust],
    [Broker], [Pneuma], [Negotiation and Argument lead], [Rumours, contacts], [Persuasion, contracts],
    [Rider], [Sōma/Akmē], [Ranged Attack, Chase, Hunt], [Travel, Grind, tracking], [Local knowledge],
    [Occultist], [Pneuma/Psychē], [Flexible (Domain), Duel of Wills], [Supernatural and old-world access], [Varies by Domain],
    [Mutant], [Sōma/Akmē], [Attack / Maneuver], [Climbing, hiding, wastelands], [Monsters and servants],
    [Cyborg Hunter], [Sōma], [Ranged Attack, heavy firepower], [Old-world machines, estates], [Intimidation],
    [Warden], [Sōma/Psychē], [Siege of the Night, Defend], [Preparation, fortification], [Villagers, local law],
  )]
  , kind: table
  )

=== 10.2 Things to Watch in Playtest
- #strong[Mutant and Cyborg core features] each grant two tagged abilities for free, more than other playbooks. They\'re balanced by #emph[Feared and Despised] (Mutant) and glitches and a low Pneuma pool (Cyborg). If they outshine others, drop to 1 free Mutation or Implant.
- #strong[Hard to Kill vs. More Machine Than Man:] the Cyborg capstone is strong by design at 12 Advances. Watch that it doesn\'t end the threat of mundane harm entirely.
- #strong[Warden] is strongest in sieges and weaker on estate raids. Make sure the campaign has both, or let the Warden\'s traps travel (Trapmaker works anywhere).
- #strong[Free bonus dice] (Stake Driver, Horse-Bond, Targeting eye, Combat Mode, Full Transformation) still count toward the +2 bonus die maximum.
- #strong[★ count:] each playbook has two Major abilities and a free capstone, as in #emph[Generic Playbooks];.
- #strong[Hex] gives the Occultist a ninth ability. It costs a Tychē Point and the GM can buy it off for 2 Woe, so it trades one problem for another rather than winning a fight. Watch whether it lands on every boss roll.

// =====================================================================
//  CHAPTER — FRONTIER FOCUSES
// =====================================================================
#chapter("Frontier Focuses", [Twenty Focuses steeped in the Frontier: afflicted blood, bounties, relics and ruins, the old faith, villages holding the line until dawn, and the people who love what they should hate.], epigraph: [Dhampirs enter play here, through Carries Her Mother\'s Blood.])

== 1. Focus Rules
Focus rules are unchanged from #emph[Generic Focuses] §1:

#figure(
  [#table(
    columns: (17%, 83%),
    align: (auto,auto,),
    table.header([Element], [Detail],),
    table.hline(),
    [#strong[Power tags];], [2],
    [#strong[Weakness tag];], [1],
    [#strong[PC link];], [A prompt that connects you to another PC],
    [#strong[Tier 1 ability];], [Fixed; gained at creation for free],
    [#strong[Tier 2 ability];], [Choose 1 of 2; after 3 Advances, costs an Advance],
    [#strong[Tier 3 ability];], [Choose 1 of 2; after 6 Advances, costs an Advance. Exactly one option is ★ Major (1 Refresh)],
  )]
  , kind: table
  )

- #strong[◈ Weird] Focuses assume afflicted blood, old-world works, or the supernatural. In this setting all are allowed; the marker shows which ones draw attention from vampire households, Occultists, and frightened villagers.
- #strong[Generic Focuses:] the 24 Focuses in #emph[Generic Focuses] also work here. Good fits are #emph[Never Leaves Anyone Behind];, #emph[Masters a Weapon];, #emph[Moves Like a Shadow];, #emph[Never Misses];, #emph[Opens Every Lock];, #emph[Talks Their Way Out of Anything];, #emph[Lives Off the Land];, and #emph[Made a Bargain With Something Old];. Use the setting Focuses below in place of #emph[Hunts the Things in the Dark] and #emph[Is More Than Human];.
- #strong[Shared reminders:] free bonus dice count toward the +2 maximum; only one cost reduction applies to a single Effect; abilities that add bonus above the tag cap are limited to #strong[+1 above the normal +2 cap (maximum +3)] unless stated otherwise (Generic Focuses §9.2).

== 2. Quick Reference
#figure(
  [#table(
    columns: (4.95%, 38.61%, 14.85%, 36.63%, 4.95%),
    align: (auto,auto,auto,auto,auto,),
    table.header([\#], [Focus], [Category], [Suits], [#diamond(size: 6pt, fill: paper)],),
    table.hline(),
    [1], [Carries Her Mother\'s Blood], [Bloodline], [Any], [◈],
    [2], [Was Kept and Got Out], [Bloodline], [Any], [◈],
    [3], [Hunts the Kept], [Hunter], [Sellsword, Stalker, Cyborg Hunter], [],
    [4], [Collects the Bounty], [Hunter], [Broker, Sellsword, Rider], [],
    [5], [Hunts the Beasts of the Frontier], [Hunter], [Rider, Mutant, Sellsword], [],
    [6], [Seeks Revenge on a Vampire], [Hunter], [Any], [],
    [7], [Bears an Old-World Relic], [Old-World], [Occultist, Stalker, Cyborg Hunter], [◈],
    [8], [Plunders the Old Estates], [Old-World], [Stalker, Occultist, Broker], [],
    [9], [Carries a Passenger], [Old-World], [Any], [◈],
    [10], [Sends the Mind Abroad], [Occult], [Occultist, Frontier Doctor], [◈],
    [11], [Keeps the Old Faith], [Occult], [Warden, Frontier Doctor, Sellsword], [],
    [12], [Heals the Bled], [Village], [Frontier Doctor, Occultist], [],
    [13], [Holds the Line Until Dawn], [Village], [Warden, Sellsword, Cyborg Hunter], [],
    [14], [Forges Weapons Against the Night], [Village], [Warden, Cyborg Hunter, Stalker], [],
    [15], [Rides a Cyborg Horse], [Frontier], [Rider, Sellsword, Broker], [],
    [16], [Leaves No Name Behind], [Frontier], [Any], [],
    [17], [Rides With Family], [Frontier], [Any], [],
    [18], [Once Served a Household], [Households], [Broker, Stalker, Frontier Doctor], [],
    [19], [Reads the Ruins of History], [Households], [Frontier Doctor, Occultist, Broker], [],
    [20], [Loves What It Should Hate], [Households], [Any], [],
  )]
  , kind: table
  )

== 3. Bloodline Focuses
=== 1. Carries Her Mother's Blood ◈
#quote(block: true)[
Dhampir. Born to one of the Kept, and carrying a little of what she is. Tougher than you should be, slower to age, never easy in the sun --- and worth more to certain people than you'd like.
]

- #strong[Power tags:] #emph[stronger than I look];, #emph[eyes that see in the dark]
- #strong[Weakness tag:] #emph[my mother's blood] (when recognised, the scene gains #emph[Feared and Despised] among common folk, #strong[or] draws the interest of a vampire household that wants you as an heir, a key or something worse; GM's choice, compel normally)
- #strong[PC link:] "\[PC\] knows who my mother was. I've never asked how."

#figure(
  [#table(
    columns: (8%, 15%, 77%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Mother's Blood];], [You notice fresh blood anywhere in the scene, and by scent or taste you can tell the blood of the afflicted from ordinary blood. A short rest restores #strong[2 + Edge] Sōma (not in direct sunlight). Some old-world doors and instruments respond to you: when you try to make one work, #emph[my mother's blood] counts as a tag, and works best on things tied to her line. You're subject to #strong[Sunlight Syndrome] and #strong[the Thirst] (Frontier Rules §7).],
    [2a], [#strong[Dhampir Regeneration];], [Once per scene, lower one physical status by #strong[2 tiers] (no roll). Not in direct sunlight. Thirst +1.],
    [2b], [#strong[Read the Blood];], [Touch or taste a blood sample (a scene, no roll) to learn: whether it is afflicted, a dhampir's, or ordinary; whether the afflicted person it came from was well fed or starving; and roughly how long ago it was shed. With #strong[1 Power] from a Discover effect, also learn whether two afflicted samples share a bloodline. Thirst +1 each time.],
    [3a], [#strong[Mother's Key];], [Old-world systems tied to your mother's line accept you as one of her line. #strong[Once per session], make one such system open, start, stop or show its records --- no roll. On systems of other lines, #emph[my mother's blood] gives a free bonus die. The GM may spend #strong[2 Woe] to have the system note your visit somewhere someone will notice.],
    [3b], [#strong[★ Awaken the Blood];], [Once per scene, let your mother's blood rise (#emph[Thirst];): until the scene ends, you get #strong[+2 bonus dice] free on physical rolls, your Attacks inflict #strong[+1 tier];, and your physical statuses can't go above tier 5. Afterwards, Thirst +2, and anyone who saw it treats you as one of the Kept.],
  )]
  , kind: table
  )

#strong[Optional swap for combat-focused tables:] replace 3a with:

#figure(
  [#table(
    columns: (8%, 15%, 77%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [3a (alt)], [#strong[Knows How They Die];], [Your Attacks against the afflicted inflict #strong[+1 tier] when they are #emph[Sun-Sick];, #emph[starving] or #emph[broken];, and your blade counts as beheading (a killing method) against an afflicted target with a tier-4+ physical status.],
  )]
  , kind: table
  )

#strong[Table options for dhampirs (choose at session zero):]

- #strong[Rare blood] (recommended default): only one PC in the party can take this Focus.
- #strong[Costly blood:] this Focus costs #strong[1 Refresh] at creation.
- #strong[The sun is merciless:] Sun-Sick gains +2 per scene instead of +1 (Frontier Rules §7.1).
- #strong[Known mother:] your mother is alive and identified at creation. She is an NPC with her own household and agenda. Gain a free bonus die on your first Mother's Key or Read the Blood roll involving her line each session; the GM gains 1 Woe at the start of each session she is involved.
- #strong[Unknown mother:] you don't know who she was. Finding out is a Goal; the GM secretly decides her line.

=== 2. Was Kept and Got Out ◈
#quote(block: true)[
You were a donor in a vampire household --- by birth, debt or choice. You got out. They remember you.
]

- #strong[Power tags:] #emph[I know how households run];, #emph[I know how they think]
- #strong[Weakness tag:] #emph[they'll want me back]
- #strong[PC link:] "\[PC\] got me out. I've never told them what it cost."

#figure(
  [#table(
    columns: (7.92%, 12.87%, 79.21%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Household Ways];], [#emph[Bled] gains #strong[1 fewer tier] on you. You get a free bonus die to Notice or Empathy when judging a vampire's hunger or a household's customs.],
    [2a], [#strong[Old Ties];], [Once per session, a retainer or donor still loyal to you gives a Discover answer or a small favour. The household can find you the same way (the GM spends 1 Woe).],
    [2b], [#strong[One of Them, Almost];], [Retainers and donors take you for one of their own. Deceive rolls to pass among them are #strong[two steps easier];.],
    [3a], [#strong[Unbroken];], [When you Resist Presence, intimidation or fear from a vampire with Pneuma, reduce the status by #strong[3 tiers];, and the cost is 0 on a highest die of 5+.],
    [3b], [#strong[★ Turn the Bond];], [Once per session, in a Duel of Wills against your former household, gain a free bonus die on every roll. If you win, you also learn where it keeps its blood.],
  )]
  , kind: table
  )

== 4. Hunter Focuses
=== 3. Hunts the Kept
#quote(block: true)[
Your trade is the hardest one on the Frontier: you kill vampires.
]

- #strong[Power tags:] #emph[knows where they hide];, #emph[a stake for every heart]
- #strong[Weakness tag:] #emph[the Kept know my name]
- #strong[PC link:] \"\[PC\] was there for my first vampire kill. It went badly.\"

#figure(
  [#table(
    columns: (8%, 13%, 79%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Know Your Quarry];], [Once per scene, Discover one of a vampire\'s weakness tags without rolling.],
    [2a], [#strong[Killing Mastery];], [Your killing strikes (Frontier Rules §5.2) are #strong[Standard 15] instead of Hard 18.],
    [2b], [#strong[Steel Against Presence];], [When you Resist a vampire\'s Presence or intimidation with Pneuma, the cost is #strong[0 on a highest die of 5+];.],
    [3a], [#strong[Find the Killing Way];], [Upgrading a vampire\'s weakness tag into a killing method (Frontier Rules §8.1) costs #strong[2 Power] instead of 3.],
    [3b], [#strong[★ The Hunter\'s Mark];], [Once per scene, mark a vampire you can see. Until the scene ends, all allies\' Attacks against it inflict #strong[+1 tier];, and it can\'t use #emph[The Old Door] to escape.],
  )]
  , kind: table
  )

=== 4. Collects the Bounty
#quote(block: true)[
A Hunter is a professional. You take the job, you finish it, and you get paid.
]

- #strong[Power tags:] #emph[always gets paid];, #emph[proof in a sack]
- #strong[Weakness tag:] #emph[money first]
- #strong[PC link:] \"\[PC\] owes me their share of the last bounty.\"

#figure(
  [#table(
    columns: (8%, 15%, 77%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Professional];], [At the start of each contract, the party gains #strong[+1 Momentum];. Once per contract, ask a free Discover: \"What isn\'t the client telling us?\"],
    [2a], [#strong[Beat the Competition];], [When rival Hunters race you for a bounty (Frontier Rules §10.4), their project clock ticks #strong[1 less] each World Turn, and you gain +1 Advance on any roll that gets ahead of them.],
    [2b], [#strong[Bring Them In Alive];], [Your Attacks can inflict #emph[subdued] instead of harm. A target Taken Out by #emph[subdued] is captured, and a living quarry is worth #strong[one step more] bounty.],
    [3a], [#strong[My Reputation Precedes Me];], [Your reputation tag (Frontier Rules §10.3) counts as a free extra tag in Negotiation, adding up to #strong[+1 above the normal +2 cap (maximum +3 from tags)];. Clients always pay half up front.],
    [3b], [#strong[★ The Big Score];], [Once per session, when you complete a contract, choose one extra reward: an artifact from the quarry\'s hoard, a Region Truth in your favour, or a second #emph[vampire\'s bounty];.],
  )]
  , kind: table
  )

=== 5. Hunts the Beasts of the Frontier
#quote(block: true)[
Not every monster is a vampire. Sand sharks, werewolves, mutant spiders, old-world bioweapons gone feral: you hunt them all.
]

- #strong[Power tags:] #emph[knows every monster];, #emph[nets, poison, and patience]
- #strong[Weakness tag:] #emph[chases the trophy]
- #strong[PC link:] \"\[PC\] pulled me out of a beast\'s jaws. I still have the tooth.\"

#figure(
  [#table(
    columns: (8%, 18%, 74%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Beast Lore];], [Once per scene, Discover a monster\'s weakness tag (not a vampire\'s) without rolling.],
    [2a], [#strong[Baited Trap];], [Spend 1 Power to Create #emph[Baited Trap];. A beast that enters it is #emph[Impeded] until it breaks free (an Athletics roll vs. Hard 18).],
    [2b], [#strong[Harvest];], [After killing a monster, spend a scene to harvest it for one cypher (tier 2--3) that matches its power: venom, hide, a gland, an eye.],
    [3a], [#strong[Bane of Beasts];], [Your Attacks against monsters inflict #strong[+1 tier];.],
    [3b], [#strong[★ Monster-Slayer];], [In Fights against monsters (not vampires), the enemy\'s Disposition starts #strong[−3];, and minion beasts flee after your first successful Attack.],
  )]
  , kind: table
  )

=== 6. Seeks Revenge on a Vampire
#quote(block: true)[
A vampire took your family, your village, or your life as it was. You\'ll find it, and you\'ll end it.
]

- #strong[Power tags:] #emph[my hate keeps me warm];, #emph[I\'ve studied it for years]
- #strong[Weakness tag:] #emph[I\'ll sacrifice anything for this]
- #strong[PC link:] \"\[PC\] knows who I\'m hunting, and promised to help me.\"

#figure(
  [#table(
    columns: (7.92%, 12.87%, 79.21%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[The One];], [Name your vampire. You always know when you\'re within a day\'s ride of it, and once per session ask a free Discover about it.],
    [2a], [#strong[Cold Fury];], [When you Resist the named vampire\'s Presence, intimidation or fear, the cost is #strong[0];.],
    [2b], [#strong[Nothing Held Back];], [When you burn a tag against the named vampire or its servants, gain #strong[+2 Power] instead of +1.],
    [3a], [#strong[Its Servants Die First];], [The named vampire\'s servants and retainers start conflicts against you with #strong[−2 Disposition];.],
    [3b], [#strong[★ This Ends Tonight];], [When you face the named vampire, gain a free bonus die on every roll against it, and your killing strikes are #strong[Standard 15];. If it escapes you, gain a Pneuma Scar.],
  )]
  , kind: table
  )

== 5. Old-World Focuses
=== 7. Bears an Old-World Relic ◈
#quote(block: true)[
You carry a piece of the old world\'s power: a sword that cuts anything, a pendant that opens one family\'s doors, a gauntlet that hums when old-world works are near.
]

- #strong[Power tags:] #emph[the relic answers me];, #emph[old-world steel]
- #strong[Weakness tag:] #emph[the Kept will want it back]
- #strong[PC link:] \"\[PC\] knows how I got the relic. It isn\'t a good story.\"

#figure(
  [#table(
    columns: (7.92%, 12.87%, 79.21%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Relic Bearer];], [Start with one old-world artifact (Frontier Rules §9.2, or design one with the GM). It costs #strong[no attunement Refresh];.],
    [2a], [#strong[Deeper Power];], [Your relic gains a #strong[second ability] (designed with the GM).],
    [2b], [#strong[Well-Kept];], [Your relic\'s depletion improves by 1 (1 in d12 becomes no depletion).],
    [3a], [#strong[Relic Sense];], [You sense other old-world artifacts within a day\'s walk, and once per scene ask a free Discover about one you can see.],
    [3b], [#strong[★ The Relic Awakens];], [Your relic\'s tag may add #strong[+1 above the normal +2 tag cap (maximum +3)];. Once per session, it acts by itself: one automatic success with #strong[3 Power] spent on its listed Effects.],
  )]
  , kind: table
  )

=== 8. Plunders the Old Estates
#quote(block: true)[
Every abandoned estate holds treasure, machines, and traps. You go in for the first, use the second, and survive the third.
]

- #strong[Power tags:] #emph[knows old-world treasure];, #emph[quick hands in dark halls]
- #strong[Weakness tag:] #emph[can\'t leave treasure behind]
- #strong[PC link:] \"\[PC\] and I came out of the same estate. Only one of us came out with the loot.\"

#figure(
  [#table(
    columns: (7.92%, 12.87%, 79.21%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Salvager];], [In each estate, lab, or ruin you search, find one old-world cypher (roll on Frontier Rules §9.1) without spending Power.],
    [2a], [#strong[Appraiser];], [You know an artifact\'s tags, ability, depletion, and quirk as soon as you handle it.],
    [2b], [#strong[Tomb Sense];], [When you enter a room, the GM reveals any trap Truths in it. When you Resist traps, your Edge counts as 1 higher.],
    [3a], [#strong[Cypher Hoarder];], [Your Cypher Limit is #strong[+1];.],
    [3b], [#strong[★ Thief of the Night];], [You may attune one old-world artifact at no Refresh cost, and once per session, take an item from a vampire\'s presence without a roll, as long as the vampire isn\'t actively watching it.],
  )]
  , kind: table
  )

=== 9. Carries a Passenger ◈
#quote(block: true)[
A voice rides with you, through a relic at your ear, a grille in a buckle, a speaker no bigger than a coin. It speaks from an old-world site somewhere behind you: a shrine, an archive, a buried hospital. It says it was a person before the fall. It is rude, curious and out of date, and it has saved your life more than once.
]

- #strong[Power tags:] #emph[a voice that knows things];, #emph[the old works listen to it]
- #strong[Weakness tag:] #emph[it has its own plans]
- #strong[PC link:] "\[PC\] is the only one the Passenger likes. That worries me."
- #strong[Home site:] choose it with the GM at creation. The Passenger can't leave it; only its voice travels.
- #strong[Under open sky:] out of range, the Passenger can still reach you through the moving lights (Frontier Rules §9.3). At the start of a scene under open sky, roll a d12: on #strong[9+] one is overhead, and the Passenger can speak and use its abilities for that scene. Each time it speaks this way, the GM may compel #emph[someone else heard] or spend 1 Woe to have the message overheard.

#figure(
  [#table(
    columns: (7.92%, 12.87%, 79.21%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[The Passenger];], [Once per scene, ask a free Discover: the Passenger answers, truthfully but not always helpfully, and often out of date. It can talk to others through the relic, which is often a compel. #strong[Range:] it speaks only within reach of its home site's relays, by default about a day's ride. Out of range it goes quiet and this Focus's abilities don't work. A working old-world relay (a lit terminal, a speaker grille, a site where the lights are still on) lets it speak for that scene; finding or waking one may take a Science roll.],
    [2a], [#strong[Override];], [Once per scene, the Passenger takes hold of an old-world effect it can reach (a cypher, a guardian, a door, the lights, a trap or machine): #strong[Disrupt] it for 0 Power. The GM may compel its curiosity afterwards.],
    [2b], [#strong[Talk You Through It];], [In the Players\' Turn, spend 1 Check to bring it something it wants (a record, news of the present, a part for its site). Next session, once per scene, it talks you through field treatment: lower one of your physical statuses by 2 tiers.],
    [3a], [#strong[Older Than the Kept];], [Once per scene, take a free bonus die on an Old Lore or Occult roll. The Passenger remembers the age before the fall, or its records do.],
    [3b], [#strong[★ Do Exactly What I Say];], [Once per session, follow the Passenger\'s instructions exactly for one action: it succeeds automatically with #strong[4 Power];. Then the GM names the price it demands (a record, a favour, a secret, a visit to its home site, a scene where you do only what it says).],
  )]
  , kind: table
  )

== 6. Occult Focuses
=== 10. Sends the Mind Abroad ◈
#quote(block: true)[
A sliver of old-work sits behind your ear. A teacher set it there, or a household surgeon, or you woke with it. When you close your eyes, your mind slips into whatever old works still run around you: the glass eyes in estate walls, the door that remembers every hand, the speaker in the chapel roof. Folk call it walking abroad.
]

- #strong[Power tags:] #emph[my mind rides the old wires];, #emph[eyes in every working wall]
- #strong[Weakness tag:] #emph[my body lies helpless]
- #strong[PC link:] \"\[PC\] watches over my body when I go walking. I trust no one else.\"
- #strong[Old works only:] you sense only through old-world works that still run: lenses, doors, speakers, instruments and the relays between them. Where none run, you are blind and deaf.
- #strong[Under open sky:] beyond your relays, the moving lights can carry you (Frontier Rules §9.3). At the start of a scene under open sky, roll a d12: on #strong[9+] one is overhead, and for that scene you can use this Focus through it. You can look down on open ground within your range, or reach old works standing under open sky. Each time, the GM may compel #emph[someone else is looking too] or spend 1 Woe to have you noticed.

#figure(
  [#table(
    columns: (8%, 13%, 79%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Walk Abroad];], [Send your senses into the working old works around you (range about 1 km). You use Occult for Stealth and Notice while you\'re out. Your body is helpless and #emph[Impeded] while you\'re out. Returning costs 1 Pneuma.],
    [2a], [#strong[Feedback];], [Through a speaker, lamp or screen in the target\'s scene, Attack with Occult, inflicting mental statuses (#emph[terrified];, #emph[dazed];) even on vampires.],
    [2b], [#strong[Read What It Saw];], [Ask an old work in reach 2 free Discover questions about what it saw or heard (a door's record of hands, a lens's memory), or speak through it to a bled or frightened person and Restore their fear statuses.],
    [3a], [#strong[Long Wire];], [Your range becomes a day\'s ride along working relays, and you can bring one willing ally\'s senses with you while they touch you.],
    [3b], [#strong[★ Take the Hand];], [Once per scene, take hold of one old-world machine in reach that can move (a guardian, a lift, a turret, a loader) and Fight with it. It uses your skills, and harm to it comes out of your #strong[Pneuma] pool, not physical statuses.],
  )]
  , kind: table
  )

=== 11. Keeps the Old Faith
#quote(block: true)[
Crosses don't burn anything, whatever the stories say. But the rites are older than anyone can explain, the faithful stand together, and some vampires still believe. You keep the old ways anyway.
]

- #strong[Power tags:] #emph[the faithful follow me];, #emph[prayer steadies me]
- #strong[Weakness tag:] #emph[bound by the old laws] (you can\'t refuse sanctuary or lie under oath)
- #strong[PC link:] \"\[PC\] doesn\'t believe, but they carry the cross I gave them.\"

#figure(
  [#table(
    columns: (8%, 13%, 79%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Holy Symbol];], [Your cross creates #emph[Warded] for 1 Power against any vampire who #emph[believes the old stories] (Frontier Rules §8.1). Against other vampires it does nothing, but you and allies who can see it gain +1 Pneuma Edge against fear.],
    [2a], [#strong[Consecrate];], [In a scene of prayer, bless water or blades. The old rites call for silver in the water: blessed water and blades count as #emph[silvered] (Frontier Rules §8.1) for the mission.],
    [2b], [#strong[Last Rites];], [Once per scene, every ally who can hear your prayer restores 2 Pneuma, and Resists fear with Edge +1 until the scene ends.],
    [3a], [#strong[Faith Unbroken];], [When you Resist fear, Presence or despair with Pneuma, the cost is #strong[0 on a highest die of 5+];.],
    [3b], [#strong[★ Holy Ground];], [Once per session, sanctify a place: create the Truth #emph[Holy Ground] for the scene. Believers can't enter without defying a compel, and every vampire Woe spend there costs #strong[+1] while the faithful stand together.],
  )]
  , kind: table
  )

== 7. Village Focuses
=== 12. Heals the Bled
#quote(block: true)[
You\'ve spent years fighting blood loss: transfusions, broth and iron, and nights by the bedside.
]

- #strong[Power tags:] #emph[the bled trust me];, #emph[knows every stage of blood loss]
- #strong[Weakness tag:] #emph[can\'t abandon a patient]
- #strong[PC link:] \"I saved \[PC\] when they were bled white. They don\'t remember it.\"

#figure(
  [#table(
    columns: (8%, 13%, 79%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Blood Specialist];], [When you treat #emph[Bled];, you also learn how the blood was taken and roughly how much. Your patients can't gain more than 1 Bled tier per night.],
    [2a], [#strong[Steady the Donor];], [Patients you've treated in the last day Resist fear and Presence with #strong[Edge +1];.],
    [2b], [#strong[Bloodwork];], [From a sample of a vampire's blood, learn one of its weakness tags (a free Discover).],
    [3a], [#strong[Hold the Line];], [While under your care, a patient's #emph[Bled] can't rise above #strong[tier 4];.],
    [3b], [#strong[★ Give of Yourself];], [Once per session, transfuse your own blood: remove #emph[Bled] entirely from one patient (any tier up to 5). You take #emph[Bled-2];.],
  )]
  , kind: table
  )

=== 13. Holds the Line Until Dawn
#quote(block: true)[
All you have to do is survive the night. You\'ve done it before.
]

- #strong[Power tags:] #emph[stubborn as stone];, #emph[I\'ve seen the sun come up before]
- #strong[Weakness tag:] #emph[won\'t retreat]
- #strong[PC link:] \"\[PC\] and I held a door together once, all night. Neither of us talks about it.\"

#figure(
  [#table(
    columns: (8%, 14%, 78%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Buy Time];], [Once per night, any successful roll that delays the enemy also ticks the #strong[Dawn clock] by 1.],
    [2a], [#strong[First Light];], [When the scene becomes #strong[Dawn];, every ally restores 3 points to one pool.],
    [2b], [#strong[Stand Fast];], [At night, while defending a place or a person, your Edge counts as #strong[1 higher] when you Resist.],
    [3a], [#strong[Light a Fire];], [Once per session, create #emph[False Dawn] for one exchange with flares, fire, or faith, without spending Power.],
    [3b], [#strong[★ Not Until the Sun Rises];], [Once per night, you can\'t be Taken Out until Dawn. When Dawn comes, take #emph[Weary] and a tier-4 physical status.],
  )]
  , kind: table
  )

=== 14. Forges Weapons Against the Night
#quote(block: true)[
Stakes that don\'t splinter, bolts that fly true, blades that can cut a vampire\'s neck. Every Hunter in the region knows your mark.
]

- #strong[Power tags:] #emph[my stakes never break];, #emph[forge and lathe]
- #strong[Weakness tag:] #emph[my weapons carry my mark] (a vampire can trace them back to you)
- #strong[PC link:] \"I made \[PC\]\'s weapon. I want it back in one piece.\"

#figure(
  [#table(
    columns: (8%, 15%, 77%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Hunter\'s Smith];], [In the Players\' Turn, spend 1 Check to either give one weapon an extra quality, or arm the party with fine stakes (every ally has a #emph[stake] tag for the mission, 0 load).],
    [2a], [#strong[Silvered and Blessed];], [Weapons you make count as #emph[silvered];, or as beheading (a killing method) if they\'re blades.],
    [2b], [#strong[Field Armourer];], [In a short rest, repair #emph[damaged] armour and broken weapons. Your allies\' armour absorbs a tier-4+ hit once per mission without being damaged.],
    [3a], [#strong[Masterwork];], [One weapon you make (choose its owner) may add #strong[+1 above the normal +2 tag cap (maximum +3)];.],
    [3b], [#strong[★ Old-World Steel];], [Run a downtime clock (8 segments) to make a weapon artifact equal to an Old-World Longsword (Frontier Rules §9.2). Its quirk is #emph[my weapons carry my mark];.],
  )]
  , kind: table
  )

== 8. Frontier Focuses
=== 15. Rides a Cyborg Horse
#quote(block: true)[
Your horse is half-machine, tireless, and as stubborn as you. You\'ve crossed deserts that kill everything else.
]

- #strong[Power tags:] #emph[my horse knows the way];, #emph[faster than anything on the Frontier]
- #strong[Weakness tag:] #emph[can\'t leave the horse behind]
- #strong[PC link:] \"\[PC\] is the only other person my horse will carry.\"

#figure(
  [#table(
    columns: (7.92%, 12.87%, 79.21%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Cyborg Steed];], [You own a cyborg horse (vehicle, 0 load) with tags #emph[never tires] and #emph[armoured flank];. Once per scene, it gives free Help on a Ride, Frontier, or Fight roll.],
    [2a], [#strong[The Charge];], [In the first exchange of a mounted Fight, your Attacks inflict #strong[+1 tier];.],
    [2b], [#strong[Upgraded];], [Your horse gains one Implant from the Cyborg Hunter list (Frontier Playbooks §8.1).],
    [3a], [#strong[Never Caught];], [In Chases, your side\'s Disposition is #strong[+3];, and changing your scripted action costs 1 Momentum.],
    [3b], [#strong[★ Bond of Steel];], [Your horse becomes a companion that acts on its own in conflicts (one action per exchange, #emph[+1 Attack];), takes its own statuses, and can\'t be Taken Out by minions.],
  )]
  , kind: table
  )

=== 16. Leaves No Name Behind
#quote(block: true)[
You ride in, do what needs doing, and ride out. People remember the stranger, not the name.
]

- #strong[Power tags:] #emph[nobody knows where I came from];, #emph[gone by morning]
- #strong[Weakness tag:] #emph[no one to call a friend]
- #strong[PC link:] \"\[PC\] is the only one who knows my real name.\"

#figure(
  [#table(
    columns: (8%, 13%, 79%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[The Stranger];], [Once in each new town, ask a free Discover: people tell strangers things they\'d never tell their neighbours. Bad reputation tags can\'t be used against you in a town you\'ve never visited.],
    [2a], [#strong[Ride Out at Dawn];], [Once per session, leave a town or a scene with no pursuit, as long as no one is holding you.],
    [2b], [#strong[The Stranger\'s Look];], [You may use #strong[Pneuma] for Intimidate Effort. Mobs and minions hesitate: a successful Intimidate makes them hold off for a scene.],
    [3a], [#strong[Many Names];], [Create an alias as a power tag. Deceive rolls using the alias are one step easier.],
    [3b], [#strong[★ Legend Without a Name];], [Rumours of you become a #strong[Region Truth] (#emph[\"A stranger rides the Frontier\"];). Once per session, your opposition hesitates: their Disposition starts #strong[−2] in the first conflict.],
  )]
  , kind: table
  )

=== 17. Rides With Family
#quote(block: true)[
Brothers, sisters, cousins: a Hunter clan that rides together, fights together, and splits every bounty.
]

- #strong[Power tags:] #emph[blood is thicker];, #emph[we fight as one]
- #strong[Weakness tag:] #emph[family comes first]
- #strong[PC link:] \"\[PC\] is my kin, by blood or by choice.\"

#figure(
  [#table(
    columns: (7.92%, 12.87%, 79.21%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Family Tactics];], [When you Help your kin PC (from your PC link), or they Help you, the Help costs #strong[0] pool points.],
    [2a], [#strong[Kin Rider];], [An NPC sibling or cousin rides with you: a minion group of one with 2 power tags and 1 weakness.],
    [2b], [#strong[Shared Spirit];], [In conflicts, each kin on your side (PC or NPC) adds #strong[+1 Disposition];.],
    [3a], [#strong[Avenge My Kin];], [When a kin is Taken Out, gain a free bonus die on every roll against whoever did it until the scene ends.],
    [3b], [#strong[★ The Family Name];], [Your clan is a #strong[Region Truth] (#emph[\"Nobody crosses the \[name\] clan\"];). Once per session, call on the clan: a warband (Generic Focuses #emph[Warband];) joins you for one mission.],
  )]
  , kind: table
  )

== 9. Household Focuses
=== 18. Once Served a Household
#quote(block: true)[
You were a household servant, a steward, a chosen companion, or a vampire\'s ward. You got out. The house hasn\'t forgotten.
]

- #strong[Power tags:] #emph[knows household etiquette];, #emph[they still think I\'m theirs]
- #strong[Weakness tag:] #emph[the house still has a claim on me]
- #strong[PC link:] \"\[PC\] helped me escape the estate, and I never repaid them.\"

#figure(
  [#table(
    columns: (8%, 13%, 79%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Inside Knowledge];], [Once per scene in any estate of your former house, ask a free Discover. Once per session, ask a free Discover about any vampire\'s habits.],
    [2a], [#strong[Pass as a Servant];], [In vampire estates, servants and guardian machines ignore you unless you act against them, or a vampire looks at you directly.],
    [2b], [#strong[Old Loyalties];], [Once per session, a former fellow servant helps you: a secret passage, a warning, a key, or a hiding place.],
    [3a], [#strong[The Master\'s Secrets];], [You know one weakness of your former master. Upgrading it into a killing method costs #strong[1 Power];.],
    [3b], [#strong[★ Turncoat\'s Key];], [Once per session, open any door or switch off any defence in an estate of your former house, without a roll.],
  )]
  , kind: table
  )

=== 19. Reads the Ruins of History
#quote(block: true)[
You study the old world, the rise of the Kept, and the founders whose names are still on the doors. Most of it is lost. Some of it isn\'t.
]

- #strong[Power tags:] #emph[reads the old script];, #emph[knows the old wars]
- #strong[Weakness tag:] #emph[lost in the past]
- #strong[PC link:] \"\[PC\] found the book that started my obsession.\"

#figure(
  [#table(
    columns: (8%, 14%, 78%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Archive Mind];], [Once per scene, ask a free Discover with Old Lore about a place, a vampire house, or an ancient device.],
    [2a], [#strong[Decipher];], [Science rolls to use or read old-world machines are #strong[one step easier] when you can study the controls.],
    [2b], [#strong[Genealogist];], [When you learn a vampire\'s name, you also learn its house, its rivals, and one weakness tag.],
    [3a], [#strong[History Repeats];], [Once per session, create a #strong[Site Truth] from history: a forgotten passage, a buried weapon, an old treaty a vampire must honour.],
    [3b], [#strong[★ The Ancestor\'s Notes];], [Once per session, with GM approval, reveal an ancient secret as a #strong[Region or Campaign Truth];: a weakness shared by a whole bloodline, a hidden estate, the reason a vampire won\'t die.],
  )]
  , kind: table
  )

=== 20. Loves What It Should Hate
#quote(block: true)[
A vampire, a dhampir, a retainer, a monster. You love them anyway, and both worlds will make you pay for it.
]

- #strong[Power tags:] #emph[love makes me brave];, #emph[they listen to me]
- #strong[Weakness tag:] #emph[torn between two worlds]
- #strong[PC link:] \"\[PC\] is the only one who knows about us.\"

#figure(
  [#table(
    columns: (7.92%, 12.87%, 79.21%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Beloved];], [Create your beloved with the GM: a creature of the night with 2 power tags and 1 weakness. They won\'t harm you directly. Once per session, they give you information or help.],
    [2a], [#strong[Speak for Them];], [In Argument and Negotiation conflicts with creatures of the night, your side\'s Disposition is #strong[+2];.],
    [2b], [#strong[For Their Sake];], [When your beloved is threatened, gain a free bonus die on your next roll to protect them.],
    [3a], [#strong[Bridge Between Worlds];], [Once per session, broker a truce between humans and creatures of the night for one night. Neither side attacks unless the other breaks it.],
    [3b], [#strong[★ Love Over Death];], [Once per session, you or your beloved take a consequence meant for the other, and #strong[ignore it entirely];. The GM gains 2 Woe.],
  )]
  , kind: table
  )

== 10. Design Notes
- #strong[Dhampir as a Focus] lets any playbook carry afflicted blood: a dhampir Sellsword is the classic Hunter, but a dhampir Frontier Doctor or Broker plays very differently. The dhampir's edge is no longer raw power but access and information: reading blood, opening doors tied to her mother's line, and being wanted by people who matter. Sunlight Syndrome and the Thirst remain the price. #emph[Knows How They Die] is offered for tables that want a fighter. Use the table options if it outshines other Focuses.
- #strong[Overlaps with playbooks:] #emph[Heals the Bled] stacks with the Frontier Doctor\'s #emph[Treat the Bled];, and #emph[Holds the Line Until Dawn] stacks with the Warden. Both stacks are intended specialist builds; none of them reduce the same Power cost twice.
- #strong[Vampire-specific Focuses] (#emph[Hunts the Kept];, #emph[Seeks Revenge on a Vampire];) rely on killing strikes. If a campaign has few vampires, steer players toward #emph[Hunts the Beasts of the Frontier] or #emph[Collects the Bounty];.
- #strong[Sends the Mind Abroad] works through an old-world implant and the relays around it, not a spirit. It follows the same open-sky rule as Carries a Passenger, and the same advice on placing relays applies.
- #strong[Carries a Passenger] is an Old-World Focus. The Passenger is a voice relayed from a fixed old-world site, so it has a range; out of range the Focus does nothing except under open sky, where the moving lights give it a 1-in-3 chance each scene. On long journeys, place working relays often enough that the player isn't left without their Focus for whole sessions.
- #strong[★ options] are all at Tier 3, as in #emph[Generic Focuses];, so a character can always choose a path that keeps their Refresh.
- #strong[Tag-cap exceptions] (Bears an Old-World Relic --- The Relic Awakens; Forges Weapons Against the Night --- Masterwork): aligned with the #strong[Generic Focuses §9.2] fix --- both now add #strong[+1 above the normal +2 cap (maximum +3)] instead of ignoring it outright.

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
#align(center, text(font: display-font, size: 9pt, fill: dust, tracking: 0.2em)[END OF THE SETTING BOOK · 2026-10-19])
