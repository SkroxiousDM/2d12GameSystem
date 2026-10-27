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
#colbreak()
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
  