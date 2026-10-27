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

#set page(paper: "a4", fill: paper,
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
#colbreak()

#strong[New conflict or the same one?] Set fresh Disposition only for a genuinely new conflict: a materially different intent or changed circumstances. Moving through a doorway, switching from a Fight to a Chase, or changing tactics in the same unresolved struggle continues the same conflict; carry over Disposition, used injury trades (§10.9) and Taken Out characters.
=== 10.3 Superiority
Preparation can weaken an opponent's position before a conflict begins. Gain 1 Superiority for each of the following, to a maximum of 3:

- #strong[Know Thy Foe:] Obtain information that reveals an exploitable weakness, motive, fear, or vulnerability.
- #strong[Know Thy Battlefield:] Secure an advantageous position or understand circumstances that materially favour your approach.

- #strong[Know Thy Players:] Put a plan, alliance, resource, or other preparation into place that materially improves your position.

Each category grants Superiority only once. Preparation must apply to the opposing side and the declared stakes of the conflict.

After calculating starting Disposition and applying all other modifiers, reduce the opposing side's starting Disposition by your Superiority, to a minimum of 1. This adjusted value is its starting Disposition for all purposes, including recovery and compromise.
  
Superiority is not tracked or spent after the conflict begins. Abilities retain their normal benefits when their results also qualify for Superiority. Evaluate the concrete information, position, or preparation—not the ability’s name. Rephrasing one advantage does not create additional categories; additional categories require distinct material advantages. Determine Superiority only at conflict setup.
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

- #strong[Rotation:] every team member must act once in an exchange before anyone acts twice.
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

#strong[Hazard Truths and Woe.] A hazard Truth that endangers participants is a dangerous Scene Truth (§9.2): the GM gains the usual +1 Woe for the scene.

#strong[Other conflict types.] Scenery is whatever the contest is fought over. In an Argument it might be a crowd, a witness or a document. In a Hack, it might be an access point or a shared network. In a Chase, it might be a market stall or a bridge. Pick the nearest scenery action and rename its pieces.
  
==== Scenery Maneuvers
A Maneuver can use the scene itself. Instead of one of the four listed options, spend Power on a #strong[scenery action] from the table below.

#strong[Requirements.]
- The action needs a #strong[feature]: a Scene Truth, or something the GM has established as present (the chandelier, the grease barrel, the ledge). If nobody has established it, create it first with Create a Truth or Discover.
- Name the feature in your script. If it is gone when your Maneuver is revealed (a Disarm or Create a Truth that removes it, or an opposing scenery action that used it), the Maneuver has no effect and its Power is lost.
- Each feature supports #strong[one] scenery action in a conflict unless the GM says it can be reused. Mark it #emph[used up].
- The action uses the conflict type's normal Maneuver skill and is resolved as a normal Maneuver (§10.5).

#strong[Result and Danger.] The table gives what you get for the Power spent and a #strong[Danger]. The GM applies the Danger when the Maneuver is a Success at a Cost, or by spending 1 Woe on any scenery action. A Danger is a tier-1 status (Resistable as usual), a lost action, or a Truth that works against you. Describe the Danger to fit the action. The outcome must never contradict itself: if the boulder fell, it fell on everyone it could reach.

#figure(table(columns: (17%, 20%, 8%, 30%, 25%),
  table.header([Action], [Needs], [Power], [Result], [Danger]),
  [#strong[Grab a Ride] (swing, slide, vault)], [A fixture and a clear path], [2], [Gain Position and move to any spot in the scene. You can't be Impeded this volley.], [You land hard: tier-1 #emph[winded].],
  [#strong[Tip & Drop] (statue, boulder, cargo)], [A heavy object and something below it], [3], [Remove 3 Disposition from the opposing side, with no +1 bonus.], [Debris reaches an ally: one participant on your side takes tier-1 #emph[struck].],
  [#strong[Floor Collapse]], [A support (beam, line, bridge)], [3], [Create a rank-2 Truth (#emph[Collapsing Floor]) in the area. It is scoped to that area.], [You are hit by the snap: tier-1 #emph[stunned], or a lost tag.],
  [#strong[Carpet Pull]], [A floor covering and unwarned foes], [2], [Impede every opposing participant's next roll this exchange (- 3).], [You are left holding the carpet: your next Defend is at - 1.],
  [#strong[Drape Drop] (curtains, nets, sails)], [Hangings or a net], [1], [Impede one opponent (tangled). The cloth can't be used again.], [Your weapon is tangled: your next action is at - 1.],
  [#strong[Shove 'Em Off] (ledge, rail, stairs)], [An edge and an adjacent target], [3], [One opposing participant loses their next scripted action while they recover.], [You are pulled along: tier-2 #emph[off balance] unless you Resist. A fall is lethal only if lethal stakes are established (§10.2).],
  [#strong[Make a Hazard] (brazier, barrel, tank)], [Fuel, fluid or something breakable], [2], [Create a rank-1 Truth (#emph[Burning], #emph[Slick Floor]) scoped to the area.], [You are in the area: the Truth applies to you.],
))

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

#strong[Which rule wins.]
+ Explicit amendments and replacements in this damage cycle.
+ Current creature-specific rules and explicitly revised abilities.
+ The general procedures of this damage cycle.
+ Earlier general rules.

A rule overrides another only on the subject it addresses. An ability that heals a status doesn't also restore Disposition, refresh an injury trade or erase a Scar.

=== 10.15 Keeping It Fast
- Disposition of 8--11 should resolve in two or three exchanges.
- NPC sides script on index cards; minions act as a single group with one script.
- Table guideline: about 15--20 minutes per conflict.
]
  
