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

//
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
- #strong[Truths:] shift Difficulty by steps (§8), not the roll: one step per rank, ±3 steps at most.

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
#strong[Power] = 1 for meeting the target, +1 for every full 3 points over it. Power is spent on #strong[Effects] (§5). Any Power you don\'t spend becomes #strong[Momentum] (party pool, max 6).

=== 2.6 Doubles (Twists)
If your two #strong[kept] dice show the same number:

- #strong[On a success:] Critical --- +1 Power and add a narrative flourish.
- #strong[On a failure or cost:] Complication --- the GM introduces a complication right away.
- #strong[Double 12s:] always a success with +2 Power. #strong[Double 1s:] always a complication, even on a success.
- #strong[Buying it off.] When the dice give you a complication (a twist, or a Risky roll, §2.7), you may cancel it by giving the GM #strong[2 Woe]: a problem now, or a problem later. If you keep it and the GM can't think of a fitting complication, the GM gains the 2 Woe instead.
#colbreak()
- #strong[NPCs.] When the dice give an NPC a complication, the GM may spend #strong[2 Woe] to cancel it. Otherwise the GM describes the complication, or invites the players to.

Base chance of doubles on 2d12 is about 8% (1 in 12).

=== 2.7 Risky Rolls (Optional)
Some rolls aren't harder, just more dangerous. Before a roll, the GM may call it #strong[Risky 1], #strong[2] or #strong[3].

- #strong[Risk die.] Roll one extra d12 of a different colour with the others. It's never kept, doesn't add to the total and doesn't count toward the bonus dice maximum.
- #strong[Complication.] If the Risk die shows the rating or lower, a complication occurs after the roll is resolved, whatever the result and on top of any twist. You can buy it off for 2 Woe (§2.6).
- #strong[Raising the stakes.] The GM may spend #strong[1 Woe] to make a roll Risky 1, or to raise its rating by 1 (maximum 3). Settings may make some hazards Risky by default.

#figure(
  [#table(
    columns: (22%, 34%, 44%),
    align: (auto,auto,auto,),
    table.header([Rating], [Risk die shows], [Chance of a complication],),
    table.hline(),
    [Risky 1], [1], [about 8%],
    [Risky 2], [1--2], [about 17%],
    [Risky 3], [1--3], [25%],
  )]
  , kind: table
  )
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
#colbreak()
- #strong[Any tag can be compelled.] A power tag can also cause trouble when its meaning creates a concrete complication. It keeps its normal benefits (§4).
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
  ]
== 4. Tychē Points
    #columns(2, gutter: 6mm)[
#strong[Spend 1 Tychē Point to:]

- #strong[Invoke] --- reroll all dice, or add +2 after rolling. This works with any tag or Truth you can justify, even one belonging to the scene or an enemy. Invokes are not limited by the tag cap.
- #strong[Declare] --- establish a minor fact about the scene. The GM may require it to tie to one of your tags.
- #strong[Resist harder] --- reduce one Resistance cost to 0 (§6).

#strong[Earn Tychē Points by:]

- #strong[Compels] --- the GM or another player offers a meaningful complication based on any character tag (power, weakness, or Scar), Belief, or Instinct. Accept → +1 Tychē Point. Refuse → pay 1 Tychē Point.
- #strong[Compel yourself] --- propose a compel on one of your own tags, your Belief or your Instinct. If the GM agrees it meets the rules below, take the complication and gain +1 Tychē Point. Facing it can also earn XP (§12.1).

#strong[Compels]

- #strong[Meaningful.] The complication must change the situation: an obstacle, obligation, exposure, hard choice, or lost opportunity. Flavour or a minor inconvenience doesn't count.
- #strong[Clear offer.] Before you accept, know which tag justifies it, what will happen, and what it commits your character to. You otherwise control how your character responds.
- #strong[Limits.] A compel must follow from the tag's established meaning. It adds no numerical penalty, can't cancel a success already resolved, and an existing penalty doesn't earn Tychē just because a tag explains it.
- #emph[Feared duellist:] a rival challenges you before an audience whose support you need. #emph[Devoted healer:] you stay to treat a dying enemy and lose the chance to pursue their commander.

