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

== Module D --- Downtime (Torchbearer, Imperium Maledictum) 
#columns(2, gutter: 4mm)[ 
Downtime is the stretch between expeditions when the party is safe enough to recover, prepare, build and answer to the people around them. It has three equal jobs: #strong[recover and prepare] (treat injuries, restore tags, restock), #strong[make and grow] (craft, research, adapt to loss) and #strong[connect] (tend allies, settle obligations, push on the wider world). Module D adds #strong[no new currency]. It runs on Checks, Power, clocks and Woe, all of which already exist.

=== D.1 When It Applies

- #strong[Haven.] Downtime begins when the party reaches a place with shelter, food and enough safety that nobody expects an attack tonight: a village, outpost, monastery, camp or home base. The GM decides.
- #strong[Field rests stay separate.] Core Rules §6.5 rests, and Module B's night's rest and Grind-condition recovery, work as written. They give no Checks or endeavours.
- #strong[A stay ends] when the party leaves the haven or is forced out. Finished work stands; clocks keep their progress.
- #strong[Replaces Module B.4.] If you use Module D, the Players' Turn follows these rules.

=== D.2 The Stay 
  #strong[Length and intervals.] An #strong[interval] is one full week. Healing intervals (Core Rules §6.6) run alongside it. #emph[All numbers in this module are playtest values.]

#figure( [#table( columns: (22%, 44%, 34%), align: (auto,auto,auto,), table.header([Stay], [Length], [Free Checks per PC],), table.hline(), [#strong[Brief];], [Up to 3 days], [1], [#strong[Ordinary];], [About a week (1 interval)], [2], [#strong[Extended];], [Each further full week is another interval], [+1 per extra interval], )] , kind: table )

- #strong[Checks.] Free Checks are added to any Checks earned on the expedition (B.4: applying a weakness tag or Scar to your own roll). Spend #strong[1 Check] for one endeavour. Unspent Checks are lost when the stay ends. You may give a Check to another PC whose endeavour you join.
- #strong[Stay Woe.] The GM does not use expedition Woe in downtime. The stay starts with #strong[1 Woe per PC]. Woe gained from downtime rolls joins this pool, which pays for the stay's event, complications and danger clocks, then is discarded (§9.2).
- #strong[Momentum] gained in downtime decays at the end of each scene and never leaves the stay (§9.1). #strong[Tychē Points] do not refresh unless the downtime begins a new session (§4.1); invokes, declares and compels work as normal.
- #strong[Goals.] At the end of the stay, each player writes one Goal for the next expedition (§3.5).

=== D.3 Upkeep 
  Staying costs something. Instead of a currency, the stay carries an #strong[Upkeep clock of 6]. Settings may change its size or replace it with their own currency.

#figure( [#table( columns: (22%, 16%, 62%), align: (auto,auto,auto,), table.header([Standard], [Ticks / interval], [What it provides],), table.hline(), [#strong[Meagre];], [0], [Shelter and food. Truth: #emph[Poor Rest] (+1 step to Recuperate)], [#strong[Ordinary];], [1], [Reliable lodging and meals], [#strong[Comfortable];], [2], [Privacy and workspace. Truth: #emph[Well Appointed] (−1 step to Recuperate and Make)], [#strong[Hosted];], [0], [A host provides everything. Truth: #emph[Obligation] to the host], )] , kind: table )

- #strong[If the clock fills:] the haven demands payment. The GM gains 2 Stay Woe, a Debt complication appears, and the clock resets to 2.
- #strong[Routine provisioning] (restock party Supplies to 4, ordinary repairs) needs no roll and ticks Upkeep by 1.
- #strong[Hospitality is not free.] A host creates an Obligation Truth the GM can use later.

=== D.4 Endeavours 
  An #strong[endeavour] is a stretch of focused effort during the stay.

- #strong[Routine.] If failure would add nothing and the outcome is certain, no roll is needed. It generates no Power and no Momentum (§6.6).
- #strong[Uncertain.] If the result matters, roll the listed skill against #strong[Standard 15], adjusted by Truths. Spend Power on Effects (§5). Unspent Power becomes Momentum, which decays.
- #strong[Success at a Cost:] the GM adds a consequence, or the stay pool gains 1 Woe (player's choice, §2.5). #strong[Failure:] the effort doesn't take; the GM announces any consequence before another attempt, and the stay pool gains 1 Woe.
- #strong[Light or Strenuous.] A character with a lasting injury who takes a Strenuous endeavour does not progress that injury's healing interval this interval (§6.6).

#strong[Shared endeavours.] A shared endeavour has one goal for the party or a subgroup. It costs #strong[2 Checks, paid from the participants' pooled Checks].

- Choose a lead. Each participant describes their contribution.
- The lead rolls. Participants add Help as in §2.4, within the +2 bonus-die cap.
- Spend Power as usual. The result benefits all participants.
- Participants need not pay equally. Non-participants pay nothing.

#figure( [#table( columns: (19%, 11%, 22%, 48%), align: (auto,auto,auto,auto,), table.header([Endeavour], [Tag], [Skill], [Typical Effects],), table.hline(), [#strong[Recuperate];], [Light], [Medicine, Empathy, Craft], [Restore; restore a burned tag; mark an injury #emph[treated] (−1 tier)], [#strong[Prepare];], [Strenuous], [Survival, Persuade, Drive/Pilot], [Create a Truth (#emph[Provisioned];, #emph[Passage Arranged];); Discover], [#strong[Make and Mend];], [Strenuous], [Craft, Tech], [Advance a project clock; Create; restore a depleted artifact], [#strong[Investigate];], [Light], [Investigate, Lore, Notice], [Discover; confirm a rumour (C.4)], [#strong[Develop];], [Light], [Varies], [Advance a Scar or loss-adaptation clock (D.5)], [#strong[Connect];], [Light], [Persuade, Empathy, Intimidate], [Create a contact Truth; subtle cypher (A.1); Advance a faction clock], [#strong[Sustain];], [Strenuous], [Craft, Persuade, Lore], [Remove Upkeep segments], )] , kind: table )

