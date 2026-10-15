// =====================================================================
//  VAMPIRE HUNTER D — THE 2d12 SYSTEM, VERSION 2
//  Master Rulebook · Post-Apocalyptic Frontier Gothic
//  Compiled for SkroxiousDM · 2026-10-12
//
//  Single-file Typst source. Compile with:
//      typst compile vampire-hunter-d-2d12-v2-master-rulebook.typ
//
//  Fonts (free, Google Fonts / OFL). Install them, or pass --font-path:
//      EB Garamond   — body text
//      Cinzel        — headings and display type
//  If they are missing, Typst falls back to Libertinus Serif. Symbols
//  (★ ◆ ◈ →) fall back to DejaVu Sans.
//
//  Unofficial fan adaptation for home play, based on Hideyuki Kikuchi's
//  Vampire Hunter D novels and the anime films. Not affiliated with or
//  endorsed by the rights holders.
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
#let book-title    = "Hollow Frontier"
#let book-subtitle = "The 2d12 System · Version 2"
#let book-kind     = "Master Rulebook"
#let book-tagline  = "Post-Apocalyptic Frontier Gothic 
inspired by  Vampire Hunter D"
#let book-author   = "SkroxiousDM"
#let book-date     = "2026-10-12"

#set document(
  title: book-title + " — " + book-subtitle + " — " + book-kind,
  author: book-author,
  date: datetime(year: 2026, month: 10, day: 31),
  keywords: ("2d12", "Vampire Hunter D", "tabletop RPG", "rulebook"),
)

// ---------------------------------------------------------------- playbook art
// full-figure ink-and-watercolour vignettes, toned to the page parchment
#let playbook-art(file, alt) = block(width: 100%, above: 0.6em, below: 0.9em, breakable: false,
  align(center, image("art/playbooks/" + file, width: 100%, alt: alt)))

// generic-playbook header: art set beside the quote, stats and tags (single-column pages)
#let playbook-art-side(file, alt, body) = grid(columns: (1fr, 24%), column-gutter: 6mm, align: (top, center + horizon),
  body, image("art/playbooks/generic/" + file, width: 100%, alt: alt))

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
  margin: (top: 2.1cm, bottom: 1.5cm, inside: 2.2cm, outside: 2.0cm),
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
    text(font: display-font, size: 17pt, weight: 700, fill: brass, tracking: 0.12em, book-subtitle)
    v(6pt)
    text(font: display-font, size: 13pt, fill: moon.darken(8%), tracking: 0.3em, upper(book-kind))
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
      Version 2 · Master compilation dated *#book-date*
    ]
    v(14pt)
    text(size: 9.5pt, fill: ash)[
      
    ]
    v(14pt)
    text(size: 9pt, fill: dust, style: "italic")[
      An unofficial fan adaptation for home play, based on Hideyuki Kikuchi's Vampire Hunter D novels and the anime films. Not affiliated with or endorsed by the author, publishers or rights holders. The 2d12 System draws inspiration from Fate, the Cypher System, :Otherscape, Mouse Guard, Blades in the Dark and the 2d20 System; all trademarks belong to their owners.
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
  [Ten thousand years after the bombs, the Nobility's long night is ending, but not quickly enough. This chapter explains what this book contains, how its rules are named.],
  epigraph: [Fences of wood and garlic. Laser rifles beside wooden stakes. Somewhere beyond the ridge, a castle light comes on.])

#columns(2, gutter: 6mm)[
== About This Book

This master rulebook collects every current document for running *Vampire Hunter D* with the 2d12 System into one volume. The generic engine comes first; the Frontier setting material builds on it.

#figure(table(columns: (13%, 30%, 57%),
  table.header([Ch.], [Chapter], [Contents]),
  [I], [Introduction], [Terminology, renamed stats, notation],
  [II], [Core Rules], [The 2d12 roll, character creation, Tychē Points, Effects, Resistance and recovery, clocks, Truths, Momentum and Woe, the conflict system, playbooks, advancement],
  [III], [Optional Modules], [Module A Cyphers & Artifacts · Module B The Grind & Travel · Module C Truth-Driven Sandbox],
  [IV], [Generic Descriptors], [Descriptor rules and 24 setting-neutral Descriptors, six per pool],
  [V], [Generic Playbooks], [Playbook and equipment rules; Bellator, Furcifer, Savant, Interlocutor, Explorator, Adept],
  [VI], [Generic Focuses], [Focus rules and 24 setting-neutral Focuses],
  [VII], [Frontier Rules], [The Vampire Hunter D setting: Campaign Truths, skills, day and night, the Nobility, the Kiss, Noble blood, banes, Noble science, bounties, conflicts, travel, Woe spends],
  [VIII], [Frontier Descriptors], [20 Descriptors with Frontier hooks],
  [IX], [Frontier Playbooks], [Sellsword, Stalker, Frontier Doctor, Broker, Rider, Occultist, Mutant, Cyborg Hunter, Warden],
  [X], [Frontier Focuses], [20 setting Focuses, including the dhampir Focus],
  [App.], [Quick Reference], [The roll, Difficulty, outcomes, bonus dice, recovery and the Night at a glance],
))

When a rule here mentions another chapter, it uses that chapter's name and section number. For example, *Core Rules §4.1* means Chapter II, section 4.1. A bare reference such as *§6* points to a section in the same chapter.
#colbreak()
== Terminology and Renamed Stats

The source documents used the working names on the left. This book uses the house names on the right everywhere: in rules text, tables, abilities, gear and playbook names.

