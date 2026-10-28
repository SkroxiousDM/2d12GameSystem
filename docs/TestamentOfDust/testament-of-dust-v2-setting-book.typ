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
  
#include "testament-of-dust-setting-rules.typ"

#include "testament-of-dust-descriptors.typ"
  
#include "testament-of-dust-playbooks.typ"

#include "testament-of-dust-focuses.typ"

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