For an unlisted activity, the GM names a skill, a Light or Strenuous tag and the nearest Effects.

- #strong[Recuperate] counts as appropriate care (§6.6). It does not change treatment limits: at most 1 tier per lasting injury, then #emph[treated] until a healing interval removes a tier. It restores #strong[one] burned tag (§3.4). It cannot remove a Scar, refill pools (the 4th rest already does) or clear an affliction beyond what its source allows.
- #strong[Prepare] can supply Superiority (§10.3) only against a #strong[named opposition declared beforehand], only one category per stay, and only if the preparation is concrete. The cap of 3 per conflict still applies.

=== D.5 Projects 
  A #strong[project] is any goal too big for one endeavour. Use an #strong[8- or 12-segment clock] (§7), ticked by Advance. Each roll toward it costs 1 Check.

#figure( [#table( columns: (62%, 10%, 28%), align: (auto,auto,auto,), table.header([Project], [Size], [Notes],), table.hline(), [Crafting a notable item, restoring a workshop], [8], [Needs access and materials], [Restoring a depleted artifact (A.2)], [8], [Needs fitting tools], [Adapting to permanent harm (§6.8): prosthesis, retraining, workaround], [8], [Does not remove a Scar], [Changing a Scar (§6.3)], [12], [Completing the clock counts as the milestone], [Changing a site (C.6)], [8], [A Site Truth], [Changing a region (C.6)], [12], [A Region Truth], )] , kind: table )

- #strong[Milestones.] For long projects, the GM names 2--3 milestones along the clock, such as #emph[secure the premises];, #emph[obtain equipment];, #emph[complete the work];.
- #strong[Minimum time.] A project cannot finish faster than the fiction allows, whatever the Checks.
- #strong[Unfinished projects] keep their progress until the next stay.
- #strong[Optional: Study Toward an Advance.] Off by default. A 6-segment clock, ticked in Develop endeavours. When it fills, the character gains #strong[1 XP]. Use it only if your table wants training to feed advancement directly (§12 has no training rule).

=== D.6 Between-Adventure Events 
  Roll d12 once at the start of an ordinary stay, #strong[before] endeavours are declared, or choose a result that fits the fiction. In an Extended stay, roll again every second interval after the first. An event should offer a choice, not remove the stay.

#figure( [#table( columns: (10%, 20%, 25%, 25%, 20%), align: (auto,auto,auto,auto,auto,), table.header([d12], [Family], [What changed], [Offer], [If ignored],), table.hline(), [1--2], [#strong[Quiet];], [Nothing disturbs the party], [Plans proceed], [---], [3], [#strong[Opportunity];], [A specialist passes through], [One endeavour gets −1 step Difficulty (#emph[Expert Help];)], [They leave], [4], [#strong[Opportunity];], [A bargain on supplies], [Routine provisioning ticks no Upkeep], [The chance passes], [5], [#strong[Relationship];], [An ally is in trouble], [A shared endeavour helps them; create a favour Truth], [Their clock ticks], [6], [#strong[Relationship];], [A rival or old acquaintance arrives], [Compel a tag or Belief; Connect or Intimidate to change the relationship], [They act against the party], [7], [#strong[Obligation];], [A past promise comes due], [1 Check discharges it; refusing adds a weakness tag (#emph[Owes X];)], [The GM may compel it], [8], [#strong[Obligation];], [Costs rise], [+1 Upkeep tick; Sustain is −1 step this stay], [Debt grows], [9], [#strong[Settlement];], [A service is short-handed], [Truth #emph[Short-Handed];: +1 step to Recuperate and Make], [Services stay limited], [10], [#strong[Settlement];], [A dispute, festival or quarantine], [Connect gets −1 step; arrival or departure may be restricted], [The mood hardens], [11], [#strong[Consequence];], [Word of the last expedition arrives], [A reputation Truth (good or bad)], [It spreads], [12], [#strong[Consequence];], [A faction advances its plan], [Tick a faction or danger clock by 1 and reveal it], [It ticks again at the stay's end], )] , kind: table )

=== D.7 The Stay in Order

- #strong[Establish.] The GM names the haven, its services and the stay length.
- #strong[Show deadlines.] Reveal known changes, clocks and obligations.
- #strong[Set Upkeep.] Choose a standard (D.3).
- #strong[Event.] Roll or choose (D.6).
- #strong[Declare.] Players declare individual and shared endeavours and spend Checks.
- #strong[Resolve.] Play out only the consequential scenes. Healing intervals run alongside.
- #strong[World update.] Tick only clocks tied to established plans or deadlines. The GM may spend Stay Woe to tick danger clocks.
- #strong[Close.] Discard leftover Checks and Stay Woe. Record unfinished projects, write a Goal, prepare to depart.

#strong[Example.] The party spends an ordinary week (2 free Checks each) at a river outpost. Ysolde has a tier-3 injury; Brannock needs a new tool kit. The event is d12 = 9: the outpost is short-handed (#emph[Short-Handed];). They choose Ordinary upkeep (1 tick). Ysolde takes Recuperate (Light): routine care, no roll, and the injury is marked #emph[treated] (tier 3 to tier 2). She does nothing Strenuous, so her healing interval continues. Brannock starts an 8-segment kit project; he and Ysolde pool 2 Checks for a shared Make and Mend push. Brannock rolls Craft, Ysolde Helps, and 3 Power Advances 3 segments. At the close the clock keeps its progress, and each player writes a Goal. ]