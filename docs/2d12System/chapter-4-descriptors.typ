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
//=====================================================================
//
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
  