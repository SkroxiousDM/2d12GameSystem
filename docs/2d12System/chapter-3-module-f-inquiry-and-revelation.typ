// =====================================================================
//  CHAPTER III — OPTIONAL MODULES
//  MODULE F · INQUIRY & REVELATION  (drop-in; paste after Module E)
//  Uses only helpers from the core file: sidebar(), figure(table(...)).
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
// ----------------------------------------------------------------
    
== Module F: Inquiry & Revelation

#columns(2, gutter: 6mm)[
Use this module when a mystery is the point of the game: a murder, a vanished caravan, a forbidden text, a buried ruin. It separates *finding* from *understanding*. Finding the clue is never the challenge. Reading it correctly is.

The module changes nothing outside Inquiry scenes. Conflicts, travel, Resistance, Momentum and Woe all work as written.

=== F.1 The Core Rule

#quote(block: true)[
  If a scene holds a *core clue*, and a character has a fitting skill rated *+1 or higher*, that character finds it. No roll. No cost. No failure.
]

- *Core clue.* A fact the group needs to reach the next scene or to understand the Truth of the case. Every Inquiry scene has at least one.
- *Fitting skill.* Any skill from the setting's skill list that the GM can reasonably tie to the clue. Several skills can reach the same clue by different routes.
- *Description.* The player says what the character does and which skill it uses, or the GM offers the clue unprompted to a character who clearly has it.
- *Stuck groups.* If nobody has a fitting skill, the clue floats (§D.6) to another source. A core clue is never locked behind a missing skill.

=== F.2 Insight: The Extra Layer

A core clue gets you to the next scene. *Insight* is everything beyond that: motive, timing, who else was involved, what the culprit will do next, a shortcut, an ally. Insight is optional, and you can gain it in two ways.

#figure(table(columns: (20%, 80%),
  table.header([Method], [How it works]),
  [*Probe*], [Roll 2d12 + the skill vs. a Difficulty set by the GM (usually *Standard 15*). Each Power you spend on *Discover* (Core Rules §5) is one Insight. The usual outcomes apply: a miss by 1--3 is a Success at a Cost, and a miss by 4+ is a Failure that gives the GM 1 Woe. A failed Probe never removes a core clue.],
  [*Buy*], [Spend *4 − Edge* points (minimum 1) from the skill's pool, with no roll. You gain exactly one Insight. The pool is the one that pays for that skill in Effort and Resistance (Core Rules §3.3).],
))

Probe is cheap but risky. Buy is safe but drains the pool you also need for Resistance and Effort. Players should have to choose between them.

#sidebar("Which pool pays?")[
  *Sōma:* long vigils, exhumations, hard physical labour. *Akmē:* meticulous search, tailing, lock and mechanism work. *Psychē:* deduction, records, anatomy, languages. *Pneuma:* reading people, rites, dread places, the uncanny. The GM may allow a different pool when the fiction supports it (Core Rules §3.3).
]

=== F.3 What an Insight Can Be

When you gain an Insight, choose one. The GM may veto a choice that does not fit the scene.

- *Detail.* A true fact that deepens a clue you already have. It can help you solve the case, but it is never required to reach the next scene.
- *Edge.* Create a Truth that fits what you learned (_the guard captain is afraid of the cellar_). It lasts for the scene, or until the case ends if the group spends an extra Power or point.
- *Contact.* Name an ally, informant or source, and say how you know them. The GM adds a short tag.
- *Spotlight.* Show real expertise in front of others. You gain a free invoke of one tag or Truth about your standing, once per scene. Use this to shine, not to win a fight.
- *Foresight.* The GM tells you one thing the opposition is about to do.

If no Insight fits, nothing happens and no points are lost. Buy costs are refunded.

=== F.4 Boosted Skills and Recovery

- *Boosted skill.* At creation, mark one skill you hold at +1 or higher. When you Buy an Insight with it, regain 1 point to the paying pool. Mark another skill each time you have taken 4 Advances.
- *Recovery.* Pools recover as usual (Core Rules §6). The GM may also offer a *refresh opportunity*: a night in an archive, a round of drinks in the right tavern, a meal with a scholar. Each restores 2 points to the pool that fits.
- *Help.* One ally may Help a Probe as normal (Core Rules §2.4), or contribute a relevant skill to a Buy. Add +1 point of discount per helper, to a minimum cost of 1.
- *Tags.* A power tag that applies to the skill adds +1 to a Probe, as usual. Burning one gives +1 Power.