=== 4.1 Refresh
- #strong[Base Refresh is 3.] At the start of each session, your Tychē Points reset to your Refresh (if you have more, keep them, up to the cap).
- #strong[Tychē cap.] You can hold at most #strong[Refresh + 3] Tychē Points. Any you would gain above the cap are lost.
- At creation you get #strong[1 playbook ability and your Tier 1 Focus ability for free];.
#colbreak()
- You may take #strong[up to 2 additional playbook abilities at creation, at 1 Refresh each];.
- Abilities marked #strong[★ (Major)] cost #strong[1 Refresh] whenever you take them, including through advancement.
- An #strong[attuned artifact] (Module A) costs 1 Refresh while you keep it.
#colbreak()
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
    [#strong[Create];], [3], [Create a #strong[Truth] that lasts for the scene (#emph[smoke cover];, #emph[crowd on our side];). It may end sooner if its removal condition is met. One extra Power makes it last until its removal condition is met. State its scope, rank (1, or 2 for double the Power) and removal condition (§8)],
    [#strong[Enhance];], [1 per tier], [Give an ally a helpful status (#emph[inspired-2];)],
    [#strong[Restore];], [1 per tier], [Reduce a harmful status on yourself or an ally. Lasting injuries have limits (§6.6)],
    [#strong[Discover];], [1], [Ask the GM one question; you get a true, useful answer],
    [#strong[Advance];], [1 per segment], [Tick a #strong[progress clock] (§7)],
    [#strong[Disrupt];], [3], [Cancel or delay an enemy\'s prepared action, or take 1 point off the GM\'s Woe],
    [#strong[Extra Feat];], [1], [Achieve a second, related goal with the same action],
  )]
  , kind: table
  )
#columns(2, gutter: 6mm)[
Each point of Power buys an Effect. Players choose Effects that fit what their character did in the fiction.
  
Any unspent Power → #strong[Momentum];.

=== 5.1 Statuses
- Statuses have #strong[tiers 1--6];.
- #strong[Recording a status.] When you create a status, record its name and tier, its #strong[scope] (who or what it affects, and in which circumstances), and its #strong[removal condition] (the event, recovery, treatment, or change that ends it). The scope must follow from the fiction. Normal recovery and removal rules still apply. #emph[Mapped patrol routes-2] --- evading the patrols you watched; ends when the routes change.
- #strong[Stacking:] a new status of the same kind raises the existing tier by the new tier minus 1 (minimum +1), so small hits accumulate slowly.
- #strong[Tier 6:] the target is #strong[Taken Out] of whatever that status represents (dead, unconscious, captured, convinced, routed), within the status's scope. A harmful status reaching tier 6 also gives one #strong[Scar] (§6.3). Death needs a lethal cause and established stakes.
#colbreak()
- Statuses modify rolls by #strong[± their tier] (use only the highest relevant harmful status and the highest relevant helpful status).

- #strong[Same kind.] Harm is the same kind when it worsens the same injury, affliction or condition. Renaming it doesn't stop it stacking: another cut worsens #emph[wounded], renewed menace worsens #emph[terrified], but a fresh burn needn't stack with a concussion. The GM says whether new harm stacks #strong[before] you decide to Resist or accept an injury (§10.9).
- #strong[Order.] Resistance and armour reduce incoming harm before it stacks. Harm reduced to tier 0 isn't recorded and doesn't stack. A status can't go above tier 6; extra tiers have no effect unless a rule says so.
- #strong[What it hinders.] A status modifies only rolls within its recorded scope: #emph[slashed thigh-3] hinders running and climbing, not reading a ledger. A status can also decide what is possible: no roll lets you use a hand you no longer have. If circumstances change, review its scope; don't broaden it just because its name allows another reading.
- #strong[Life-threatening harm.] A physical status that reaches tier 6 can make you #strong[Dying] when lethal stakes are in play (§6.7).
]
#pagebreak()
