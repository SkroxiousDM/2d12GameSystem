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
#set text(font: body-font, size: 10.3pt, fill: ink, lang: "en", region: "CA",
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
  margin: (top: 1.5cm, bottom: 1.5cm, inside: 2cm, outside: 1.5cm),
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
== Module C --- Truth-Driven Sandbox (2d20)
#columns(2, gutter: 4mm)[
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

- #strong[3 Truths] (at least one hidden; at most one at rank 2)
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