=== F.5 Danger and the Clock

Inquiry has no failure state, so it needs pressure from somewhere else. Pressure comes from the opposition, not from missed rolls.

- *Woe pays for Reaction.* When a Probe fails, or when the group lingers, the GM gains Woe as normal. The GM may spend Woe on an *Antagonist Reaction*: the culprit destroys evidence, a witness vanishes, a patron grows impatient, an ambush is arranged.
- *The case clock.* Start a 6-segment clock (Core Rules §7) called _They Know We Know_. Tick it when the group makes noise, takes a long time, or when a Probe fails by 4+. When it fills, the opposition acts decisively.
- *Danger is a separate scene.* A scene either asks "what do we learn?" (Inquiry) or "what do we survive?" (Conflict, Hazard). A scene that is both is two scenes: finish one, then start the other.
- *Clues never depend on winning a fight.* Winning may give Insight, but a core clue must be reachable even if the group loses, flees or is captured.

=== F.6 Building a Case

Work backward from the Truth, then forward through scenes.

+ *The Truth.* Write one paragraph: who, what, why, and how it was done.
+ *The Hook.* Tie it to a Belief, Goal or Instinct of at least one PC.
+ *The Twist.* Something that widens or changes the case halfway through.
+ *The Conclusion.* A confrontation, a choice, or a public accusation. Core clues bring the group here, but the players decide what to do with what they know.
+ *The scenes.* Link them with clues, as below.

#figure(table(columns: (24%, 76%),
  table.header([Clue type], [Use]),
  [*Core clue*], [Points to a scene or to the Truth. Always found, never rolled for.],
  [*Lead-in*], [A clue that points _to_ a scene. Give every scene at least *two* lead-ins from different scenes, so the case is a web and not a line.],
  [*Floating clue*], [The GM places it wherever the group looks first. Use it for the clue the case cannot do without.],
  [*Leveraged clue*], [Available only once the group holds another clue. Example: a suspect clams up until you confront them with the ledger.],
  [*Pipe clue*], [A detail that seems like colour now and pays off later.],
  [*Red herring*], [True, interesting and misleading. Never a lie told by the narrator. Give each one a source and a reason.],
))

Scene types: *Introduction*, *Core* (holds core clues), *Alternate* (another route to a clue), *Subplot*, *Action* (Conflict or Hazard), *Reaction* (the opposition responds) and *Conclusion*.

=== F.7 Running Inquiry

- *Cover the skills.* Build an Investigator Matrix, a table of the party's skills against the case's scenes. Give each PC a scene where their skills matter most.
- *Be generous.* Give information freely. Let players chase red herrings. Give minor NPCs a past and a want.
- *Core clues lead to the end, not through it.* Following them only gets the party to the last scene. Insight and good reasoning decide whether they arrive prepared.
- *Listen and improvise.* When players theorise, borrow their best ideas, provided they do not contradict a core clue or the Truth.
- *Share the world.* A good Insight lets the player describe the contact, the rumour or the detail, within the Truths already established.
- *Prompt early.* For the first session or two, remind players what their skills can do.

=== F.8 Weird Methods

Oracles, divinations, scrying, speaking to the dead and similar methods are tools that produce *clues*, not answers. An Arcana-style skill finds core clues like any other. The result is a true but partial, symbolic or conditional reading. Use Pneuma for the Buy or Probe. Opponents who expect scrying can block it, mislead it, or leave a false trail with their own working. Let the setting decide whether such evidence counts as proof.

#sidebar("Quick Reference")[
  *Core clue:* fitting skill (+1 or higher) → found, free. \
  *Probe:* 2d12 + skill vs. Standard 15; each Power on Discover = 1 Insight. \
  *Buy:* 4 − Edge (minimum 1) from the skill's pool = 1 Insight, no roll. \
  *Boosted skill:* Buy with it → regain 1 point. \
  *Case clock:* 6 segments; tick on noise, delay, or a Probe failed by 4+. \
  *Danger:* a separate scene; clues never depend on winning.
]
]
