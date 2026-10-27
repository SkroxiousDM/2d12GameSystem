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
//  CHAPTER — GENERIC PLAYBOOKS
// =====================================================================
#chapter("Generic Playbooks", [The six genre-neutral playbooks: Bellator, Furcifer, Savant, Interlocutor, Explorator and Adept. Each has eight special abilities, a capstone and starting equipment for three genres. Setting books can reskin these six or add new ones.], epigraph: [The noun of the character sentence.])

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
    [#strong[Resist];], [Roll 2 + Edge d12 and pay pool points by the highest die (no Edge reduction); at Edge −2 or lower, roll |Edge| dice and keep the lowest. Reduce a status by 2 tiers (§6)],
    [#strong[Status];], [Tiered condition 1--6; tier 6 = Taken Out (§5.1)],
    [#strong[Truth];], [Scene, site, region, or campaign tag that shifts Difficulty by ±3 (§8)],
    [#strong[Disposition];], [Conflict \"hit points\" (§10)],
    [#strong[Injury trade];], [Once per conflict, accept a tier-2/3/4 injury to cancel 1/2/3 Disposition loss (§10.9)],
    [#strong[Dying];], [Life-threatening tier-6 physical harm: 3-segment clock; Medicine vs. Hard 18 stabilises (§6.7)],
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
- #strong[Weapons] also give one or more #strong[conflict action tags] (Core Rules §10.8), e.g. #emph[+1 Attack];.
- #strong[Quality:] a fine or advanced item gives one extra benefit listed in its entry (it doesn\'t raise the cap).
- #strong[Escalation:] some items carry the #emph[Escalation] tag (Core Rules §9.3). Carried openly into a scene, each gives the GM 1 Woe.

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

Armour that absorbs a tier-4+ hit is #emph[damaged] (−1 Armour) until repaired during downtime. Armour never reduces Disposition loss, an injury you accepted as payment, or a running-dry status (Core Rules §6).

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
    [8], [#strong[★ Unstoppable];], [Once per scene, when a status would reach tier 6 on you, keep acting until the end of the scene. Then you\'re Taken Out as normal.],
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