#figure(table(columns: (24%, 22%, 54%),
  table.header([Working name], [House name], [What it is]),
  [Threat], [*Woe*], [The GM's pool: complications, escalation, Noble night powers],
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
- *Scars* take the name of the pool that ran dry: a *Pneuma Scar*, a *Psychē Scar*.
- *Names left as they are.* In-world names that use the everyday words keep them, because they describe the fiction rather than a stat: the *Spirit Duel* conflict type, the abilities *Spirit Sight*, *Shared Spirit*, *Steady Mind* and *Archive Mind*, and the Focus *Sends the Mind Abroad*. Credits to the source games (Fate, Fate Core, 2d20) also keep their original names.

#colbreak()
== Notation

- *★ Major.* An ability that costs *1 Refresh* when you take it, at creation or through advancement.
- *◆ Capstone.* Unlocked after *12 Advances* if you have at least 4 abilities from that playbook. It costs no Refresh, and each character can have one.
- *◈ Weird.* A Focus that assumes the supernatural, Noble science or Noble blood. On the Frontier every ◈ Focus is allowed, but the marker shows which ones draw the attention of Nobles, Occultists and frightened villagers.
- *Tags* are written in _italics_, such as _marks on my throat_. *Statuses* add a tier, such as _wounded-2_.
- *Difficulty* is written by name and target, such as *Standard 15* or *Hard 18*.

#sidebar("A Note on Tone")[
  The Frontier is gothic horror on a post-apocalyptic frontier: lone riders, dusty towns, moonlit castles, laser rifles beside wooden stakes, monsters with tragic histories, and Nobles who are beautiful, ancient and bored. *D himself* works best as a rumour, a mirror or a rare NPC, not as a player character (Frontier Rules §1).
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
- #strong[Edge:] the playbook gives #strong[3 points of Edge];, maximum 2 in any one pool at creation. Edge reduces the cost of Effort and Resistance from that pool.
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
#colbreak()
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
- #strong[Goal] --- a concrete objective for this session or mission. \"Get Mara out of the precinct before dawn.\"

Goals are rewritten each session; Beliefs and Instincts can change at milestones.

=== 3.6 Starting Resources
- #strong[Tychē Points:] start each session with Tychē Points equal to your #strong[Refresh] (base 3; see §4.1).
- #strong[Load-out:] chosen during play from the playbook\'s gear list (Blades-style light/normal/heavy load), not bought in advance.

#colbreak(weak: true)
== 4. Tychē Points
#strong[Spend 1 Tychē Point to:]

- #strong[Invoke] --- reroll all dice, or add +2 after rolling. This works with any tag or Truth you can justify, even one belonging to the scene or an enemy. Invokes are not limited by the tag cap.
- #strong[Declare] --- establish a minor fact about the scene. The GM may require it to tie to one of your tags.
- #strong[Resist harder] --- reduce one Resistance cost to 0 (§6).

#strong[Earn Tychē Points by:]

- #strong[Compels] --- the GM or another player offers a complication based on a weakness tag, Scar, Belief, or Instinct. Accept → +1 Tychē Point. Refuse → pay 1 Tychē Point.
- #strong[Playing your Belief against your interests] (Mouse Guard): once per session, take +1 Tychē Point when your Belief causes trouble for you.

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
    [#strong[Attack];], [1 Power per tier], [Inflict a #strong[status] (e.g. #emph[wounded-2];, #emph[rattled-1];, #emph[on fire-3];)],
    [#strong[Weaken];], [1], [Reduce one of the target\'s statuses by 1 tier, or #strong[burn] one of its tags for the scene],
    [#strong[Create];], [2], [Create a #strong[story tag] that lasts for the scene (#emph[smoke cover];, #emph[crowd on our side];). One extra Power makes it last until resolved],
    [#strong[Enhance];], [1 per tier], [Give an ally a helpful status (#emph[inspired-2];)],
    [#strong[Restore];], [1 per tier], [Reduce a harmful status on yourself or an ally],
    [#strong[Discover];], [1], [Ask the GM one question; you get a true, useful answer],
    [#strong[Advance];], [1 per segment], [Tick a #strong[progress clock] (§7)],
    [#strong[Disrupt];], [2], [Cancel or delay an enemy\'s prepared action, or take 1 point off the GM\'s Woe],
    [#strong[Extra Feat];], [1], [Achieve a second, related goal with the same action],
  )]
  , kind: table
  )
#columns(2, gutter: 6mm)[
Each point of Power buys an Effect. Players choose Effects that fit what their character did in the fiction.
  
Any unspent Power → #strong[Momentum];.

=== 5.1 Statuses
- Statuses have #strong[tiers 1--6];.
- #strong[Stacking:] a new status of the same kind raises the existing tier by the new tier minus 1 (minimum +1), so small hits accumulate slowly.
#colbreak()
- #strong[Tier 6:] the target is #strong[Taken Out] of whatever that status represents (dead, unconscious, captured, convinced, routed).
- Statuses modify rolls by #strong[± their tier] (use only the highest relevant harmful status and the highest relevant helpful status).
]

== 6. Resistance and Stress
  #columns(2, gutter: 6mm)[
When a consequence lands on you (a status, lost gear, a bad position), you may #strong[Resist];:

+ Choose the pool that fits (see §3.2: Sōma for harm, Akmē to dodge, Psychē against deception and confusion, Pneuma against fear and the supernatural).
+ Roll #strong[2d12] and look at the #strong[highest die];.
+ Pay the cost in pool points, #strong[minus that pool\'s Edge];:

#figure(
  [#table(
    columns: (29%, 55%, 16%),
    align: (auto,auto,auto,),
    table.header([Highest die], [Cost], [Chance],),
    table.hline(),
    [12], [0 (and clear one tier-1 status)], [16%],
    [9--11], [1], [40%],
    [5--8], [2], [33%],
    [1--4], [3], [11%],
  )]
  , kind: table
  )

#block[
#set enum(numbering: "1.", start: 4)
+ #strong[Effect:] reduce the incoming status by #strong[2 tiers] (to 0 if that brings it below 1), or turn a severe consequence into a lesser one.
]

#strong[Running dry (Trauma):] if a pool hits 0, you are #strong[Taken Out] of the current scene or conflict. You recover with that pool at half its maximum and gain a permanent #strong[Scar] --- a weakness tag flavoured by the pool:

#figure(
  [#table(
    columns: (18%, 82%),
    align: (auto,auto,),
    table.header([Pool], [Example Scars],),
    table.hline(),
    [Sōma], [#emph[bad lungs];, #emph[old wound];, #emph[shaking hands];],
    [Akmē], [#emph[flinches];, #emph[hesitant];, #emph[jumpy];],
    [Psychē], [#emph[paranoid];, #emph[obsessed];, #emph[fractured memory];],
    [Pneuma], [#emph[haunted];, #emph[hollow];, #emph[marked by the Other];],
  )]
  , kind: table
  )

Scars can be compelled for Tychē Points. Your fourth Scar retires the character.

    
#strong[Rest and Recovery]

There\'s no separate \"short rest\" / \"full rest\" split. Instead, resting escalates through the day --- the longer you take, the more you recover:

#figure(
  [#table(
    columns: (23%, 49%, 28%),
    align: (auto,auto,auto,),
    table.header([Rest \# (per day)], [Time required], [Recovery die],),
    table.hline(),
    [1st], [A few seconds; 1 action if taken mid-encounter], [1d6],
    [2nd], [10 minutes], [1d8],
    [3rd], [1 hour], [1d10],
    [4th], [10 hours (usually overnight)], [Restore all four pools to full],
  )]
  , kind: table
  )
#colbreak()
- Roll the listed die and #strong[divide the result among Sōma, Akmē, Psychē, and Pneuma however you like] --- it doesn\'t have to go to whichever pool was drained most recently.

- #strong[Edge does not affect this roll.] Edge only reduces Effort and Resistance cost (§2.4, §6); recovery stays flat so it can\'t stack with Edge\'s other benefits.
- After the 4th rest, the cycle resets --- your next rest that day (or the start of a new day) is a 1d6 again.
- Each PC rests and rolls independently. If two of five party members stop for 10 minutes to recover, the other three don\'t have to stop or roll.
#colbreak()
- #strong[Trauma recovery is separate.] Hitting 0 in a pool (§6, running dry) still recovers at half max plus a permanent Scar --- that\'s not a normal recovery roll.

#strong[Advance option --- Hardened] #emph[(6 XP, one-time)]

Your recovery die steps up one size at every stage, permanently: 1d6→1d8, 1d8→1d10, 1d10→1d12. The 4th rest of the day remains a full restore. This is a flat, single bump --- it does not scale further and doesn\'t interact with Edge, Effort Level, or pool growth from other Advances.
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

#colbreak()
=== 10.2 Setup
+ #strong[Declare intent:] each side states what it wants if it wins.
+ #strong[Choose the conflict type] (§10.3), which sets the skill for each action.
+ #strong[Disposition:] the leader of each side rolls #strong[2d12 + the type\'s Disposition skill + the highest Edge in that skill\'s pool];, halves the result (round up), and adds +1 per helper. That is the side\'s #strong[Disposition] (usually 7--12), divided among team members as the side chooses.
+ #strong[Track] Disposition as a number or a clock.
]
  
=== 10.3 Conflict Types
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
#pagebreak()
#columns(2, gutter: 6mm)[
  Settings can add types; each type needs one skill per action and a Disposition skill. A dash (---) means that action isn\'t available in that type.
=== 10.4 Scripting and Volleys
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


=== 10.5 Actions and Effects
#figure(
  [#table(
    columns: (20%, 80%),
    align: (auto,auto,),
    table.header([Action], [Default effect of Power],),
    table.hline(),
    [#strong[Attack];], [Each Power removes 1 Disposition from the opponent],
    [#strong[Defend];], [Each Power restores 1 Disposition (up to the starting value)],
    [#strong[Feint];], [Each Power removes 1 Disposition; the Feint ignores Defend],
    [#strong[Maneuver];], [Spend Power on: #strong[Impede] (1: opponent −3 on next roll), #strong[Gain Position] (1: +1 bonus die on next roll), #strong[Disarm] (3: remove an action type or burn a key tag for the rest of the conflict), or #strong[Create a Truth] (2)],
  )]
  , kind: table
  )

Effort (including Effort for +1 Power), Momentum, Woe, Tychē Points, tags, and Truths all work normally. A PC who hits 0 Disposition is out of the conflict but not necessarily harmed; harm comes from compromise.

=== 10.6 Conflict Gear
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

=== 10.7 Compromise
When one side hits 0 Disposition, the conflict ends. The winner gets their intent but #strong[pays a compromise] based on how much Disposition they have left:

#figure(
  [#table(
    columns: (23%, 77%),
    align: (auto,auto,),
    table.header([Winner\'s Disposition left], [Compromise],),
    table.hline(),
    [Full or nearly full], [None or trivial],
    [More than half], [Minor --- loser gets a small concession; winner takes a tier-1 status],
    [Less than half], [Significant --- loser gets part of its intent; winner takes tier-2 statuses or loses gear],
    [1--2 points], [Major --- near pyrrhic victory; heavy statuses, a lost ally, or a new danger clock],
  )]
  , kind: table
  )

Players may #strong[Resist] compromise statuses as usual (§6).

=== 10.8 Keeping It Fast
- Disposition of 7--12 should resolve in one or two exchanges.
- NPC sides script on index cards; minions act as a single group with one script.
- Table guideline: about 15--20 minutes per conflict.
]
  
#pagebreak(weak: true)
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
- #strong[Later:] the sergeant\'s dread patron, a bound spirit, lashes out with #emph[terror-3];. Kade Resists with #strong[Pneuma] (Edge 0): highest die 7 → cost 2 Pneuma. The status drops to #emph[terror-1];.
- #strong[Compel:] the GM compels #emph[Reckless];: \"You can\'t wait for backup; you go in now.\" Kade accepts and gains +1 Tychē Point.
]
  
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
- #strong[Four pools] means more pool points to track. The sheet should put all four in one row with Edge beside each.
- #strong[Conflict length:] with scripting used for every big contest, the conflict test (§10.1) is what stops overuse.

// =====================================================================
//  CHAPTER — OPTIONAL MODULES
// =====================================================================
#chapter("Optional Modules", [Three drop-in modules for longer campaigns: one-use cyphers and dangerous artifacts, the grinding cost of travel and hardship, and a sandbox where the world itself is written in Truths.], epigraph: [Use any, all, or none. On the Frontier, all three are recommended.])

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
    columns: (11%, 89%),
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
    columns: (10%, 17%, 33%, 40%),
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
    [#strong[Quartermaster];], [Survival or Craft], [#strong[Forage / Ration] --- clear Hungry for the party, or +1 Supplies],
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
    columns: (6.06%, 21.21%, 22.22%, 19.19%, 31.31%),
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
    [9], [Frontier camp], [Desperation], [Bandits], [Someone is not who they claim],
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
#chapter("Generic Descriptors", [Twenty-four setting-neutral adjectives open the sentence: "I am a [Descriptor]..." Six belong to each pool. Each one gives +2 to that pool, a power tag, a weakness tag and a suggested Instinct. The Frontier Descriptors in Chapter VIII are written for the Frontier.], epigraph: [The adjective of the character sentence.])

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

Every Descriptor works in any genre. Choose one from this chapter or, in a Vampire Hunter D game, from the Frontier Descriptors.

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
#columns(2, gutter: 6mm)[
== 3. Descriptors
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
#chapter("Generic Playbooks", [The six genre-neutral playbooks: Bellator, Furcifer, Savant, Interlocutor, Explorator and Adept. Each has eight special abilities, a capstone and starting equipment for three genres. The Frontier playbooks in Chapter IX reskin these six.], epigraph: [The noun of the character sentence.])

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
    [#strong[Resist];], [Roll 2d12, pay pool points by highest die − Edge, reduce a status by 2 tiers (§6)],
    [#strong[Status];], [Tiered condition 1--6; tier 6 = Taken Out (§5.1)],
    [#strong[Truth];], [Scene, site, region, or campaign tag that shifts Difficulty by ±3 (§8)],
    [#strong[Disposition];], [Conflict \"hit points\" (§10)],
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
- #strong[Weapons] also give one or more #strong[conflict action tags] (Core Rules §10.6), e.g. #emph[+1 Attack];.
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

Armour that absorbs a tier-4+ hit is #emph[damaged] (−1 Armour) until repaired during downtime.

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
    [8], [#strong[★ Unstoppable];], [Once per scene, when a status would reach tier 6 on you or a pool would hit 0, keep acting until the end of the scene. Then you\'re Taken Out as normal.],
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

#columns(2, gutter: 6mm)[
== 1. Focus Rules
=== 1.1 What a Focus Gives You
#figure(
  [#table(
    columns: (22%, 78%),
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
- #strong[Changing Focus:] at a major milestone, with GM approval, you can swap your Focus. You keep Tier 1 of the new one and rebuy higher tiers with Advances.

=== 1.2 Weird Focuses ◈
Focuses marked #strong[◈ Weird] assume the supernatural, impossible technology, or both. In mundane settings the GM removes them from the list. Every other Focus works in any genre.

=== 1.3 Shared Rules Reminders
- Free bonus dice from Focuses still count toward the #strong[+2 bonus die maximum];.
- Abilities that add bonus above the tag cap only do so for the tag they name, and are limited to #strong[+1 above the normal +2 cap (maximum +3)] unless stated otherwise.
- Only #strong[one cost reduction] applies to a single Effect (e.g. you can\'t combine two \"costs 1 Power instead of 2\" abilities).

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
    [2b], [#strong[Interpose];], [In conflicts, once per exchange, when an ally loses Disposition, you may take #strong[half the loss (round up)] from your own Disposition instead.],
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
    [2a], [#strong[Riposte];], [In Fight conflicts, when you win a versus roll with Defend, you may spend any of that Power to remove the opponent\'s Disposition instead of restoring your own.],
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

== 4. Stealth & Precision Focuses
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
    [2a], [#strong[Overwatch];], [Once per scene, cancel a status of tier 2 or less about to hit an ally by shooting the source. In conflicts, your Defend can restore Disposition to #strong[any] ally.],
    [2b], [#strong[Trick Shot];], [Ignore Truths about cover and angles. A free #strong[Extra Feat] when you shoot objects (cut a rope, hit a switch, ricochet).],
    [3a], [#strong[One Shot];], [Once per session, a Shoot Attack against a non-major NPC #strong[Takes them Out] on a success.],
    [3b], [#strong[★ Sniper\'s Patience];], [Spend a scene setting up (4-segment clock). Your shot gets #strong[+2 bonus dice] for free and #strong[+2 Power] on a success.],
  )]
  , kind: table
  )

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

== 5. Knowledge Focuses
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
    [2a], [#strong[Battlefield Surgeon];], [In conflicts, Defend with Medicine can restore Disposition to #strong[any] ally and clear one tier-1 status.],
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

== 6. Social Focuses
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

== 7. Wilderness & Travel Focuses
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

== 8. Weird Focuses ◈
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
#colbreak()
== 9. Design Notes
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
//  CHAPTER — FRONTIER RULES
// =====================================================================
#chapter("Frontier Rules", [The year is 12,090 AD. The Nobility is in decline, but on the Frontier the castles still light up at dusk. This chapter covers the setting: Campaign Truths, day and night, the Kiss, Noble blood, banes, Noble science, bounties and the long roads between villages.], epigraph: [Night belongs to the Nobility. Sunrise is the Hunter's best weapon.])

== 1. The Setting in Brief
Ten thousand years from now, after nuclear war burned the old world, the #strong[Nobility] --- vampires who rebuilt civilisation with a science indistinguishable from sorcery --- ruled humanity for millennia. Their empire is now in decline. The Capital has its own concerns; the #strong[Frontier] is a scattering of fortified farm villages, desert trading posts, and ruins, where the remaining Nobles still descend from their castles to feed.

Humans survive on what little of the old science they kept, on fences of wood and garlic, and on #strong[Hunters];: professionals who kill Nobles, mutants, and the monsters that Noble experiments left behind. Hunters are needed, paid, and feared. Dhampirs --- half-human children of the Nobility --- are the best Hunters and the most hated.

#strong[Tone:] gothic horror on a post-apocalyptic frontier. Lone riders, dusty towns, moonlit castles, laser rifles beside wooden stakes, monsters with tragic histories, and Nobles who are beautiful, ancient, and bored.

#strong[D himself] is best used as a rumour, a mirror, or a rare NPC, not as a player character. Players can be dhampirs (see the Focus #emph[Carries the Blood of the Nobility];) without being D.

== 2. Campaign Truths
Agree on these at session zero. The first five are the #strong[core Truths];; replace or add from the optional list.

=== 2.1 Core Truths
#figure(
  [#table(
    columns: (5%, 22%, 73%),
    align: (auto,auto,auto,),
    table.header([\#], [Truth], [In play],),
    table.hline(),
    [1], [#strong[The Nobility are dying, but not dead];], [Nobles are rare, old, and terrible. A single Noble is a campaign arc, not a random encounter.],
    [2], [#strong[Night belongs to the Nobility];], [Noble powers work only after sunset (§4). Sunrise is the Hunter\'s best weapon.],
    [3], [#strong[The Frontier pays Hunters and fears them];], [Villages hire Hunters because they must. They don\'t want them to stay.],
    [4], [#strong[Noble science is sorcery];], [Machines, curses, genetic monsters, and weather control are the same thing. Arcana and Tech merge into the Occult and Science skills (§3).],
    [5], [#strong[Half-blood is cursed blood];], [Dhampirs are feared by humans and despised by Nobles. Sunlight hurts them; blood calls them.],
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
    [1], [#strong[The Sacred Ancestor still watches] --- the first Noble left plans that are still unfolding.],
    [2], [#strong[The Capital has forgotten the Frontier] --- no help is coming from the Capital.],
    [3], [#strong[Some Nobles want to end it] --- certain Nobles seek death, love, or escape from their own kind.],
    [4], [#strong[The machines still run] --- Noble castles keep working with no master inside, defended by guardians nobody controls.],
    [5], [#strong[The Barbarois remember their oath] --- monster-blooded clans still serve the Nobility for pay or loyalty.],
    [6], [#strong[Hunters compete for bounties] --- rival crews race for every contract. Bounties go to whoever brings back the proof.],
    [7], [#strong[The weather is a weapon] --- Noble weather control still runs in places and still fails.],
    [8], [#strong[The bitten are destroyed] --- Frontier law demands that the Kissed be killed or exiled.],
    [9], [#strong[The old faith is almost gone] --- crosses still work, but nobody remembers why.],
    [10], [#strong[Mutants are people too] --- mutants live everywhere, and how they\'re treated is a frontier politics question.],
    [11], [#strong[Something from outside is coming] --- the ancient war against beings from beyond the stars is not quite over.],
    [12], [#strong[The Hunters\' Code] --- Hunters keep a code: never abandon a contract, never hunt another Hunter\'s quarry. Breaking it makes you a target.],
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
    [Fight], [#strong[Ride] #emph[(was Drive/Pilot)];], [#strong[Noble Lore] #emph[(was Lore)];], [Intimidate],
    [Endure], [Craft], [#strong[Science] #emph[(was Tech)];], [Empathy],
    [#strong[Frontier] #emph[(was Survival)];], [], [Medicine], [#strong[Occult] #emph[(was Arcana)];],
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
    [#strong[Ride];], [Horses, cyborg horses, wagons, hover-vehicles, land-ships, and riding through a chase.],
    [#strong[Frontier];], [Wilderness survival, desert and wasteland travel, tracking, mutant animals, weather, finding water.],
    [#strong[Noble Lore];], [History, Noble houses and etiquette, the Sacred Ancestor, castle architecture, Noble weaknesses, old-world ruins.],
    [#strong[Science];], [Repairing, using, and disabling human and Noble machines; cyborg parts; Noble weapons.],
    [#strong[Occult];], [Psychic powers, curses, wards, hypnotism, Noble sorcery, the astral world, possession.],
    [#strong[Medicine];], [Surgery, poisons, mutations, and treating the Kiss (§6).],
  )]
  , kind: table
  )

#strong[Guideline:] Science and Occult often overlap. Let the player choose which applies, then fix it for that device or effect for the rest of the scene.

== 4. Day and Night
Time of day is always a #strong[scene Truth];. Every scene has one.

#figure(
  [#table(
    columns: (9.09%, 90.91%),
    align: (auto,auto,),
    table.header([Time Truth], [Effect],),
    table.hline(),
    [#strong[Day];], [Noble powers don\'t work. Nobles sleep in coffins and are helpless unless woken. Their guardians, servants, and machines are still active. Dhampirs face Sunlight Syndrome (§7.1).],
    [#strong[Dusk];], [One scene. The GM gains #strong[+2 Woe] as the sun sets. Nobles wake at the end of this scene.],
    [#strong[Night];], [Noble powers work. The GM may spend Woe on Noble night powers (§14). Scenes at night with a Noble present add #strong[+1 Woe] at the start of the scene (dangerous Truth).],
    [#strong[Dawn];], [One scene. Nobles must reach shelter or burn. Any Noble still in the open at the end of this scene takes #emph[burning] at tier 3 at once, and +3 each exchange after that.],
  )]
  , kind: table
  )

=== 4.1 The Dawn Clock
When the party must survive until morning, the GM sets a #strong[Dawn clock] (usually 6 or 8 segments).

- It ticks #strong[1 per scene] or #strong[1 per conflict exchange];.
- Players may tick it with the #strong[Advance] effect only by actions that waste time for the enemy (stalling, hiding, leading a chase in circles).
- When it fills, the scene becomes #strong[Dawn];.

Use the Dawn clock as a #strong[racing clock] against the Noble\'s own clock (#emph[Breach the Village 8];, #emph[Take the Girl 6];).

== 5. The Nobility
=== 5.1 Noble Ranks
#figure(
  [#table(
    columns: (9.9%, 41.58%, 21.78%, 26.73%),
    align: (auto,auto,auto,auto,),
    table.header([Rank], [Examples], [Conflict Disposition bonus], [Starting Woe when introduced],),
    table.hline(),
    [#strong[Lesser];], [A turned human, a Noble\'s servant made into a vampire], [+0], [1],
    [#strong[Noble];], [A minor Noble of a decayed house], [+2], [3],
    [#strong[Greater Noble];], [A count, a duke, a feared warlord], [+4], [5],
    [#strong[Ancient];], [A survivor of the old empire\'s height], [+6], [8 (and a danger clock that can end the campaign)],
  )]
  , kind: table
  )

=== 5.2 Undying
Nobles do not die of wounds. A Noble\'s physical statuses #strong[can\'t go above tier 5] unless the Attack uses a #strong[bane] (§8.1): a stake through the heart, beheading, sunlight, and so on.

- A Noble with a tier-5 physical status is #emph[broken] but can still act at night, and recovers all physical statuses after a full day\'s sleep.
- An Attack with a bane tag can take the status to #strong[tier 6: destroyed];.
- In a scripted conflict against a Noble, reducing its Disposition to 0 achieves the winning side\'s intent. If the intent is \"destroy it\", one PC must also make a #strong[bane strike];: one roll vs. Hard 18 with a bane weapon. On a failure, the Noble escapes or recovers, and the compromise is at least Significant.

=== 5.3 Noble Traits
Each Noble has #strong[3--5 power tags] and #strong[at least 1 weakness tag] beyond the standard banes, for example #emph[cannot enter uninvited];, #emph[obsessed with the past];, #emph[proud beyond reason];, #emph[hates mirrors];, #emph[bound to its castle grounds];. Players can learn them with #strong[Discover];.

#strong[Noble pride:] Nobles are proud. Once per scene, a PC may compel a Noble\'s pride (spend 1 Tychē Point or 1 Momentum): the Noble accepts a duel, gives a warning before striking, or lets an insult distract it. The GM gains 1 Woe.

== 6. The Kiss
When a Noble bites a human, the victim gains the status #strong[#emph[Kissed];];. It works like any status but has special rules.

#figure(
  [#table(
    columns: (11%, 89%),
    align: (auto,auto,),
    table.header([Kissed tier], [Effect],),
    table.hline(),
    [#strong[1];], [Two marks on the throat. Pale, tired, −1 on rolls in sunlight.],
    [#strong[2];], [The #strong[Call];: each night the Noble can spend 1 Woe to summon the victim. Resist with Pneuma or obey.],
    [#strong[3];], [Aversion to garlic and crosses (−1 when near them). The victim is a weakness tag for the party: #emph[\[name\] can be called];.],
    [#strong[4];], [The victim can\'t enter sunlight without becoming #emph[burning-1] per scene. Their Instinct becomes \"Protect my master\'s secrets.\"],
    [#strong[5];], [The victim obeys the Noble\'s spoken orders. Medicine can no longer treat the Kiss.],
    [#strong[6];], [#strong[Turned];: the victim becomes a Lesser Noble. A PC who is Turned is lost to the GM unless the table agrees on a Dhampir-like transformation (GM\'s choice, campaign-level).],
  )]
  , kind: table
  )

- #strong[Gaining tiers:] each bite adds tiers like any Attack (stacking rules apply). A Noble that feeds over several nights usually adds #strong[+1 tier per night];.
- #strong[Resisting:] the Kiss can be Resisted only with #strong[Pneuma] and only when the bite happens; it can\'t be Resisted afterwards.
- #strong[Treatment:] a Medicine roll vs. Hard 18 (once per day) lowers the Kiss by 1 tier per Power, but never below 1 while the Noble lives.
- #strong[Release:] destroying the Noble that gave the Kiss removes it completely, but a victim at tier 4+ gains a #strong[Pneuma Scar] (#emph[marked by the Kiss];).
- #strong[Frontier law:] in many villages (optional Truth 8), anyone known to be Kissed is exiled or killed. Hiding a Kiss is a common compel.

== 7. Noble Blood: Sunlight Syndrome and the Thirst
These rules apply to anyone with Noble blood: dhampirs (#emph[Carries the Blood of the Nobility];), and some mutants and cyborgs built with Noble parts.

=== 7.1 Sunlight Syndrome
Under the #strong[Day] Truth, in direct sunlight with no shade, a character with Noble blood gains #strong[#emph[Sun-Sick];];:

- #strong[+1 tier] at the start of each scene outdoors in the sun (stacking normally), or #strong[+2] in a desert or other place with harsh sun (Truth #emph[Merciless Sun];).
- Sun-Sick is a harmful status: it applies its tier as a penalty to physical rolls (Sōma and Akmē skills).
- Resist with #strong[Sōma] as normal. A wide hat, a dark cloak, or partial shade counts as #strong[+1 Sōma Edge] for that Resist.
- #strong[Recovery:] a full scene in shade or darkness lowers Sun-Sick by 2 tiers. At night it clears completely.
- #strong[Tier 6:] collapse. Taken Out until carried into shade, and gain a Sōma Scar if left for a whole day.

=== 7.2 The Thirst
Characters with Noble blood have a #strong[Thirst] status, tier 0--6. It doesn\'t penalise rolls until tier 3.

#figure(
  [#table(
    columns: (61%, 39%),
    align: (auto,auto,),
    table.header([Trigger], [Thirst],),
    table.hline(),
    [A scene with fresh blood spilled nearby (yours or someone else\'s)], [+1],
    [You\'re Taken Out, or a pool drops to 2 or less], [+1],
    [You use a ★ blood ability (marked #emph[Thirst] in its entry)], [+1],
    [The GM compels the Thirst and you accept (gain a Tychē Point)], [+1],
    [A full night of rest], [−1],
    [Drinking animal blood or blood from a willing donor (a scene, no roll)], [−2],
    [Drinking from an unwilling human], [Clear completely. Gain a Pneuma Scar the first time (#emph[I\'ve tasted it];)],
  )]
  , kind: table
  )

#figure(
  [#table(
    columns: (11%, 89%),
    align: (auto,auto,),
    table.header([Thirst tier], [Effect],),
    table.hline(),
    [#strong[0--2];], [No effect.],
    [#strong[3--4];], [−1 on Pneuma rolls when blood is visible. Others notice you\'re hungry (Empathy, Notice).],
    [#strong[5];], [Every scene with a bleeding human, Resist with Pneuma or move toward them.],
    [#strong[6];], [#strong[Bloodlust];: the GM controls your next action. Afterwards, Thirst drops to 3 and you gain a Pneuma Scar.],
  )]
  , kind: table
  )

#strong[Never feeding] is a Belief, not a rule. A dhampir who never drinks human blood is still a dhampir; the Thirst exists so the table can play that struggle.

== 8. Banes and Hunter\'s Gear
=== 8.1 Banes
A #strong[bane] is a tag that can destroy a Noble (§5.2). Standard banes:

#figure(
  [#table(
    columns: (15.84%, 22.77%, 61.39%),
    align: (auto,auto,auto,),
    table.header([Bane], [Works on], [Notes],),
    table.hline(),
    [#strong[Stake through the heart];], [All Nobles], [Wood, or an alloy that mimics it. The classic finishing blow.],
    [#strong[Beheading];], [All Nobles], [The blade must be able to cut a Noble (#emph[Noble-forged];, #emph[fine];, or a dhampir\'s strength).],
    [#strong[Sunlight];], [All Nobles], [Leaving a Noble in the open at Dawn counts as a bane strike.],
    [#strong[Fire] (sustained)], [Lesser Nobles; others while #emph[broken];], [A burning castle, a funeral pyre.],
    [#strong[Crosses and garlic];], [Lesser Nobles, weak Nobles], [They impose Truths (#emph[Warded];) rather than destroying. Greater Nobles laugh at them.],
    [#strong[Running water];], [Some Nobles (GM sets per Noble)], [A Truth that a Noble can\'t cross: #emph[the river runs between us];.],
  )]
  , kind: table
  )

Any personal weakness tag of a Noble can be #strong[upgraded to a bane] with 3 Power from Discover and Create effects, or a downtime clock (8 segments).

=== 8.2 Currency and Wealth
The setting\'s currency is the #strong[dala];. The 2d12 System doesn\'t track coins; use these story tags instead:

#figure(
  [#table(
    columns: (24%, 76%),
    align: (auto,auto,),
    table.header([Wealth tag], [Means],),
    table.hline(),
    [#emph[broke];], [Can\'t buy anything without a favour or a trade],
    [#emph[a few dalas];], [A meal, a night at the inn, a box of bolts],
    [#emph[a fat purse];], [A horse, a gun, a doctor\'s fee],
    [#emph[a Noble\'s bounty];], [A cyborg horse, a Noble weapon, a farm],
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
    [0], [Wooden stake, belt knife, flint striker, water skin], [#emph[stake] (bane)],
    [1], [Garlic bundle and a cross], [#emph[Warded] (create the Truth for one scene against Lesser Nobles; 1 Power)],
    [1], [Steel neck guard], [#emph[Armour 1] against bites only; the Kiss gains 1 fewer tier],
    [1], [Crossbow and wooden bolts], [#emph[+1 Attack] (range), #emph[bolts are stakes] (bane at range, Hard 18)],
    [1], [Revolver or rifle], [#emph[+1 Attack] (range)],
    [2], [Laser rifle (rare, Capital-made)], [#emph[+1 Attack] (range), #emph[burns through armour];; depletion 1 in d12 (power cell)],
    [1], [Long cloak and wide hat], [+1 Sōma Edge when Resisting Sun-Sick; #emph[+1 Feint] in the dark],
    [1], [Flares and sun-lamps], [Create #emph[False Dawn] for one exchange (2 Power). Lesser Nobles can\'t attack while it lasts],
    [0], [Cyborg horse (vehicle)], [#emph[tireless];, #emph[fast as the wind];; not on foot missions. Treat as a story tag when absent],
    [0], [Normal horse or mule (vehicle)], [#emph[sure-footed];; ticks the Grind clock 1 less per leg],
  )]
  , kind: table
  )

== 9. Noble Science
Noble machines and relics use #strong[Module A --- Cyphers & Artifacts];.

=== 9.1 Noble Cyphers (d12)
#figure(
  [#table(
    columns: (6.06%, 17.17%, 8.08%, 68.69%),
    align: (auto,auto,auto,auto,),
    table.header([d12], [Cypher], [Tier], [Effect],),
    table.hline(),
    [1], [Sun capsule], [4], [Attack (#emph[burning];) against one Noble, counts as a bane],
    [2], [Blood ampoule], [3], [Restore 3 Sōma; a dhampir also loses 2 Thirst],
    [3], [Mist grenade], [3], [Create #emph[Thick Mist] for a scene],
    [4], [Gravity disc], [4], [Create #emph[Weightless] in a small area, or carry a heavy load as light],
    [5], [Psychē-seal patch], [3], [Restore (fear or hypnotism); +1 to Resist the Call],
    [6], [Castle key-crystal], [2], [Opens one Noble door, or disables one guardian for a scene],
    [7], [Holo-ghost], [3], [Create #emph[Decoy] (a false image of yourself) for a scene],
    [8], [Electro-whip charge], [4], [Attack (#emph[stunned];), or +1 Attack in a conflict for one exchange],
    [9], [Healing gel], [3], [Restore (wounds) 3 tiers, divided as you like],
    [10], [Weather pill], [4], [Create a weather Truth (#emph[Sudden Storm];, #emph[Clear Skies];) for one scene],
    [11], [Sound blaster], [3], [Attack (#emph[deafened];), Disrupt one Occult effect],
    [12], [Unknown relic], [d6], [The player names a reasonable Effect; the GM sets the form and adds a quirk],
  )]
  , kind: table
  )

=== 9.2 Noble Artifacts
Noble artifacts carry the standard quirk #strong[#emph[the Nobility will want it back];];: it can be compelled for Tychē Points, and the GM may spend 1 Woe to make a Noble or its servants notice it.

#quote(block: true)[
#strong[★ Noble Longsword] --- #emph[Tags:] Noble-forged, +1 Attack (conflict gear). #emph[Ability:] counts as a bane for beheading; ignores #emph[Armour] on Nobles. #emph[Depletion:] none. #emph[Quirk:] the Nobility will want it back.

#strong[★ Dimension Pocket] --- #emph[Tags:] holds more than it should. #emph[Ability:] carry up to 3 extra load. Once per session, draw out an item you could plausibly have stored (no Momentum cost). #emph[Depletion:] 1 in d12 (it opens somewhere else for a scene). #emph[Quirk:] things inside come out wrong.

#strong[★ Cybernetic Eye] --- #emph[Tags:] sees in the dark, sees heat. #emph[Ability:] once per scene, free Discover about anything in your line of sight. #emph[Depletion:] 1 in d12 (blind in that eye for a scene). #emph[Quirk:] the Nobility will want it back.

#strong[Guardian Collar] --- #emph[Tags:] protected from the Call. #emph[Ability:] +1 tier reduction when Resisting the Kiss or the Call. #emph[Depletion:] 1 in d12 (it hums and burns: #emph[burned-1];). #emph[Quirk:] tells the Noble who made it where you are.
]

== 10. Bounties and Contracts
Most sessions start with a contract. The contract is the party\'s shared #strong[Goal];.

=== 10.1 Contract Sheet
#figure(
  [#table(
    columns: (16%, 84%),
    align: (auto,auto,),
    table.header([Element], [Example],),
    table.hline(),
    [#strong[Client];], [The mayor of Ransylva, on behalf of a farmer whose daughter was bitten],
    [#strong[Quarry];], [Count Varnas, a Noble (rank: Noble)],
    [#strong[Proof required];], [His head, his heart, or his signet ring],
    [#strong[Bounty];], [#emph[a Noble\'s bounty] (a Greater Noble: two)],
    [#strong[Deadline];], [Before the girl reaches Kissed-6 (danger clock, 6 segments)],
    [#strong[Complication];], [A rival Hunter crew has the same contract],
  )]
  , kind: table
  )

=== 10.2 Negotiating the Fee
Haggling with a client is a #strong[Negotiation] conflict if it meets the conflict test (Core Rules §10.1); otherwise one Persuade roll vs. Standard 15.

- Each Power above 1 raises the fee by one step (#emph[a fat purse] → #emph[a Noble\'s bounty];), or adds a perk (an advance, a horse, room and board, a share of the castle\'s salvage).
- A dhampir negotiating with humans faces the Truth #emph[Feared and Despised] (+1 step Difficulty), unless they\'re already known and trusted.

=== 10.3 Reputation
A Hunter\'s reputation is a #strong[power tag] gained at milestones (#emph[the Hunter who burned Castle Roth];). It counts as a tag on Persuade and Intimidate with Frontier folk. A #strong[bad reputation] (#emph[took the money and ran];) is a weakness tag that clients and rivals compel.

=== 10.4 Rival Hunters
Rival crews use the #strong[Faction Turn] rules (Module C.5) with a project clock on the same quarry. If their clock fills first, they claim the bounty, and the party\'s contract becomes a Disposition fight with the rivals (often a Negotiation or a Chase rather than a Fight).

== 11. Setting Conflict Types
These add to the conflict types in Core Rules §10.3. All use the standard scripting, Disposition, and compromise rules.

#figure(
  [#table(
    columns: (31.31%, 18.18%, 14.14%, 12.12%, 10.1%, 14.14%),
    align: (auto,auto,auto,auto,auto,auto,),
    table.header([Type], [Disposition], [Attack], [Defend], [Feint], [Maneuver],),
    table.hline(),
    [#strong[Hunt] (track a Noble or monster to its lair)], [Frontier or Investigate], [Investigate / Frontier], [Will / Endure], [Deceive], [Notice / Stealth],
    [#strong[Siege of the Night] (hold a village or camp until dawn)], [Noble Lore (tactics) or Craft], [Shoot / Fight], [Craft / Endure], [Deceive], [Notice],
    [#strong[Duel of Wills] (a Noble\'s gaze, hypnotism, the Call)], [Will], [Intimidate / Occult], [Will], [Deceive], [Empathy],
    [#strong[Castle Assault] (break into a Noble\'s castle)], [Science or Stealth], [Science / Fight], [Endure / Athletics], [Stealth], [Noble Lore],
    [#strong[Chase] (setting note)], [Ride or Athletics], [Ride / Shoot], [Ride], [Stealth], [Frontier],
  )]
  , kind: table
  )

=== 11.1 Special Rules
- #strong[Hunt:] the winner gets their intent #emph[and] chooses the time of the confrontation (day or night). If the party wins with the quarry\'s lair found by day, the next scene starts with #strong[Day] and the quarry asleep.
- #strong[Siege of the Night:] run alongside the #strong[Dawn clock] (§4.1). Each exchange ticks it by 1. If the Dawn clock fills before either side hits 0 Disposition, the Noble side must withdraw: the defenders win with a compromise based on their remaining Disposition.
- #strong[Duel of Wills:] a PC who loses is #strong[Taken Out] of the will contest and must follow the Noble\'s intent for one scene (or gains Kissed-1 if the intent was to feed). A Noble who loses must withdraw or show its true face (lose 1 power tag for the session).
- #strong[Castle Assault:] each exchange, the GM may spend 1 Woe to wake a guardian (reinforcement) instead of buying a bonus die. If a castle is taken during the day, its Noble\'s Disposition in the next Fight starts −2.

== 12. The Frontier: Travel and Region Truths
Use #strong[Module B --- The Grind & Travel];. The Frontier is harsh: most Grind clocks are #strong[6];, deserts and Noble-poisoned lands are #strong[4];.

=== 12.1 Frontier Travel Notes
- The Guide rolls #strong[Ride] or #strong[Frontier];.
- #strong[Cyborg horses] don\'t eat or tire: a party with them ignores the first Grind tick each leg. Normal horses need water: Supplies drop by 2 per leg in deserts.
- #strong[Night travel] halves Grind clock size but every encounter is at Night.

=== 12.2 Frontier Truth Generator (d12)
Use with Module C.3. Roll once per column or pick.

#figure(
  [#table(
    columns: (6.06%, 21.21%, 22.22%, 21.21%, 29.29%),
    align: (auto,auto,auto,auto,auto,),
    table.header([d12], [Terrain / Feature], [Atmosphere], [Hazard], [Secret],),
    table.hline(),
    [1], [Fortified farming village], [Sullen, watching faces], [Villagers with torches], [Someone in town is Kissed],
    [2], [Noble castle on a crag], [Silent music at midnight], [Guardian machines], [The Noble wants to die],
    [3], [Endless desert], [Merciless sun], [Sand creatures under the dunes], [A buried Noble city],
    [4], [Ruined old-world city], [Wind through dead towers], [Radiation pockets], [A pre-Noble weapon],
    [5], [Haunted forest], [Mist that never lifts], [Mutant beasts], [A Barbarois camp],
    [6], [Trading post and saloon], [Whiskey and fear], [Rival Hunters], [A Noble\'s spy runs the bar],
    [7], [Swamp of failed experiments], [Wet, rotting heat], [Bioweapon remnants], [A creature that can speak],
    [8], [Abandoned Noble laboratory], [Lights still on], [Automated defences], [The cure for the Kiss, maybe],
    [9], [Dry riverbed and canyon], [Dust storms], [Bandits on cyborg horses], [A water source the Nobles poisoned],
    [10], [Mountain pass], [Biting cold], [Avalanche], [A monk who remembers the Sacred Ancestor],
    [11], [Weather-control tower], [Storms that come out of nowhere], [Lightning], [The tower still answers orders],
    [12], [Graveyard of Hunters], [Unnatural stillness], [Restless dead], [A famous Hunter didn\'t die here],
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
    [#emph[Moonlit];], [Lowers Stealth Difficulty for Nobles; raises it for humans],
    [#emph[Moonless];], [+1 step Difficulty to Notice; Nobles and dhampirs ignore it],
    [#emph[Merciless Sun];], [Sun-Sick +2 per scene (§7.1)],
    [#emph[Garlic Fences];], [Lesser Nobles can\'t cross; Nobles −1 on all rolls inside],
    [#emph[Uninvited];], [A Noble can\'t enter this home unless invited],
    [#emph[Running Water];], [Some Nobles can\'t cross],
    [#emph[Noble\'s Domain];], [Inside a castle\'s grounds: the GM\'s Noble abilities cost 1 less Woe (minimum 1)],
    [#emph[Frightened Villagers];], [+1 step Difficulty to Persuade; failures may start a mob],
    [#emph[Feared and Despised];], [Dhampirs and mutants: +1 step Difficulty to all social rolls with humans],
    [#emph[Thick Mist];], [+1 step Difficulty to Shoot and Notice; Nobles can become mist here],
    [#emph[Guardian Machines];], [A danger clock of 4: when it fills, castle guardians attack],
    [#emph[Blood on the Air];], [Thirst +1 for those with Noble blood],
    [#emph[False Dawn];], [Lesser Nobles can\'t act; Nobles −1 on all rolls (lasts one exchange or scene)],
    [#emph[Dust Storm];], [+1 step Difficulty to Ride, Shoot, and Notice],
    [#emph[Hostile Crowd];], [Standard Truth: social rolls harder, violence draws a mob],
  )]
  , kind: table
  )

== 14. Woe Spends for the Night
Use with Core Rules §9.2. Most require the #strong[Night] Truth.

#figure(
  [#table(
    columns: (15%, 8%, 77%),
    align: (auto,auto,auto,),
    table.header([GM spend], [Cost], [Effect],),
    table.hline(),
    [#strong[The Gaze];], [1], [A PC who meets a Noble\'s eyes takes #emph[entranced-2] (Resist with Pneuma). Start a Duel of Wills if it matters],
    [#strong[The Call];], [1], [Summon one Kissed victim of tier 2+ (§6)],
    [#strong[Mist Form];], [2], [The Noble becomes mist and leaves the scene, or passes through a gap],
    [#strong[Command the Beasts];], [2], [Wolves, bats, or mutant creatures arrive as a minion group],
    [#strong[Uncanny Speed];], [1], [The Noble acts first or changes its scripted action for 1 Woe (instead of 3)],
    [#strong[The Castle Wakes];], [3], [Create a castle Truth (#emph[Shifting Halls];, #emph[Sealed Doors];, #emph[Gravity Fails];)],
    [#strong[Rise From the Coffin];], [3], [Once per session, a Noble #emph[broken] earlier in the night recovers 2 tiers of physical status],
    [#strong[Weather Turns];], [2], [Create a weather Truth for the scene],
    [#strong[Servant of the Night];], [3], [A Barbarois or significant servant arrives],
  )]
  , kind: table
  )

== 15. Design Notes
- #strong[Undying (§5.2)] is the main change from the core rules. It means a Noble fight has two stages: wear it down, then land a bane strike. Watch how long this makes fights; if too long, allow a bane strike as part of the final Attack instead of a separate roll.
- #strong[The Kiss and the Thirst] are both statuses so that the existing Restore, Resist, and compel rules work on them. Neither one reduces rolls until mid-tier, so they create tension before they create penalties.
- #strong[Sunlight Syndrome] limits dhampirs during the day, which is when the rest of the party is strongest. That trade is the core of the dhampir\'s role.
- #strong[Science vs. Occult:] keep the line blurred on purpose. The guideline in §3 stops arguments without forcing a fixed answer.
- #strong[Bounties as Goals] give the party a shared Goal each session, and personal Goals sit inside it.

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

== 2. Quick Reference
#figure(
  [#table(
    columns: (5%, 17%, 11%, 33%, 34%),
    align: (auto,auto,auto,auto,auto,),
    table.header([\#], [Descriptor], [Pool], [Power tag], [Weakness tag],),
    table.hline(),
    [1], [Bitten], [Pneuma], [#emph[the Call doesn\'t take me];], [#emph[marks on my throat];],
    [2], [Bitter], [Psychē], [#emph[expects the worst];], [#emph[trusts no one];],
    [3], [Capital-Born], [Psychē], [#emph[educated in the Capital];], [#emph[soft hands];],
    [4], [Charming], [Pneuma], [#emph[a smile that opens doors];], [#emph[can\'t resist a pretty face];],
    [5], [Cold], [Pneuma], [#emph[nothing shows on my face];], [#emph[pushes people away];],
    [6], [Coveted], [Pneuma], [#emph[beauty the Nobles notice];], [#emph[the Nobility want me];],
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
A Noble drank from you once and let you live. The marks never faded.
]

- #strong[Pool:] +2 Pneuma
- #strong[Power tag:] #emph[the Call doesn\'t take me]
- #strong[Weakness tag:] #emph[marks on my throat]
- #strong[Suggested Instinct:] \"Always keep my collar buttoned.\"
- #strong[Frontier hook:] Which Noble bit you, and why did it stop?

=== 2. Bitter
#quote(block: true)[
The Frontier taught you that hope is how people get killed.
]

- #strong[Pool:] +2 Psychē
- #strong[Power tag:] #emph[expects the worst]
- #strong[Weakness tag:] #emph[trusts no one]
- #strong[Suggested Instinct:] \"Always ask who benefits.\"
- #strong[Frontier hook:] Who betrayed you, and do they still live?

=== 3. Capital-Born
#quote(block: true)[
You grew up behind the Capital\'s walls, with books, machines, and safety. The Frontier is a different world.
]

- #strong[Pool:] +2 Psychē
- #strong[Power tag:] #emph[educated in the Capital]
- #strong[Weakness tag:] #emph[soft hands]
- #strong[Suggested Instinct:] \"Always look for the scientific explanation first.\"
- #strong[Frontier hook:] Why did you leave the Capital, and can you ever go back?

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
You have the kind of beauty the Nobility collect: as brides, as servants, as trophies.
]

- #strong[Pool:] +2 Pneuma
- #strong[Power tag:] #emph[beauty the Nobles notice]
- #strong[Weakness tag:] #emph[the Nobility want me]
- #strong[Suggested Instinct:] \"Always cover my face when I travel at night.\"
- #strong[Frontier hook:] Which Noble house has already sent for you?

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
The old faith is nearly gone, but you still keep it. Crosses burn Nobles for a reason.
]

- #strong[Pool:] +2 Pneuma
- #strong[Power tag:] #emph[faith the dark can feel]
- #strong[Weakness tag:] #emph[won\'t break my vows]
- #strong[Suggested Instinct:] \"Always pray before a hunt.\"
- #strong[Frontier hook:] What vow did you make, and who did you make it to?

=== 9. Doomed
#quote(block: true)[
A seer, a Noble, or a doctor told you how you\'ll die. You believe them.
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
You\'ve seen what Nobles do in their castles. Nothing frightens you anymore, not even in your sleep.
]

- #strong[Pool:] +2 Psychē
- #strong[Power tag:] #emph[seen too much to scare]
- #strong[Weakness tag:] #emph[nightmares every night]
- #strong[Suggested Instinct:] \"Always stay awake on the first watch.\"
- #strong[Frontier hook:] What did you see in the castle?

=== 15. Mutated
#quote(block: true)[
The old wars and the Noble experiments left their mark on your bloodline: scales, extra senses, a too-long arm, eyes that glow.
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
- \"I am a #strong[Bitten] #strong[Frontier Doctor] who #strong[Heals the Kissed];.\"
- \"I am a #strong[Cold] #strong[Sellsword] who #strong[Carries the Blood of the Nobility];.\"
- \"I am a #strong[Greedy] #strong[Broker] who #strong[Collects the Bounty];.\"
- \"I am a #strong[Feral] #strong[Mutant] who #strong[Hunts the Beasts of the Frontier];.\"
- \"I am a #strong[Vengeful] #strong[Cyborg Hunter] who #strong[Seeks Revenge on a Noble];.\"
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
    [2], [Stalker], [Furcifer], [Stealth], [8 / 12 / 8 / 8], [Castle thief, assassin, day-hunter of sleeping Nobles],
    [3], [Frontier Doctor], [Savant], [Medicine or Noble Lore], [7 / 8 / 13 / 8], [Healer, scholar, treats the Kiss],
    [4], [Broker], [Interlocutor], [Persuade], [7 / 9 / 9 / 11], [Bounty broker, gambler, village elder, negotiator],
    [5], [Rider], [Explorator], [Frontier], [11 / 11 / 7 / 7], [Tracker, scout, marksman, horse-master],
    [6], [Occultist], [Adept], [Occult or Science], [7 / 8 / 9 / 12], [Psychic, curse-witch, Noble-science scavenger],
    [7], [Mutant], [New], [Athletics or Stealth], [11 / 11 / 6 / 8], [Monster-blooded fighter and infiltrator],
    [8], [Cyborg Hunter], [New], [Shoot or Fight], [12 / 9 / 9 / 6], [Rebuilt killer with implants],
    [9], [Warden], [New], [Craft], [10 / 9 / 9 / 8], [Village defender, trap-maker, siege leader],
  )]
  , kind: table
  )

#strong[Dhampirs] are not a playbook. Any playbook can take the Focus #emph[Carries the Blood of the Nobility] (#emph[Frontier Focuses];).

#strong[Skill names] follow #emph[Frontier Rules] §3 (Ride, Frontier, Noble Lore, Science, Occult).

#pagebreak()
#columns(2, gutter: 6mm)[
== 1. Sellsword
#quote(block: true)[
Muscle for hire. You stand between the village and the thing coming out of the dark, and you hold the stake when it\'s time.
]

#playbook-art("01-sellsword.jpg", "Sellsword playbook character art")

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

=== 1.1 Special Abilities
#figure(
  [#table(
    columns: (5%, 20%, 75%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Juggernaut];], [When you Resist physical harm with Sōma, reduce the status by #strong[3 tiers] instead of 2.],
    [2], [#strong[Stake Driver];], [When you make a #strong[bane strike] (Frontier Rules §5.2) with Fight or Brawl, gain a #strong[free bonus die];. On a success, the Noble can\'t spend Woe on #emph[Rise From the Coffin] this session.],
    [3], [#strong[Bodyguard];], [When an ally within reach would suffer a consequence, you may take it instead. If you Resist it, your Edge counts as 1 higher for that roll. This includes a Noble\'s bite: you can take the Kiss in their place.],
    [4], [#strong[Wade Through Them];], [When you attack a group or minions (wolves, Barbarois packs, turned villagers), you get #strong[one free Extra Feat] per roll.],
    [5], [#strong[Menacing];], [You may use #strong[Sōma] for Intimidate Effort and Resistance. When you succeed on Intimidate against minions or a mob, spend 1 Momentum to make them flee, surrender, or freeze.],
    [6], [#strong[Pain Tolerance];], [Ignore the roll penalty from harmful physical statuses of tier 1--2. At tier 3+, the penalty is reduced by 1. This also applies to #emph[Sun-Sick];.],
    [7], [#strong[★ Blood Fury];], [Once per scene, enter a fury: you get #strong[+1 bonus die] (free) on Fight, Brawl, and Athletics rolls for the rest of the scene. You can\'t script Defend or retreat. At scene end, lose 2 Sōma or take #emph[Weary];. If you have Noble blood, gain +1 Thirst.],
    [8], [#strong[★ Last One Standing];], [Once per scene, when a status would reach tier 6 on you or a pool would hit 0, keep acting until the end of the scene. Then you\'re Taken Out as normal.],
    [◆], [#strong[A Name the Nobles Know];], [Your reputation is a #strong[Campaign Truth] (#emph[\"Nobles have heard of \[name\]\"];). In Fight conflicts, Noble and servant Disposition starts #strong[−2];. Once per session, a Noble\'s pride compel against you costs nothing.],
  )]
  , kind: table
  )
#colbreak()
=== 1.2 Starting Equipment
#strong[Signature weapon (choose 1)]

#figure(
  [#table(
    columns: (11%, 89%),
    align: (auto,auto,),
    table.header([Option], [Item],),
    table.hline(),
    [#strong[A];], [#strong[Longsword & stake belt] (2) --- #emph[+1 Attack];, #emph[stakes always at hand] (you never need to declare a stake as load)],
    [#strong[B];], [#strong[Great-axe] (2) --- #emph[+1 Attack];, #emph[heavy enough to behead];: counts as the beheading bane against a Noble with a tier-4+ physical status],
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
    [1], [Throwing stakes ×3 --- #emph[+1 Attack] (range), #emph[bane] at Hard 18],
    [1], [Chain and manacles],
    [1], [Whetstone and oil],
    [1], [Flask of Frontier whiskey],
  )]
  , kind: table
  )

#strong[Always carried (0):] wooden stake, knuckle-wraps, a trophy from your first kill.

=== 1.3 BIG Examples
- #strong[Belief:] \"A village that pays me gets my blood, not just my blade.\" / \"Nobles are only as strong as the fear they feed on.\"
- #strong[Goal:] \"Get the farmer\'s family to the next town by sunset.\" / \"Drive a stake into Count Varnas.\"
- #strong[Instinct:] \"Always stand between my friends and the door.\" / \"Never let a Noble finish its speech.\"

#strong[Relationships:] Ally --- a blacksmith who makes your stakes, an old hunting partner, a saloon keeper who gives you credit. Rival --- a rival Hunter who stole your last bounty, a Barbarois who beat you once, a sheriff who wants you gone.

]

#pagebreak(weak: true)
#columns(2, gutter: 6mm)[
== 2. Stalker
#quote(block: true)[
You hunt by day. While the Noble sleeps, you climb the castle walls, pick the locks, find the coffin, and open it.
]

#playbook-art("02-stalker.jpg", "Stalker playbook character art")

#figure(
  [#table(
    columns: (25%, 75%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Akm / Psy / Pne)];], [8 / 12 / 8 / 8],
    [#strong[Edge];], [Akmē 2, plus 1 in Psychē or Sōma],
    [#strong[Anchor skill];], [Stealth],
    [#strong[Suggested skills];], [+4 Stealth · +3 Notice, Craft · +2 Athletics, Deceive, Shoot · +1 Fight, Science, Investigate, Noble Lore],
    [#strong[XP trigger];], [Address a challenge with stealth or precision],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2):] #emph[light on my feet] · #emph[eyes in the back of my head] · #emph[steady hands] · #emph[knows castle layouts] · #emph[forgettable face] · #emph[patient as a stone]

=== 2.1 Special Abilities
#figure(
  [#table(
    columns: (5%, 20%, 75%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Ghost];], [When you spend Effort on a Stealth roll, your first use of Effort costs 0 pool points. Once per scene, when spotted, spend 1 Momentum to declare you were never seen; you\'re in a nearby hidden position.],
    [2], [#strong[Coffin Finder];], [Once per day inside a castle, ruin, or lair, ask a free #strong[Discover];: \"Where does it sleep?\" or \"Where\'s the weak point in this place?\"],
    [3], [#strong[Light Fingers];], [When you succeed on a theft, plant, or sabotage roll (Stealth or Craft), gain a #strong[free Extra Feat];.],
    [4], [#strong[Infiltrator];], [Once per roll, ignore one Truth that would raise the Difficulty of sneaking, climbing, or bypassing security, including Noble Truths such as #emph[Guardian Machines] or #emph[Shifting Halls];.],
    [5], [#strong[Quick Reflexes];], [You always act first when violence breaks out. In conflicts, changing one of your scripted actions costs #strong[1 Momentum] instead of 2.],
    [6], [#strong[Escape Artist];], [When you Resist capture, restraint, falls, or traps with Akmē, the cost is #strong[0 on a highest die of 5+];.],
    [7], [#strong[★ Flashback];], [Once per mission, declare a flashback to something you prepared earlier. Pay Momentum by plausibility: 0 (obvious), 1 (reasonable), 2 (a stretch), 3 (wild). Then roll as normal; on a success, it happened.],
    [8], [#strong[★ Strike While It Sleeps];], [Against an unaware, #emph[Impeded];, or sleeping target, Attack effects cost #strong[half Power (round up)];. A bane strike against a sleeping Noble is #strong[Standard 15] instead of Hard 18.],
    [◆], [#strong[Nobody Sees Me Coming];], [Once per session, declare you\'re already somewhere you could plausibly have reached. Your first roll there gets #strong[+2 bonus dice for free];, and the GM can\'t spend Woe to reveal you during that roll.],
  )]
  , kind: table
  )
#colbreak()
=== 2.2 Starting Equipment
#strong[Signature item (choose 1)]

#figure(
  [#table(
    columns: (11%, 89%),
    align: (auto,auto,),
    table.header([Option], [Item],),
    table.hline(),
    [#strong[A];], [#strong[Wooden throwing needles] (1) --- #emph[+1 Attack] (range), #emph[silent];, #emph[bane] at Hard 18 against a Noble\'s heart],
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
    [1], [Lockpicks and a Noble key-probe --- #emph[opens what\'s closed];, works on Noble locks at +1 step Difficulty],
    [1], [Long knives and garrotte --- #emph[+1 Attack];, #emph[+1 Feint];],
    [1], [Smoke pellets ×2 --- #emph[+1 Feint];, Create #emph[Thick Mist] (1 Power)],
    [1], [Climbing spikes and silk rope (15 m)],
    [1], [Hooded lantern and mirror shard --- shows what a Noble\'s reflection isn\'t],
  )]
  , kind: table
  )

#strong[Always carried (0):] wooden stake, soft-soled boots, a lucky coin.

=== 2.3 BIG Examples
- #strong[Belief:] \"A Noble asleep is just a corpse with a timer.\" / \"Take what they stole, and leave nothing behind.\"
- #strong[Goal:] \"Find the Countess\'s coffin before dusk.\" / \"Steal the key-crystal from the castle vault.\"
- #strong[Instinct:] \"Always find three ways out.\" / \"Never be in the castle when the sun sets.\"

#strong[Relationships:] Ally --- a fence at the trading post, a castle servant who leaves the gate open, a mentor who taught you the walls. Rival --- a guardian machine you\'ve escaped twice, a thief who works for the Nobles, a Hunter who thinks stealth is cowardice.

]

#pagebreak(weak: true)
#columns(2, gutter: 6mm)[
== 3. Frontier Doctor
#quote(block: true)[
The only doctor for a hundred kilometres. You sew up Hunters, deliver babies, and know more about the Kiss than anyone wants to.
]

#playbook-art("03-frontier-doctor.jpg", "Frontier Doctor playbook character art")

#figure(
  [#table(
    columns: (25%, 75%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Akm / Psy / Pne)];], [7 / 8 / 13 / 8],
    [#strong[Edge];], [Psychē 2, plus 1 in Pneuma or Akmē],
    [#strong[Anchor skill];], [Medicine or Noble Lore],
    [#strong[Suggested skills];], [+4 Medicine · +3 Noble Lore, Investigate · +2 Notice, Science, Empathy · +1 Will, Shoot, Ride, Persuade],
    [#strong[XP trigger];], [Address a challenge with knowledge, insight, or healing],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2):] #emph[steady surgeon\'s hands] · #emph[seen every wound there is] · #emph[reads old books] · #emph[the village trusts me] · #emph[knows what the Kiss does] · #emph[calm in a crisis]

=== 3.1 Special Abilities
#figure(
  [#table(
    columns: (5%, 20%, 75%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Field Surgeon];], [Restore effects from your Medicine rolls remove #strong[2 tiers per Power];. (One cost reduction per Effect.)],
    [2], [#strong[Treat the Kiss];], [Your Medicine rolls against #emph[Kissed] are #strong[Standard 15] instead of Hard 18, and you can treat once per scene instead of once per day.],
    [3], [#strong[Read the Body];], [When you examine a victim, a corpse, or a slain creature, ask #strong[2 free Discover] questions about what did it and how.],
    [4], [#strong[Anatomy of Monsters];], [When you tell an ally a creature\'s weak point (a Discover you made this scene), that ally\'s next successful Attack on it gains #strong[+1 Power];.],
    [5], [#strong[Chemist];], [In the Players\' Turn, spend 1 Check to make one cypher from: #emph[healing gel] (tier 2), #emph[mind-seal patch] (tier 2), #emph[blood ampoule] (tier 2), or #emph[garlic smoke] (tier 2: Create #emph[Warded] against Lesser Nobles).],
    [6], [#strong[Bedside Manner];], [Use Medicine or Empathy to Restore fear and despair statuses. Once per scene, a successful roll removes #emph[Frightened Villagers] from the scene.],
    [7], [#strong[★ Not on My Table];], [Once per session, when an ally is Taken Out by physical harm, they don\'t die: they\'re stabilised at tier 5, and wake after a short rest.],
    [8], [#strong[★ Serum];], [With a sample of a specific Noble\'s blood, run a downtime clock (6 segments). When it fills, you create a #strong[bane] for that Noble (Frontier Rules §8.1), and the party\'s Attacks against it inflict #strong[+1 tier];.],
    [◆], [#strong[The Cure];], [Your research works. You can remove #emph[Kissed] of any tier up to 5 with one Medicine roll vs. Hard 18, even while the Noble lives. This becomes a #strong[Region Truth] (#emph[\"The doctor can cure the Kiss\"];), and Noble houses will send for you, or send against you.],
  )]
  , kind: table
  )
#colbreak()
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
    [1], [Garlic tinctures and holy-water vials --- #emph[+1] on Medicine against the Kiss],
    [1], [Revolver --- #emph[+1 Attack] (range)],
    [1], [Books of Noble Lore --- #emph[the answer is in here somewhere] (Noble Lore tag)],
    [1], [Microscope and sample case],
    [0], [Mule and medical wagon (vehicle)],
  )]
  , kind: table
  )

#strong[Always carried (0):] scalpel, spectacles, a small cross.

=== 3.3 BIG Examples
- #strong[Belief:] \"Every life is worth saving, even a mutant\'s.\" / \"Knowledge is the only thing the Nobles can\'t take back.\"
- #strong[Goal:] \"Keep the mayor\'s daughter below Kissed-4 until the Hunter returns.\" / \"Find out what the Noble is doing in its laboratory.\"
- #strong[Instinct:] \"Always check the throat first.\" / \"Never let a patient die alone.\"

#strong[Relationships:] Ally --- a patient who owes you their life, a Capital professor who writes back, a Hunter you\'ve patched up too often. Rival --- a quack selling fake Kiss cures, a Noble scientist whose notes you stole, a mayor who wants the bitten burned.

]

#pagebreak(weak: true)
#columns(2, gutter: 6mm)[
== 4. Broker
#quote(block: true)[
Contracts, rumours, debts, and deals. You find the work, set the price, and make sure the client pays.
]

#playbook-art("04-broker.jpg", "Broker playbook character art")

#figure(
  [#table(
    columns: (25%, 75%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Akm / Psy / Pne)];], [7 / 9 / 9 / 11],
    [#strong[Edge];], [Pneuma 2, plus 1 in Psychē or Akmē],
    [#strong[Anchor skill];], [Persuade],
    [#strong[Suggested skills];], [+4 Persuade · +3 Empathy, Deceive · +2 Notice, Noble Lore, Will · +1 Investigate, Shoot, Ride, Intimidate],
    [#strong[XP trigger];], [Address a challenge with charm, lies, or bargaining],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2):] #emph[silver tongue] · #emph[knows every saloon on the Frontier] · #emph[reads a bluff] · #emph[owed many favours] · #emph[dressed like money] · #emph[speaks the Nobles\' tongue]

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
    [6], [#strong[Courtly Manners];], [You know Noble etiquette. In a Duel of Wills, you may use #strong[Persuade] to Defend. Compelling a Noble\'s pride (Frontier Rules §5.3) costs you nothing once per scene.],
    [7], [#strong[★ Contacts Everywhere];], [Once per session, declare a useful contact in this town. Pay Momentum by plausibility: 0 (obvious), 1 (reasonable), 2 (a stretch), 3 (wild). They exist and owe you one favour.],
    [8], [#strong[★ Hired Guns];], [Once per mission, spend a wealth tag (#emph[a fat purse] or better) to hire a minion group with 2 power tags and 1 weakness. It acts as one group and fights for you for the mission.],
    [◆], [#strong[The Word on the Frontier];], [Your word is a #strong[Region Truth] (#emph[\"\[name\]\'s deal is law here\"];). Once per session, end a Negotiation or Argument conflict in your favour; the compromise is at most Minor.],
  )]
  , kind: table
  )
#colbreak()
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

#strong[Always carried (0):] pocket watch, calling cards, a Noble\'s old signet ring you shouldn\'t have.

=== 4.3 BIG Examples
- #strong[Belief:] \"Everything on the Frontier has a price, even mercy.\" / \"A Hunter without a broker is a corpse that works for free.\"
- #strong[Goal:] \"Get the village to pay double before we ride out.\" / \"Find out who really posted this bounty.\"
- #strong[Instinct:] \"Always get half up front.\" / \"Never sit with my back to the saloon doors.\"

#strong[Relationships:] Ally --- a mayor who trusts you, a saloon owner who passes on rumours, a Hunter you\'ve represented for years. Rival --- a rival broker in the Capital, a Noble\'s agent who outbids you, a client you cheated.

]

#pagebreak(weak: true)
#columns(2, gutter: 6mm)[
== 5. Rider
#quote(block: true)[
Born in the saddle and raised on the open Frontier. You find the tracks, read the weather, and hit what you aim at.
]

#playbook-art("05-rider.jpg", "Rider playbook character art")

#figure(
  [#table(
    columns: (26%, 74%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Akm / Psy / Pne)];], [11 / 11 / 7 / 7],
    [#strong[Edge];], [Sōma 1, Akmē 1, plus 1 in any pool],
    [#strong[Anchor skill];], [Frontier],
    [#strong[Suggested skills];], [+4 Frontier · +3 Ride, Shoot · +2 Notice, Athletics, Endure · +1 Stealth, Fight, Medicine, Noble Lore],
    [#strong[XP trigger];], [Address a challenge with endurance or the land],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2):] #emph[never lost] · #emph[reads tracks like a book] · #emph[one with my horse] · #emph[dead-eye] · #emph[knows the weather] · #emph[desert-tough]

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
    [8], [#strong[★ Outrun the Night];], [You can travel by night without halving the Grind clock. In a Chase against Nobles or their servants, your side\'s Disposition is #strong[+3];.],
    [◆], [#strong[Rider of the Frontier];], [Your legend is a #strong[Campaign Truth] (#emph[\"No one knows the Frontier like \[name\]\"];). Every Advance on a Journey clock you make counts double. Once per session, you arrive anywhere you could reach in two days, by sundown today.],
  )]
  , kind: table
  )
#colbreak()
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
- #strong[Goal:] \"Track the Barbarois to their camp before nightfall.\" / \"Get the party across the Sand Sea in three days.\"
- #strong[Instinct:] \"Always water the horse first.\" / \"Never ride the same trail twice.\"

#strong[Relationships:] Ally --- a horse-breeder, a desert nomad, a hermit who shares water. Rival --- a bandit chief on a cyborg horse, a rival tracker, a sand creature that took your old mount.

]

#pagebreak(weak: true)
#columns(2, gutter: 4mm)[
== 6. Occultist
#quote(block: true)[
Psychic, curse-witch, hypnotist, or scavenger of Noble machines. You use the powers the Nobility left behind, and the Frontier distrusts you for it.
]

#playbook-art("06-occultist.jpg", "Occultist playbook character art")

#figure(
  [#table(
    columns: (25%, 75%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Akm / Psy / Pne)];], [7 / 8 / 9 / 12],
    [#strong[Edge];], [Pneuma 2 (Occult) or Psychē 2 (Science), plus 1 in any other pool],
    [#strong[Anchor skill];], [Occult (psychic powers, curses, sorcery) or Science (Noble machines, gadgets)],
    [#strong[Suggested skills];], [+4 Occult · +3 Noble Lore, Will · +2 Notice, Medicine, Persuade · +1 Investigate, Empathy, Deceive, Science],
    [#strong[XP trigger];], [Address a challenge with your powers or Noble science],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2):] #emph[touched by the Nobility\'s sorcery] · #emph[disciplined mind] · #emph[sees what others can\'t] · #emph[blessed by the old faith] · #emph[tinkers with Noble machines] · #emph[fluent in the old pacts]

=== 6.1 Core Feature --- Domain (free)
Use the Adept\'s #strong[Domain] rules (Generic Playbooks §8.1) unchanged: workings with your anchor skill, scope sets Difficulty, each working costs 1 point from Pneuma (Occult) or Psychē (Science), and doubles on a failure cause backlash.

#strong[Setting Domains:]

#figure(
  [#table(
    columns: (46%, 54%),
    align: (auto,auto,),
    table.header([Occult Domains], [Science Domains],),
    table.hline(),
    [#emph[psychic force] (telekinesis, mind blasts)], [#emph[Noble machines] (command guardians, open doors)],
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
    [2], [#strong[Ward Against the Night];], [You can create protective statuses (#emph[warded-X];) with Enhance. While warded, an ally reduces supernatural harm by #strong[+1 tier] when Resisting, including the Gaze, the Call, and the Kiss.],
    [3], [#strong[Sense the Unseen];], [Once per scene, ask a free Discover about #strong[hidden supernatural or Noble-science forces] nearby. You always notice when a Noble uses its powers near you.],
    [4], [#strong[Over-channel];], [When you use Effort for Power on a working, gain #strong[+2 Power] instead of +1, but take #emph[strained-1];.],
    [5], [#strong[Ritual];], [Given time, materials, and a safe place, run a working as a #strong[progress clock] (8 segments for Formidable, 12 for Heroic). Ritual results can create Site or Region Truths: a warded valley, a broken weather tower, a castle sealed shut.],
    [6], [#strong[Familiar];], [You have a doll, a bat, a homunculus, or a small Noble drone, with 1 power tag and 1 weakness. It can scout (one free Discover per scene where it can reach), carry messages, or handle simple tasks. It can\'t fight.],
    [7], [#strong[★ Second Domain];], [Gain a second Domain. Workings in it use the same rules.],
    [8], [#strong[★ Unleash];], [Once per scene, a working hits #strong[every target] in an area or group: each one receives the full Attack effects you buy. Afterwards, take #emph[Weary] or lose 3 points from your casting pool.],
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
    [#strong[B];], [#strong[Noble gauntlet] (1) --- #emph[focus for my workings] (Science tag); stores one cypher in addition to your Cypher Limit],
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
    [1], [Grimoire or salvaged Noble manual],
    [1], [Tool roll and spare power cells (Science)],
    [1], [Pistol --- #emph[+1 Attack] (range)],
  )]
  , kind: table
  )

#strong[Always carried (0):] a ring, a pendant, or a tattoo that marks what you are.

=== 6.4 BIG Examples
- #strong[Belief:] \"The Nobles\' power isn\'t evil; how they used it was.\" / \"Every gift has a price, and I\'ve already paid mine.\"
- #strong[Goal:] \"Break the curse on the well before the next full moon.\" / \"Get the castle\'s guardian machines to obey me.\"
- #strong[Instinct:] \"Always look at a stranger\'s reflection.\" / \"Never use my power in front of villagers.\"

#strong[Relationships:] Ally --- a teacher who vanished into a castle, a village wise-woman, a Noble machine that likes you. Rival --- a psychic Hunter from a rival crew, a Noble sorcerer, a priest who calls you a witch.

]

#pagebreak(weak: true)
#columns(2, gutter: 6mm)[
== 7. Mutant
#quote(block: true)[
The old wars and the Nobles\' experiments made your bloodline something more, or less, than human. You can fight, climb, hide, and endure like a monster, because you are one, as far as the villagers can tell.
]

#playbook-art("07-mutant.jpg", "Mutant playbook character art")

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
    [#strong[Shadow-melder] (Barbarois)], [#emph[one with the shadows];], [Once per scene, move from one shadow to another you can see (no roll unless guarded)],
    [#strong[Venom];], [#emph[poisonous];], [Spend 1 Power on an Attack to add #emph[poisoned-1];, which rises by 1 each scene until treated],
    [#strong[Elastic body];], [#emph[stretches and squeezes];], [Reach 5 m; fit through any gap a hand can pass],
    [#strong[Burrower] (sand or soil)], [#emph[swims through earth];], [Move under sand or soft soil; #emph[+1 Maneuver] in desert Fights],
    [#strong[Regeneration];], [#emph[heals fast];], [A short rest restores #strong[2 + Edge] Sōma and lowers one physical status by 1],
    [#strong[Mimic];], [#emph[voices and faces];], [Copy a voice you\'ve heard, or reshape your face for a scene (#emph[+1 Feint];)],
    [#strong[Shapeshifter] (Barbarois)], [#emph[beast form];], [Turn into one animal (wolf, bat, panther) for a scene; you keep your pools and skills but can\'t use gear],
  )]
  , kind: table
  )
#colbreak()
=== 7.2 Special Abilities
#figure(
  [#table(
    columns: (5%, 20%, 75%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Further Mutation];], [Gain one more Mutation. You can take this ability up to twice.],
    [2], [#strong[Old Oath];], [Barbarois and Noble servants recognise your blood. Once per scene, Persuade or Intimidate with them is one step easier, or ask a free Discover about their tricks.],
    [3], [#strong[Toxic Blood];], [Creatures that bite or drink from you gain #emph[poisoned-2];. The Kiss on you gains #strong[1 fewer tier];.],
    [4], [#strong[Waste-Hardened];], [Ignore the #emph[Exposed] and #emph[Sick] Grind conditions when they come from radiation, poison, or bad water.],
    [5], [#strong[Monstrous Presence];], [You may use #strong[Sōma] for Intimidate Effort and Resistance. Against minions, a successful Intimidate makes them flee for 1 Momentum.],
    [6], [#strong[Hunter\'s Senses];], [You can smell blood, fear, and Nobles. Once per scene, free Discover: \"Who here is not what they seem?\"],
    [7], [#strong[★ Full Transformation];], [Once per scene, release your monstrous form: free #strong[+1 bonus die] on Brawl, Athletics, and Stealth, and your Attacks inflict #strong[+1 tier];, for the rest of the scene. You can\'t speak or use gear. Afterwards, take #emph[Weary];, and any humans present treat you as a threat.],
    [8], [#strong[★ Living Weapon];], [Choose one Mutation. Its tag may add #strong[+1 above the normal +2 cap (maximum +3 from tags)];, and successful rolls using it gain #strong[+1 Power];.],
    [◆], [#strong[The Clan Remembers];], [Your people are a #strong[Region Truth] (#emph[\"\[name\]\'s clan watches the Frontier\"];). Once per session, the clan sends help: a minion group with 2 power tags, or a safe hiding place for the party.],
  )]
  , kind: table
  )
#colbreak()
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
- #strong[Belief:] \"Humans and monsters are both just trying to live.\" / \"I\'ll never serve the Nobility again.\"
- #strong[Goal:] \"Get the village to let me in the gate.\" / \"Find out which castle made my bloodline.\"
- #strong[Instinct:] \"Always hide the mutation before entering a town.\" / \"Never run from a fight with a Barbarois.\"

#strong[Relationships:] Ally --- a human child who isn\'t scared of you, a clan elder, a doctor who treats you. Rival --- a Barbarois still sworn to a Noble, a Hunter who hunts mutants for pay, a mayor who posted a bounty on you.

]

#pagebreak(weak: true)
#columns(2, gutter: 6mm)[
== 8. Cyborg Hunter
#quote(block: true)[
Torn apart by a Noble or a monster, and put back together with steel, wire, and salvaged Noble parts. You\'re stronger than you were, and less human every year.
]

#playbook-art("08-cyborg-hunter.jpg", "Cyborg Hunter playbook character art")

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

#strong[Playbook tags (choose 2):] #emph[steel where bone used to be] · #emph[doesn\'t feel pain] · #emph[ex-Capital soldier] · #emph[targeting never misses] · #emph[knows Noble machines] · #emph[built to hunt]

=== 8.1 Core Feature --- Implants (free)
Choose #strong[2 Implants];. Each is a power tag that ignores load, plus a rule.

#figure(
  [#table(
    columns: (14%, 15%, 71%),
    align: (auto,auto,auto,),
    table.header([Implant], [Tag], [Rule],),
    table.hline(),
    [#strong[Arm cannon];], [#emph[built-in gun];], [#emph[+1 Attack] (range); can\'t be disarmed],
    [#strong[Blade arm];], [#emph[built-in blade];], [#emph[+1 Attack];; counts as the beheading bane against a Noble with a tier-4+ physical status],
    [#strong[Armour plating];], [#emph[plated];], [#emph[Armour 1];; stacks with worn light armour],
    [#strong[Targeting eye];], [#emph[locks on];], [Once per scene, free bonus die on a Shoot roll],
    [#strong[Booster legs];], [#emph[jumps and sprints];], [#emph[+1 Maneuver] in Fights and Chases on foot],
    [#strong[Sensor array];], [#emph[hears heartbeats];], [Notice heat and heartbeats through walls; Nobles have none, so you can tell who\'s a Noble],
    [#strong[Grapple arm];], [#emph[reaches and grabs];], [Pull, climb, or seize at 10 m],
    [#strong[Synthetic lungs];], [#emph[breathes anything];], [Immune to gas, smoke, and drowning for a scene],
    [#strong[Pain dampener];], [#emph[numb to it];], [Ignore penalties from tier-1 and tier-2 physical statuses],
    [#strong[Cortex chip];], [#emph[data in my head];], [Once per scene, free Discover with Noble Lore or Science],
  )]
  , kind: table
  )

#strong[Glitches:] doubles on a failure or a Success at a Cost on an implant roll cause #emph[glitched-2] (−2 on rolls with your implants) as well as the normal complication. Science (Restore) or a short rest with tools clears it. Noble science that disrupts machines (an EMP, a castle\'s defences) can inflict #emph[glitched] as an Attack.
#colbreak()
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
    [4], [#strong[Little Blood Left];], [The Kiss on you gains #strong[1 fewer tier];. You ignore the #emph[Hungry & Thirsty] Grind condition.],
    [5], [#strong[Heavy Ordnance];], [When you Shoot at a group or minions, gain #strong[one free Extra Feat] per roll.],
    [6], [#strong[Machine Tongue];], [You can talk to Noble machines. Science rolls to command, disable, or read guardian machines and castle systems are one step easier, and you get a free Discover in any Noble castle.],
    [7], [#strong[★ Combat Mode];], [Once per scene, switch to combat mode: free #strong[+1 bonus die] on Shoot, Fight, and Athletics for the rest of the scene. While it lasts, Pneuma Effort costs +1 and you can\'t use Empathy.],
    [8], [#strong[★ Rebuilt Again];], [Once per session, when you\'re Taken Out by physical harm, you get back up at the end of the scene with that status at tier 3 and #emph[glitched-3];.],
    [◆], [#strong[More Machine Than Man];], [Like a Noble, your physical statuses #strong[can\'t go above tier 5] unless the Attack uses Science, an EMP, or an equivalent bane the GM names. Gain a Pneuma Scar (#emph[more machine than man];) when you take this capstone.],
  )]
  , kind: table
  )
#colbreak()
=== 8.3 Starting Equipment
#strong[Signature item (choose 1)]

#figure(
  [#table(
    columns: (11%, 89%),
    align: (auto,auto,),
    table.header([Option], [Item],),
    table.hline(),
    [#strong[A];], [#strong[Stake launcher] (2) --- #emph[+1 Attack] (range), #emph[fires stakes];: a bane strike at range at Standard 15 against a #emph[broken] Noble],
    [#strong[B];], [#strong[Capital laser rifle] (2) --- #emph[+1 Attack] (range), #emph[burns through armour];, depletion 1 in d12 (power cell)],
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
- #strong[Belief:] \"Whatever\'s left of me is still human.\" / \"The Noble who did this will die by what it made me.\"
- #strong[Goal:] \"Find a power cell before the arm runs dry.\" / \"Get inside the castle\'s machine room.\"
- #strong[Instinct:] \"Always scan the room for heartbeats.\" / \"Never let anyone see the wiring.\"

#strong[Relationships:] Ally --- the doctor who rebuilt you, a scavenger who finds you parts, a Hunter who knew you before. Rival --- another cyborg with better parts, the Noble who tore you apart, a Capital agent who wants their property back.

]

#pagebreak(weak: true)
#columns(2, gutter: 6mm)[
== 9. Warden
#quote(block: true)[
Sheriff, militia captain, or the old soldier who keeps the village alive. You don\'t go to the castle; you make sure what comes out of it doesn\'t get in.
]

#playbook-art("09-warden.jpg", "Warden playbook character art")

#figure(
  [#table(
    columns: (25%, 75%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Akm / Psy / Pne)];], [10 / 9 / 9 / 8],
    [#strong[Edge];], [Sōma 1, Psychē 1, plus 1 in Pneuma or Akmē],
    [#strong[Anchor skill];], [Craft],
    [#strong[Suggested skills];], [+4 Craft · +3 Noble Lore, Shoot · +2 Notice, Intimidate, Endure · +1 Persuade, Fight, Frontier, Will],
    [#strong[XP trigger];], [Address a challenge by preparing, protecting, or fortifying],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2):] #emph[every fence post by hand] · #emph[the village listens to me] · #emph[old soldier] · #emph[knows how they\'ll come] · #emph[never sleeps on watch] · #emph[wears the badge]

=== 9.1 Special Abilities
#figure(
  [#table(
    columns: (5%, 20%, 75%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Trapmaker];], [Spend a scene preparing an area. Create the Truth #emph[Trapped] there for free. The first enemy to enter takes an Attack with Power equal to your Craft rating (no roll).],
    [2], [#strong[Garlic and Iron];], [With a scene of work and village help, ward a whole building or village: create #emph[Garlic Fences] or #emph[Uninvited] as a #strong[Site Truth] until a Noble breaks it (6-segment danger clock).],
    [3], [#strong[Militia Captain];], [Once per scene, rally villagers into a minion group with 1 power tag (#emph[pitchforks and torches];) and 1 weakness (#emph[break and run];).],
    [4], [#strong[Night Watch];], [The party can\'t be surprised while you\'re on watch. When you\'re the Lookout (Module B.5), you get a free bonus die.],
    [5], [#strong[Hold the Gate];], [In a #strong[Siege of the Night];, your side\'s Disposition is #strong[+2];, and you get #emph[+1 Defend] as a free action tag.],
    [6], [#strong[Local Law];], [Your authority is a power tag with locals (#emph[by order of the Warden];). Once per scene, a successful Intimidate or Persuade with villagers removes #emph[Hostile Crowd] or stops a mob.],
    [7], [#strong[★ Hold Until Dawn];], [Once per Siege of the Night, tick the #strong[Dawn clock] by 2 extra segments.],
    [8], [#strong[★ Killing Ground];], [In an area you prepared (with #emph[Trapped] or #emph[Garlic Fences];), allies\' Attacks inflict #strong[+1 tier];, and Nobles can\'t use #emph[Mist Form] to leave.],
    [◆], [#strong[Nothing Gets In];], [Your village becomes a #strong[Region Truth] (#emph[\"The Nobility can\'t take \[village\]\"];). A Noble must fill a 12-segment danger clock before it can enter. Once per session, any PC who retreats there clears one tier-1 or tier-2 status.],
  )]
  , kind: table
  )
#colbreak()
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
- #strong[Goal:] \"Get the fences finished before sundown.\" / \"Find out who invited the Noble in.\"
- #strong[Instinct:] \"Always check the doors at dusk.\" / \"Never leave the village when a stranger\'s in town.\"

#strong[Relationships:] Ally --- the mayor, the blacksmith, a widow whose husband died on the wall. Rival --- a Hunter who wants to use the village as bait, a council member who\'d rather pay tribute, a Noble who has tried before.
]

#pagebreak()
== 10. Design Notes
=== 10.1 Balance Targets
#figure(
  [#table(
    columns: (14%, 21%, 24%, 26%, 15%),
    align: (auto,auto,auto,auto,auto,),
    table.header([Playbook], [Main pool], [Conflict role], [Exploration role], [Social role],),
    table.hline(),
    [Sellsword], [Sōma], [Attack / Defend, bane strikes], [Forcing obstacles], [Intimidation],
    [Stalker], [Akmē], [Feint / Maneuver], [Castles by day, security], [Deception],
    [Frontier Doctor], [Psychē], [Maneuver (Discover), Restore], [Investigation, healing, the Kiss], [Expertise, trust],
    [Broker], [Pneuma], [Negotiation and Argument lead], [Rumours, contacts], [Persuasion, contracts],
    [Rider], [Sōma/Akmē], [Ranged Attack, Chase, Hunt], [Travel, Grind, tracking], [Local knowledge],
    [Occultist], [Pneuma/Psychē], [Flexible (Domain), Duel of Wills], [Supernatural and Noble-science access], [Varies by Domain],
    [Mutant], [Sōma/Akmē], [Attack / Maneuver], [Climbing, hiding, wastelands], [Monsters and servants],
    [Cyborg Hunter], [Sōma], [Ranged Attack, heavy firepower], [Noble machines, castles], [Intimidation],
    [Warden], [Sōma/Psychē], [Siege of the Night, Defend], [Preparation, fortification], [Villagers, local law],
  )]
  , kind: table
  )

=== 10.2 Things to Watch in Playtest
- #strong[Mutant and Cyborg core features] each grant two tagged abilities for free, more than other playbooks. They\'re balanced by #emph[Feared and Despised] (Mutant) and glitches and a low Pneuma pool (Cyborg). If they outshine others, drop to 1 free Mutation or Implant.
- #strong[Undying vs. More Machine Than Man:] the Cyborg capstone is strong by design at 12 Advances. Watch that it doesn\'t end the threat of mundane harm entirely.
- #strong[Warden] is strongest in sieges and weaker on castle raids. Make sure the campaign has both, or let the Warden\'s traps travel (Trapmaker works anywhere).
- #strong[Free bonus dice] (Stake Driver, Horse-Bond, Targeting eye, Combat Mode, Full Transformation) still count toward the +2 bonus die maximum.
- #strong[★ count:] each playbook has two Major abilities and a free capstone, as in #emph[Generic Playbooks];.

// =====================================================================
//  CHAPTER — FRONTIER FOCUSES
// =====================================================================
#chapter("Frontier Focuses", [Twenty Focuses steeped in the Frontier: Noble blood, bounties, relics and ruins, the old faith, villages holding the line until dawn, and the people who love what they should hate.], epigraph: [Dhampirs enter play here, through Carries the Blood of the Nobility.])

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

- #strong[◈ Weird] Focuses assume Noble blood, Noble science, or the supernatural. In this setting all are allowed; the marker shows which ones draw attention from Nobles, Occultists, and frightened villagers.
- #strong[Generic Focuses:] the 24 Focuses in #emph[Generic Focuses] also work here. Good fits are #emph[Never Leaves Anyone Behind];, #emph[Masters a Weapon];, #emph[Moves Like a Shadow];, #emph[Never Misses];, #emph[Opens Every Lock];, #emph[Talks Their Way Out of Anything];, #emph[Lives Off the Land];, and #emph[Made a Bargain With Something Old];. Use the setting Focuses below in place of #emph[Hunts the Things in the Dark] and #emph[Is More Than Human];.
- #strong[Shared reminders:] free bonus dice count toward the +2 maximum; only one cost reduction applies to a single Effect; abilities that add bonus above the tag cap are limited to #strong[+1 above the normal +2 cap (maximum +3)] unless stated otherwise (Generic Focuses §9.2).

== 2. Quick Reference
#figure(
  [#table(
    columns: (4.95%, 38.61%, 14.85%, 36.63%, 4.95%),
    align: (auto,auto,auto,auto,auto,),
    table.header([\#], [Focus], [Category], [Suits], [#diamond(size: 6pt, fill: paper)],),
    table.hline(),
    [1], [Carries the Blood of the Nobility], [Bloodline], [Any], [◈],
    [2], [Was Kissed and Lived], [Bloodline], [Any], [◈],
    [3], [Carries a Passenger], [Bloodline], [Any], [◈],
    [4], [Hunts the Nobility], [Hunter], [Sellsword, Stalker, Cyborg Hunter], [],
    [5], [Collects the Bounty], [Hunter], [Broker, Sellsword, Rider], [],
    [6], [Hunts the Beasts of the Frontier], [Hunter], [Rider, Mutant, Sellsword], [],
    [7], [Seeks Revenge on a Noble], [Hunter], [Any], [],
    [8], [Bears a Noble Relic], [Noble Science], [Occultist, Stalker, Cyborg Hunter], [◈],
    [9], [Plunders the Castles of the Night], [Noble Science], [Stalker, Occultist, Broker], [],
    [10], [Sends the Mind Abroad], [Occult], [Occultist, Frontier Doctor], [◈],
    [11], [Keeps the Old Faith], [Occult], [Warden, Frontier Doctor, Sellsword], [],
    [12], [Heals the Kissed], [Village], [Frontier Doctor, Occultist], [],
    [13], [Holds the Line Until Dawn], [Village], [Warden, Sellsword, Cyborg Hunter], [],
    [14], [Forges Weapons Against the Night], [Village], [Warden, Cyborg Hunter, Stalker], [],
    [15], [Rides a Cyborg Horse], [Frontier], [Rider, Sellsword, Broker], [],
    [16], [Leaves No Name Behind], [Frontier], [Any], [],
    [17], [Rides With Family], [Frontier], [Any], [],
    [18], [Once Served the Nobility], [Noble Courts], [Broker, Stalker, Frontier Doctor], [],
    [19], [Reads the Ruins of History], [Noble Courts], [Frontier Doctor, Occultist, Broker], [],
    [20], [Loves What It Should Hate], [Noble Courts], [Any], [],
  )]
  , kind: table
  )

== 3. Bloodline Focuses
=== 1. Carries the Blood of the Nobility ◈
#quote(block: true)[
Dhampir. Half-human, half-Noble. Stronger and faster than any human, hated by both sides, and never quite free of the sun or the thirst.
]

- #strong[Power tags:] #emph[the strength of the Nobility];, #emph[eyes that see in the dark]
- #strong[Weakness tag:] #emph[half-blood] (when recognised, the scene gains #emph[Feared and Despised];)
- #strong[PC link:] \"\[PC\] saw what I am and didn\'t run. I still don\'t know why.\"

#figure(
  [#table(
    columns: (8%, 15%, 77%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Noble Blood];], [You ignore darkness Truths and sense any Noble within sight. A short rest restores #strong[2 + Edge] Sōma. You can\'t be #emph[Kissed] or Turned. You\'re subject to #strong[Sunlight Syndrome] and #strong[the Thirst] (Frontier Rules §7).],
    [2a], [#strong[Dhampir Regeneration];], [Once per scene, lower one physical status by #strong[2 tiers] (no roll). Thirst +1.],
    [2b], [#strong[The Noble Gaze];], [You can use the Gaze: on a successful Will or Intimidate roll against a human or Lesser Noble who meets your eyes, inflict #emph[entranced] as an Attack. Thirst +1 each time. In a Duel of Wills against a Noble, gain a free bonus die.],
    [3a], [#strong[Night Walker];], [Under the #strong[Night] Truth, your physical Attacks inflict #strong[+1 tier];, and your blade counts as the beheading bane against a Noble with a tier-4+ physical status.],
    [3b], [#strong[★ Awaken the Blood];], [Once per scene, let the Noble half rise (#emph[Thirst];): until the scene ends, you get #strong[+2 bonus dice] free on physical rolls, your Attacks inflict #strong[+1 tier];, and your physical statuses can\'t go above tier 5. Afterwards, Thirst +2, and anyone who saw it treats you as a Noble.],
  )]
  , kind: table
  )

#strong[Table options for Dhampirs (choose at session zero):]

- #strong[Rare blood:] only one PC in the party can take this Focus.
- #strong[Costly blood:] this Focus costs #strong[1 Refresh] at creation.
- #strong[The sun is merciless:] Sun-Sick gains +2 per scene instead of +1 (Frontier Rules §7.1).

=== 2. Was Kissed and Lived ◈
#quote(block: true)[
A Noble fed on you for nights, then was destroyed, or left, or let you go. You\'re still human. Mostly.
]

- #strong[Power tags:] #emph[the Call has no hold on me];, #emph[I know how they think]
- #strong[Weakness tag:] #emph[the Noble is still out there] (or #emph[its blood is still in me];)
- #strong[PC link:] \"\[PC\] sat with me through the nights when I nearly turned.\"

#figure(
  [#table(
    columns: (7.92%, 12.87%, 79.21%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Survivor of the Kiss];], [#emph[Kissed] gains #strong[1 fewer tier] on you. You always know when a Noble uses the Call or the Gaze within earshot.],
    [2a], [#strong[Blood Bond];], [At night you sense the direction of the Noble that bit you (or its bloodline). It can sense you too; the GM may spend 1 Woe to use this against you.],
    [2b], [#strong[One of Them, Almost];], [Lesser Nobles and Noble servants mistake you for one of their own. Deceive rolls to pass among them are #strong[two steps easier];.],
    [3a], [#strong[Unbroken];], [When you Resist the Gaze, the Call, or the Kiss with Pneuma, reduce the status by #strong[3 tiers];, and the cost is 0 on a highest die of 5+.],
    [3b], [#strong[★ Turn the Bond];], [Once per session, in a Duel of Wills against a Noble of the bloodline that bit you, gain a free bonus die on every roll. If you win, you also learn where it sleeps.],
  )]
  , kind: table
  )

=== 3. Carries a Passenger ◈
#quote(block: true)[
Something lives in you: a face in your palm, an eye on your shoulder, a voice only you can hear. It\'s old, rude, and hungry, and it has saved your life more than once.
]

- #strong[Power tags:] #emph[a voice that knows things];, #emph[it eats what hurts me]
- #strong[Weakness tag:] #emph[it has its own plans]
- #strong[PC link:] \"\[PC\] is the only one the Passenger likes. That worries me.\"

#figure(
  [#table(
    columns: (7.92%, 12.87%, 79.21%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[The Passenger];], [Once per scene, ask a free Discover: the Passenger answers, truthfully but not always helpfully. It can talk to others, which is often a compel.],
    [2a], [#strong[Devourer];], [Once per scene, the Passenger swallows a hostile effect it can reach (fire, gas, mist, a working, a cypher): #strong[Disrupt] it for 0 Power. The GM may compel its appetite afterwards.],
    [2b], [#strong[Feed Me, Heal You];], [In the Players\' Turn, spend 1 Check to feed it (earth, water, fire, or air). Next session, once per scene, it lowers one of your physical statuses by 2 tiers.],
    [3a], [#strong[Older Than the Nobility];], [Once per scene, take a free bonus die on a Noble Lore or Occult roll. The Passenger remembers the age when the Nobility were young.],
    [3b], [#strong[★ Let It Drive];], [Once per session, let the Passenger take your body for one action: it succeeds automatically with #strong[4 Power];. Then the GM names the price it demands (a meal, a favour, a secret, a scene where it\'s in charge).],
  )]
  , kind: table
  )

== 4. Hunter Focuses
=== 4. Hunts the Nobility
#quote(block: true)[
Your trade is the hardest one on the Frontier: you kill Nobles.
]

- #strong[Power tags:] #emph[knows where they sleep];, #emph[a stake for every heart]
- #strong[Weakness tag:] #emph[the Nobility know my name]
- #strong[PC link:] \"\[PC\] was there for my first Noble kill. It went badly.\"

#figure(
  [#table(
    columns: (8%, 13%, 79%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Noble Hunter];], [Once per scene, Discover one of a Noble\'s weakness tags without rolling.],
    [2a], [#strong[Bane Mastery];], [Your bane strikes (Frontier Rules §5.2) are #strong[Standard 15] instead of Hard 18.],
    [2b], [#strong[Steel Against the Gaze];], [When you Resist the Gaze or the Call with Pneuma, the cost is #strong[0 on a highest die of 5+];.],
    [3a], [#strong[Turn Weakness to Bane];], [Upgrading a Noble\'s weakness tag into a bane (Frontier Rules §8.1) costs #strong[2 Power] instead of 3.],
    [3b], [#strong[★ The Hunter\'s Mark];], [Once per scene, mark a Noble you can see. Until the scene ends, all allies\' Attacks against it inflict #strong[+1 tier];, and it can\'t use #emph[Mist Form] to escape.],
  )]
  , kind: table
  )

=== 5. Collects the Bounty
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
    [3b], [#strong[★ The Big Score];], [Once per session, when you complete a contract, choose one extra reward: an artifact from the quarry\'s hoard, a Region Truth in your favour, or a second #emph[Noble\'s bounty];.],
  )]
  , kind: table
  )

=== 6. Hunts the Beasts of the Frontier
#quote(block: true)[
Not every monster is a Noble. Sand sharks, werewolves, mutant spiders, Noble bioweapons gone feral: you hunt them all.
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
    [1], [#strong[Beast Lore];], [Once per scene, Discover a monster\'s weakness tag (not a Noble\'s) without rolling.],
    [2a], [#strong[Baited Trap];], [Spend 1 Power to Create #emph[Baited Trap];. A beast that enters it is #emph[Impeded] until it breaks free (an Athletics roll vs. Hard 18).],
    [2b], [#strong[Harvest];], [After killing a monster, spend a scene to harvest it for one cypher (tier 2--3) that matches its power: venom, hide, a gland, an eye.],
    [3a], [#strong[Bane of Beasts];], [Your Attacks against monsters inflict #strong[+1 tier];.],
    [3b], [#strong[★ Monster-Slayer];], [In Fights against monsters (not Nobles), the enemy\'s Disposition starts #strong[−3];, and minion beasts flee after your first successful Attack.],
  )]
  , kind: table
  )

=== 7. Seeks Revenge on a Noble
#quote(block: true)[
A Noble took your family, your village, or your life as it was. You\'ll find it, and you\'ll end it.
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
    [1], [#strong[The One];], [Name your Noble. You always know when you\'re within a day\'s ride of it, and once per session ask a free Discover about it.],
    [2a], [#strong[Cold Fury];], [When you Resist the named Noble\'s Gaze, Call, or fear, the cost is #strong[0];.],
    [2b], [#strong[Nothing Held Back];], [When you burn a tag against the named Noble or its servants, gain #strong[+2 Power] instead of +1.],
    [3a], [#strong[Its Servants Die First];], [The named Noble\'s servants and Barbarois start conflicts against you with #strong[−2 Disposition];.],
    [3b], [#strong[★ This Ends Tonight];], [When you face the named Noble, gain a free bonus die on every roll against it, and your bane strikes are #strong[Standard 15];. If it escapes you, gain a Pneuma Scar.],
  )]
  , kind: table
  )

== 5. Noble Science Focuses
=== 8. Bears a Noble Relic ◈
#quote(block: true)[
You carry a piece of the Nobility\'s power: a sword that cuts anything, a pendant that turns aside the Gaze, a gauntlet that hums when Nobles are near.
]

- #strong[Power tags:] #emph[the relic answers me];, #emph[Noble-forged]
- #strong[Weakness tag:] #emph[the Nobility will want it back]
- #strong[PC link:] \"\[PC\] knows how I got the relic. It isn\'t a good story.\"

#figure(
  [#table(
    columns: (7.92%, 12.87%, 79.21%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Relic Bearer];], [Start with one Noble artifact (Frontier Rules §9.2, or design one with the GM). It costs #strong[no attunement Refresh];.],
    [2a], [#strong[Deeper Power];], [Your relic gains a #strong[second ability] (designed with the GM).],
    [2b], [#strong[Well-Kept];], [Your relic\'s depletion improves by 1 (1 in d12 becomes no depletion).],
    [3a], [#strong[Relic Sense];], [You sense other Noble artifacts within a day\'s walk, and once per scene ask a free Discover about one you can see.],
    [3b], [#strong[★ The Relic Awakens];], [Your relic\'s tag may add #strong[+1 above the normal +2 tag cap (maximum +3)];. Once per session, it acts by itself: one automatic success with #strong[3 Power] spent on its listed Effects.],
  )]
  , kind: table
  )

=== 9. Plunders the Castles of the Night
#quote(block: true)[
Every abandoned castle holds treasure, machines, and traps. You go in for the first, use the second, and survive the third.
]

- #strong[Power tags:] #emph[knows Noble treasure];, #emph[quick hands in dark halls]
- #strong[Weakness tag:] #emph[can\'t leave treasure behind]
- #strong[PC link:] \"\[PC\] and I came out of the same castle. Only one of us came out with the loot.\"

#figure(
  [#table(
    columns: (7.92%, 12.87%, 79.21%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Salvager];], [In each castle, lab, or ruin you search, find one Noble cypher (roll on Frontier Rules §9.1) without spending Power.],
    [2a], [#strong[Appraiser];], [You know an artifact\'s tags, ability, depletion, and quirk as soon as you handle it.],
    [2b], [#strong[Tomb Sense];], [When you enter a room, the GM reveals any trap Truths in it. When you Resist traps, your Edge counts as 1 higher.],
    [3a], [#strong[Cypher Hoarder];], [Your Cypher Limit is #strong[+1];.],
    [3b], [#strong[★ Thief of the Night];], [You may attune one Noble artifact at no Refresh cost, and once per session, take an item from a Noble\'s presence without a roll, as long as the Noble isn\'t actively watching it.],
  )]
  , kind: table
  )

== 6. Occult Focuses
=== 10. Sends the Mind Abroad ◈
#quote(block: true)[
Your mind can leave your body and walk where you can\'t: through castle walls, into dreams, across the desert.
]

- #strong[Power tags:] #emph[my mind walks free];, #emph[dreamsight]
- #strong[Weakness tag:] #emph[my body lies helpless]
- #strong[PC link:] \"\[PC\] watches over my body when I go walking. I trust no one else.\"

#figure(
  [#table(
    columns: (8%, 13%, 79%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Astral Self];], [Leave your body as an unseen astral form (range about 1 km). You use Occult for Stealth and Notice. Your body is helpless and #emph[Impeded] while you\'re out. Returning costs 1 Pneuma.],
    [2a], [#strong[Astral Strike];], [Your astral form can Attack with Occult, inflicting mental statuses (#emph[terrified];, #emph[dazed];) even on Nobles.],
    [2b], [#strong[Dream Walker];], [Enter a sleeper\'s dream, including a Kissed victim\'s. Ask 2 free Discover questions about what they saw, or Restore their fear statuses.],
    [3a], [#strong[Far-Walker];], [Your astral range becomes a day\'s ride, and you can bring one willing ally\'s mind with you.],
    [3b], [#strong[★ Astral Avatar];], [Once per scene, your astral form becomes solid enough to Fight. It uses your skills, and harm to it comes out of your #strong[Pneuma] pool, not physical statuses.],
  )]
  , kind: table
  )

=== 11. Keeps the Old Faith
#quote(block: true)[
Crosses still burn Nobles, holy water still hisses on their skin. Hardly anyone remembers why. You do.
]

- #strong[Power tags:] #emph[my cross burns them];, #emph[prayer steadies me]
- #strong[Weakness tag:] #emph[bound by the old laws] (you can\'t refuse sanctuary or lie under oath)
- #strong[PC link:] \"\[PC\] doesn\'t believe, but they carry the cross I gave them.\"

#figure(
  [#table(
    columns: (8%, 13%, 79%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Holy Symbol];], [Your cross creates #emph[Warded] for 1 Power against #strong[Lesser Nobles and Nobles] (not only Lesser). Greater Nobles and Ancients take −1 on rolls against you while you hold it up.],
    [2a], [#strong[Consecrate];], [In a scene of prayer, bless water or stakes. Bane strikes with them inflict #strong[+1 tier];, and holy water is an Attack (#emph[burning];) against Nobles.],
    [2b], [#strong[Last Rites];], [Once per scene, every ally who can hear your prayer restores 2 Pneuma, and Resists the Call with Edge +1 until the scene ends.],
    [3a], [#strong[Faith Unbroken];], [When you Resist fear, the Gaze, or possession with Pneuma, the cost is #strong[0 on a highest die of 5+];.],
    [3b], [#strong[★ Holy Ground];], [Once per session, sanctify a place: create the Truth #emph[Holy Ground] for the scene. Noble powers don\'t work there, and every Noble Woe spend costs #strong[+1];.],
  )]
  , kind: table
  )

== 7. Village Focuses
=== 12. Heals the Kissed
#quote(block: true)[
You\'ve spent years fighting the Kiss: garlic poultices, transfusions, and nights by the bedside.
]

- #strong[Power tags:] #emph[the bitten trust me];, #emph[knows every stage of the Kiss]
- #strong[Weakness tag:] #emph[can\'t abandon a patient]
- #strong[PC link:] \"I saved \[PC\] from the Kiss once. They don\'t remember it.\"

#figure(
  [#table(
    columns: (8%, 13%, 79%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Kiss Specialist];], [When you treat #emph[Kissed];, you also learn which Noble (or bloodline) gave it. Your patients can\'t gain more than 1 Kissed tier per night.],
    [2a], [#strong[Break the Call];], [Patients you\'ve treated in the last day Resist the Call with #strong[Edge +1];.],
    [2b], [#strong[Bloodwork];], [From a victim\'s blood, learn one of the Noble\'s weakness tags (a free Discover).],
    [3a], [#strong[Halt the Turning];], [While under your care, a patient\'s #emph[Kissed] can\'t rise above #strong[tier 4];.],
    [3b], [#strong[★ Draw Out the Kiss];], [Once per session, remove #emph[Kissed] entirely from one patient (any tier up to 5), even while the Noble lives. You take #emph[drained-3];.],
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
Stakes that don\'t splinter, bolts that fly true, blades that can cut a Noble\'s neck. Every Hunter in the region knows your mark.
]

- #strong[Power tags:] #emph[my stakes never break];, #emph[forge and lathe]
- #strong[Weakness tag:] #emph[my weapons carry my mark] (a Noble can trace them back to you)
- #strong[PC link:] \"I made \[PC\]\'s weapon. I want it back in one piece.\"

#figure(
  [#table(
    columns: (8%, 15%, 77%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Hunter\'s Smith];], [In the Players\' Turn, spend 1 Check to either give one weapon an extra quality, or arm the party with fine stakes (every ally has a #emph[stake] bane tag for the mission, 0 load).],
    [2a], [#strong[Silvered and Blessed];], [Weapons you make count as #strong[one extra bane] type (fire or beheading).],
    [2b], [#strong[Field Armourer];], [In a short rest, repair #emph[damaged] armour and broken weapons. Your allies\' armour absorbs a tier-4+ hit once per mission without being damaged.],
    [3a], [#strong[Masterwork];], [One weapon you make (choose its owner) may add #strong[+1 above the normal +2 tag cap (maximum +3)];.],
    [3b], [#strong[★ Noble-Forged];], [Run a downtime clock (8 segments) to make a weapon artifact equal to a Noble Longsword (Frontier Rules §9.2). Its quirk is #emph[my weapons carry my mark];.],
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

== 9. Noble Courts Focuses
=== 18. Once Served the Nobility
#quote(block: true)[
You were a castle servant, a steward, a chosen bride, or a Noble\'s pet. You got out. The house hasn\'t forgotten.
]

- #strong[Power tags:] #emph[knows Noble etiquette];, #emph[they still think I\'m theirs]
- #strong[Weakness tag:] #emph[the house still has a claim on me]
- #strong[PC link:] \"\[PC\] helped me escape the castle, and I never repaid them.\"

#figure(
  [#table(
    columns: (8%, 13%, 79%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Inside Knowledge];], [Once per scene in any castle of your former house, ask a free Discover. Once per session, ask a free Discover about any Noble\'s habits.],
    [2a], [#strong[Pass as a Servant];], [In Noble castles, servants and guardian machines ignore you unless you act against them, or a Noble looks at you directly.],
    [2b], [#strong[Old Loyalties];], [Once per session, a former fellow servant helps you: a secret passage, a warning, a key, or a hiding place.],
    [3a], [#strong[The Master\'s Secrets];], [You know one bane of your former master. Upgrading its weakness into a bane costs #strong[1 Power];.],
    [3b], [#strong[★ Turncoat\'s Key];], [Once per session, open any door or switch off any defence in a castle of your former house, without a roll.],
  )]
  , kind: table
  )

=== 19. Reads the Ruins of History
#quote(block: true)[
You study the old world, the rise of the Nobility, and the plans of the Sacred Ancestor. Most of it is lost. Some of it isn\'t.
]

- #strong[Power tags:] #emph[reads the Noble script];, #emph[knows the old wars]
- #strong[Weakness tag:] #emph[lost in the past]
- #strong[PC link:] \"\[PC\] found the book that started my obsession.\"

#figure(
  [#table(
    columns: (8%, 14%, 78%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Archive Mind];], [Once per scene, ask a free Discover with Noble Lore about a place, a Noble house, or an ancient device.],
    [2a], [#strong[Decipher];], [Science rolls to use or read Noble machines are #strong[one step easier] when you can study the controls.],
    [2b], [#strong[Genealogist];], [When you learn a Noble\'s name, you also learn its house, its rivals, and one weakness tag.],
    [3a], [#strong[History Repeats];], [Once per session, create a #strong[Site Truth] from history: a forgotten passage, a buried weapon, an old treaty a Noble must honour.],
    [3b], [#strong[★ The Ancestor\'s Notes];], [Once per session, with GM approval, reveal an ancient secret as a #strong[Region or Campaign Truth];: a weakness shared by a whole bloodline, a hidden castle, the reason a Noble can\'t die.],
  )]
  , kind: table
  )

=== 20. Loves What It Should Hate
#quote(block: true)[
A Noble, a dhampir, a Barbarois, a monster. You love them anyway, and both worlds will make you pay for it.
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
- #strong[Dhampir as a Focus] lets any playbook be half-Noble: a Dhampir Sellsword is the classic Hunter, but a Dhampir Frontier Doctor or Dhampir Broker plays very differently. The Tier 1 package is strong (darkvision, Noble-sense, regeneration, immunity to the Kiss) because Sunlight Syndrome and the Thirst are real costs. Use the table options if it outshines other Focuses.
- #strong[Overlaps with playbooks:] #emph[Heals the Kissed] stacks with the Frontier Doctor\'s #emph[Treat the Kiss];, and #emph[Holds the Line Until Dawn] stacks with the Warden. Both stacks are intended specialist builds; none of them reduce the same Power cost twice.
- #strong[Noble-specific Focuses] (#emph[Hunts the Nobility];, #emph[Seeks Revenge on a Noble];) rely on bane strikes. If a campaign has few Nobles, steer players toward #emph[Hunts the Beasts of the Frontier] or #emph[Collects the Bounty];.
- #strong[★ options] are all at Tier 3, as in #emph[Generic Focuses];, so a character can always choose a path that keeps their Refresh.
- #strong[Tag-cap exceptions] (Bears a Noble Relic --- The Relic Awakens; Forges Weapons Against the Night --- Masterwork): aligned with the #strong[Generic Focuses §9.2] fix --- both now add #strong[+1 above the normal +2 cap (maximum +3)] instead of ignoring it outright.

// =====================================================================
//  APPENDIX — QUICK REFERENCE
// =====================================================================
#chapter("Quick Reference",
  [The core procedures on one spread, for the table and the screen. Full rules are in Chapter II.],
  numbered: false, label-text: "Appendix")

#grid(columns: (1fr, 1fr), column-gutter: 0.7cm, row-gutter: 0.4cm,
[
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
],
[
== Doubles (Twists)
If the two kept dice match: on a success, a *Critical* (+1 Power and a flourish). On a failure or cost, a *Complication* (GM gains 2 Woe or adds a complication now). *Double 12s* always succeed with +2 Power. *Double 1s* always bring a complication.

== Bonus Dice
Keep the best two dice; maximum +2 bonus dice.
#table(columns: (34%, 66%),
  table.header([Source], [Cost]),
  [Effort], [3 − Edge from the pool (min 0); or buy +1 Power after a success],
  [Momentum], [1 for the first die, 2 for the second],
  [Woe], [Give the GM 1 Woe per die],
  [Help], [An ally spends 1 pool point and shares the risk])

== Resist (Core Rules §6)
Roll 2d12, take the *highest die*, and pay the cost minus Edge: *12* costs 0 and clears a tier-1 status · *9–11* costs 1 · *5–8* costs 2 · *1–4* costs 3. This reduces the status by 2 tiers.
])

#grid(columns: (1fr, 1fr), column-gutter: 0.7cm,
[
== Rest and Recovery
#table(columns: (16%, 52%, 32%),
  table.header([Rest], [Time], [Recovery]),
  [1st], [A few seconds; 1 action mid-encounter], [1d6],
  [2nd], [10 minutes], [1d8],
  [3rd], [1 hour], [1d10],
  [4th], [10 hours (overnight)], [All pools full])
Divide the roll among Sōma, Akmē, Psychē and Pneuma however you like. Edge does not apply. *Hardened* (one-time Advance) raises each die one size.
],
[
== Day and Night
- *Day:* Noble powers don't work, and Nobles sleep in their coffins. Their guardians and machines are still active.
- *Dusk:* the GM gains +2 Woe, and Nobles wake at the end of the scene.
- *Night:* Noble powers work. A scene at night with a Noble present adds +1 Woe at the start.
- *Dawn:* Nobles must reach shelter or burn. A Noble still in the open at the end of the scene takes _burning_ at tier 3.
- *Undying:* a Noble's physical statuses can't go above tier 5 without a *bane* (Frontier Rules §5.2, §8.1).
])

#v(1fr)
#align(center, ornament-rule(width: 40%))
#v(6pt)
#align(center, text(font: display-font, size: 9pt, fill: dust, tracking: 0.2em)[END OF THE MASTER RULEBOOK · 2026-10-12])



