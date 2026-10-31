// =====================================================================
//  THE 2d12 SYSTEM, VERSION 2 — CHARACTER SHEET
//  Generic core sheet (2 pages) + Frontier insert (1 page)
//  Built from: 2d12System/the-2d12-system-v2-core-rulebook.typ and TestamentOfDust/testament-of-dust-v2-setting-book.typ (formerly the master rulebook)
//
//  Compile with:
//      typst compile 2d12-character-sheet-v2.typ
//  Fonts (free, Google Fonts / OFL): EB Garamond, Cinzel.
//  Symbols (★ ◆ ◈) fall back to DejaVu Sans.
// =====================================================================

// ---------------------------------------------------------------- palette (same as the rulebook)
#let ink      = rgb("#16130f")
#let ash      = rgb("#2a2420")
#let paper    = rgb("#f4eee2")
#let tint     = rgb("#ebe2d0")
#let blood    = rgb("#7d1d1a")
#let ember    = rgb("#a8322a")
#let brass    = rgb("#a4813f")
#let dust     = rgb("#6b5f52")
#let moon     = rgb("#e9dcc0")
#let field-bg = rgb("#faf6ee")

#let body-font    = ("EB Garamond", "Libertinus Serif", "DejaVu Serif")
#let display-font = ("Cinzel", "Libertinus Serif", "DejaVu Serif")
#let symbol-font  = ("DejaVu Sans",)

#set document(
  title: "The 2d12 System · Version 2 — Character Sheet",
  author: "SkroxiousDM",
  keywords: ("2d12", "character sheet", "Testament of Dust", "tabletop RPG"),
)

#set page(paper: "us-letter", fill: paper,
  margin: (x: 1.25cm, top: 1.15cm, bottom: 1.2cm),
  footer: context {
    set text(font: display-font, size: 6.5pt, fill: dust, tracking: 0.12em)
    grid(columns: (1fr, auto, 1fr), align: (left, center, right),
      upper[The 2d12 System · Version 2],
      text(fill: blood)[◆ #counter(page).display() ◆],
      upper[Character Sheet · 2026-10-31])
  },
  footer-descent: 30%)

#set text(font: body-font, size: 8pt, fill: ink, lang: "en", region: "CA",
  number-type: "lining", hyphenate: false)
#set par(justify: false, leading: 0.42em, spacing: 0.5em)
#show "★": it => text(font: symbol-font, size: 0.85em, fill: ember, it)
#show "◆": it => text(font: symbol-font, size: 0.85em, fill: brass, it)
#show "◈": it => text(font: symbol-font, size: 0.9em, fill: blood, it)
#show "→": it => text(font: symbol-font, size: 0.85em, it)
#show strong: set text(weight: 700)
#show emph: set text(fill: ash)

// ---------------------------------------------------------------- helpers
#let diamond(size: 5pt, fill: brass) = box(baseline: -0.15em,
  polygon(fill: fill, (0pt, size/2), (size/2, 0pt), (size, size/2), (size/2, size)))

#let ornament-rule(width: 100%, color: brass) = block(width: width, spacing: 0pt,
  grid(columns: (1fr, auto, 1fr), align: horizon, column-gutter: 6pt,
    line(length: 100%, stroke: 0.5pt + color),
    { diamond(size: 3.5pt, fill: color); h(3pt); diamond(size: 6pt, fill: color); h(3pt); diamond(size: 3.5pt, fill: color) },
    line(length: 100%, stroke: 0.5pt + color)))

// small capital label
#let lbl(body, fill: dust, size: 5.8pt) = text(font: display-font, size: size, fill: fill, weight: 700, tracking: 0.06em, body)

// section heading: Cinzel in oxblood with a brass rule
#let sec(title, sub: none) = block(above: 9pt, below: 5pt, sticky: true, width: 100%, {
  text(font: display-font, size: 10.5pt, fill: blood, weight: 700, title)
  if sub != none { h(5pt); text(size: 7pt, style: "italic", fill: dust, sub) }
  v(-2.5pt)
  grid(columns: (auto, 1fr), align: horizon, column-gutter: 3pt,
    diamond(size: 4.5pt), line(length: 100%, stroke: 0.7pt + brass))
})

// checkbox
#let cb(s: 7pt) = box(width: s, height: s, stroke: 0.6pt + ink, fill: field-bg, baseline: 0.12em)

// a write-on line with an optional label in front
#let wline(label: none, h: 14pt, lw: auto) = block(height: h, width: 100%, spacing: 0pt,
  align(bottom, if label == none { line(length: 100%, stroke: 0.5pt + ash) } else {
    grid(columns: (lw, 1fr), column-gutter: 4pt, align: bottom,
      text(weight: 700, size: 8pt, label), line(length: 100%, stroke: 0.5pt + ash)) }))
// a line with a small italic prefix inside the same cell
#let pline(prefix) = grid(columns: (auto, 1fr), column-gutter: 3pt, align: bottom,
  pad(bottom: 1pt, text(size: 6.5pt, style: "italic", fill: dust, prefix)), line(length: 100%, stroke: 0.5pt + ash))

#let lines(n, h: 14pt) = for i in range(n) { wline(h: h) }

// a framed write-in box
#let wbox(w: 100%, h: 14pt, label: none) = box(width: w, height: h, stroke: 0.55pt + dust, fill: field-bg, radius: 1pt,
  inset: (x: 2.5pt, y: 2pt), if label != none { lbl(label, size: 5.2pt) })

// reminder panel (rulebook quote style)
#let note(body, size: 6.9pt) = block(width: 100%, spacing: 4pt, fill: tint, stroke: (left: 1.8pt + blood),
  inset: (left: 6pt, right: 5pt, y: 4pt), radius: (right: 1pt),
  { set text(size: size); set par(leading: 0.38em); body })

// tier track 1–6 (or custom start)
#let tiers(from: 1, to: 6, s: 7pt, gap: 4.5pt) = box(baseline: 0pt, grid(columns: range(from, to + 1).len(), column-gutter: gap,
  ..range(from, to + 1).map(t => stack(spacing: 1.5pt, cb(s: s), align(center, text(size: 5pt, fill: dust, str(t)))))))

// zebra rows grid
#let rows-table(cols, header, rows, size: 7pt, inset: (x: 3pt, y: 2.6pt)) = table(
  columns: cols,
  stroke: (x, y) => (bottom: 0.35pt + brass.lighten(40%)),
  fill: (x, y) => if y == 0 { blood } else if calc.even(y) { tint } else { none },
  inset: inset,
  ..header.map(h => text(font: display-font, size: 6pt, fill: paper, weight: 700, h)),
  ..rows.flatten().map(c => text(size: size, c)))

// pool card
#let pool(name, res) = block(width: 100%, spacing: 0pt, {
  block(width: 100%, spacing: 0pt, stroke: 0.9pt + ink, radius: 2pt, clip: true, {
    block(width: 100%, spacing: 0pt, fill: ink, inset: (y: 3.5pt),
      align(center, text(font: display-font, size: 10.5pt, fill: moon, weight: 700, tracking: 0.06em, name)))
    pad(x: 5pt, top: 5pt, bottom: 4pt, grid(columns: (1.15fr, 1fr), column-gutter: 5pt,
      stack(spacing: 2.5pt, box(width: 100%, height: 36pt, stroke: 0.6pt + dust, fill: field-bg, radius: 1pt),
        align(center, lbl[Current])),
      stack(spacing: 4pt,
        wbox(h: 16pt, label: [Max]),
        wbox(h: 16pt, label: [Edge (max 3)]))))
  })
  v(2.5pt)
  align(center, text(size: 6.4pt, style: "italic", fill: dust, res))
})

// sheet title band
#let title-band(kicker, title, right-side) = {
  grid(columns: (auto, 1fr, auto), align: (left + bottom, left + bottom, right + bottom), column-gutter: 8pt,
    text(font: display-font, size: 22pt, fill: ink, weight: 900, tracking: 0.02em, title),
    pad(bottom: 3pt, text(font: display-font, size: 8pt, fill: blood, weight: 700, tracking: 0.25em, kicker)),
    pad(bottom: 3pt, right-side))
  v(2pt)
  ornament-rule()
  v(5pt)
}

// =====================================================================
//  PAGE 1 — CORE
// =====================================================================
#title-band([CHARACTER SHEET], [2d12 System], text(font: display-font, size: 8.5pt, fill: dust, tracking: 0.1em)[VERSION 2 · CORE])

#grid(columns: (1fr, 1fr, 1fr), column-gutter: 12pt,
  wline(label: [Name]), wline(label: [Player]), wline(label: [Setting]))
#v(5pt)

// the sentence
#block(width: 100%, fill: field-bg, stroke: 0.6pt + brass, radius: 2pt, inset: (x: 8pt, top: 7pt, bottom: 4pt), {
  set text(size: 10pt, style: "italic")
  grid(columns: (auto, 1fr, 1fr, auto, 1.6fr), column-gutter: 6pt, row-gutter: 3.5pt, align: bottom,
    [I am a], line(length: 100%, stroke: 0.6pt + ink), line(length: 100%, stroke: 0.6pt + ink), [who], line(length: 100%, stroke: 0.6pt + ink),
    [], align(center, lbl[Descriptor]), align(center, lbl[Playbook]), [], align(center, lbl[Focus]))
})

#sec([Pools & Edge], sub: [your stress tracks · Edge cuts Effort cost · adds Resist dice])
#grid(columns: (1fr,) * 4, column-gutter: 7pt,
  pool([Sōma], [Wounds · poison · exhaustion · cold]),
  pool([Mētis], [Traps · falls · being caught or grabbed]),
  pool([Psychē], [Confusion · illusion · deception · madness]),
  pool([Pneuma], [Fear · despair · possession · corruption]))
#v(5pt)
#grid(columns: (1fr, 1fr), column-gutter: 10pt,
  {
    grid(columns: (auto, 1fr), column-gutter: 6pt, align: horizon,
      lbl(size: 6.5pt, fill: ink)[Effort Level],
      [#cb() 1 #h(6pt) #cb() 2 #h(6pt) #cb() 3])
    note[*Effort:* each use costs *3 − Edge* from the pool (min 0); uses per roll = Effort Level. Each buys *+1 bonus die* (before rolling) or *+1 Power* (after a success). Max +2 bonus dice, keep the best two. *Running dry:* a positive cost that empties a pool imposes a status at tier 1 + overrun. Only Resistance and imposed costs may overrun. Tier 6: Taken Out within scope and a Scar. Pools and statuses recover separately; no automatic refill (Core §6.1–6.5).]
  },
  {
    grid(columns: (auto, 1fr, auto), column-gutter: 6pt, align: horizon,
      lbl(size: 6.5pt, fill: ink)[Rests today],
      [#cb() 1st #h(5pt) #cb() 2nd #h(5pt) #cb() 3rd #h(5pt) #cb() Full],
      [#cb() #lbl(fill: ink)[Hardened]])
    note[*1st* a few seconds (1 action) *1d12 ÷ 2* · *2nd* 10 minutes *1d12 ÷ 2 + 1* · *3rd* 1 hour *1d12 ÷ 2 + 2* (round halves up) · *4th* 10 hours: all pools full, then the cycle resets. Split the points among the four pools, up to each maximum. Edge doesn't apply. *Hardened* (one-time Advance): +1 point per recovery roll.]
  })

#v(1pt)
#grid(columns: (1fr, 1fr), column-gutter: 14pt,
  // ---------- left column
  {
    sec([Skills], sub: [pyramid · each tier needs at least as many as the tier above])
    for (val, nm, n) in (("+4", "Great", 1), ("+3", "Good", 2), ("+2", "Fair", 3), ("+1", "Average", 2), ("  ", "  ", 2)) {
      block(height: 18pt, spacing: 0pt, grid(columns: (17pt, 34pt, 1fr), align: bottom,
        text(font: display-font, size: 12pt, fill: blood, weight: 700, val),
        pad(bottom: 1.5pt, text(size: 7pt, style: "italic", fill: dust, nm)),
        grid(columns: (1fr,) * n, column-gutter: 5pt, ..range(n).map(_ => line(length: 100%, stroke: 0.55pt + ink)))))
    }
    
    
    v(2pt)
    wline(label: [Anchor skill #text(weight: 400, style: "italic", fill: dust, size: 7pt)[(must be +3 or +4)]])
    v(4pt)
    note[
      *Sōma* Athletics · Brawl · Fight · Endure · Survival \
      *Mētis* Shoot · Stealth · Drive/Pilot · Craft \
      *Psychē* Notice · Investigate · Lore · Tech · Medicine · Deceive \
      *Pneuma* Will · Persuade · Intimidate · Empathy · Arcana\* \
      #text(fill: dust)[\*Renamed per setting. A skill's default pool pays its Effort and Resistance; the GM may allow another pool when the fiction fits.]
    ]
    note[
      *Roll 2d12 + Skill + Tags (max +2) ± Status* vs. Difficulty: Easy 12 · Standard 15 · Hard 18 · Formidable 21 · Heroic 24. Truths shift Difficulty ±3 per rank (±9 max). \
      *Meet it:* Success, 1 Power (+1 per full 3 over). *Miss by 1–3:* Success at a Cost (a consequence or GM +1 Woe, your choice). *Miss by 4+:* Failure, GM +1 Woe. \
      *Doubles:* success +1 Power; failure or cost, a complication (buy off: GM +2 Woe). Double 12s: success, +2 Power. Double 1s: always a complication. \
      *Bonus dice:* Effort · Momentum (1, then 2) · give the GM 1 Woe · Help. Unspent Power → party *Momentum* (max 6).
    ]
  },
  // ---------- right column
  {
    sec([Tags], sub: [Descriptor · Playbook · Focus])
    grid(columns: (1fr, auto), lbl[Power tags · +1 each, max +2 per roll · can be compelled], lbl[Burned])
    v(1pt)
    for i in range(6) {
      block(height: 15.5pt, spacing: 0pt, grid(columns: (1fr, 14pt), align: bottom,
        line(length: 100%, stroke: 0.5pt + ash), align(right, pad(bottom: 1pt, cb()))))
    }
    v(4pt)
    lbl[Weakness tags · −1 each, no cap · compel for +1 Tychē]
    lines(3, h: 15.5pt)
    v(3pt)
    text(size: 6.6pt, style: "italic", fill: dust)[*Burn* a power tag: +1 Power on a success, ignoring the cap. Recover it in downtime or at a milestone.]

    sec([Tychē Points])
    grid(columns: (44pt, 44pt, 1fr), column-gutter: 7pt,
      stack(spacing: 2.5pt, box(width: 100%, height: 30pt, stroke: 0.9pt + ink, fill: field-bg, radius: 2pt), align(center, lbl[Tychē])),
      stack(spacing: 2.5pt, box(width: 100%, height: 30pt, stroke: 0.6pt + dust, fill: field-bg, radius: 2pt), align(center, lbl[Refresh])),
      text(size: 6.8pt)[
        *Spend 1:* Invoke (reroll all, or +2 after rolling) · Declare a minor fact · Resist harder (cost 0). \
        *Earn:* accept a meaningful compel on any tag, Belief or Instinct, or compel yourself (+1; refuse = pay 1) · your Belief costs you (1/session) · MVP vote (+1 next session). \
        #text(fill: dust)[Refresh base 3, minimum 1. Hold at most Refresh + 3.]
      ])
  })

#sec([Beliefs · Goals · Instincts])
#for (l, hint) in (([Belief], [a conviction]), ([Goal], [this session]), ([Instinct], [if … then …])) {
  block(height: 17pt, spacing: 0pt, grid(columns: (40pt, 52pt, 1fr), align: bottom,
    text(weight: 700, size: 8.5pt, l), pad(bottom: 1pt, text(size: 6.5pt, style: "italic", fill: dust, hint)),
    line(length: 100%, stroke: 0.5pt + ash)))
}

#grid(columns: (1fr, 1fr), column-gutter: 14pt,
  {
    sec([Statuses], sub: [harmful and helpful])
    for i in range(5) {
      block(height: 19pt, spacing: 0pt, grid(columns: (1fr, auto), column-gutter: 8pt, align: bottom,
        pad(bottom: 6pt, line(length: 100%, stroke: 0.5pt + ash)), tiers()))
    }
    v(2pt)
    note[*Stacking:* a new status of the same kind adds its tier − 1 (min +1). *Tier 6:* Taken Out. Apply only the highest harmful and highest helpful status. *Record* each status's scope and what ends it; it applies only within that scope.]
  },
  {
    sec([Resist], sub: [roll 2 + Edge d12, keep the highest die])
    rows-table((1.2fr, 1fr, 1fr, 1fr, 1fr), ([Highest die], [Two 12s], [9–12], [5–8], [1–4]),
      (([*Cost*], [*0* + clear a tier-1], [*1*], [*2*], [*3*]),), size: 7pt)
    text(size: 6.6pt)[*Effect:* the incoming status drops *2 tiers*, or a severe consequence becomes a lesser one. *Armour* reduces physical harm further. *Negative Edge:* −1 rolls 1d12; −2 or lower rolls that many dice and keeps the *lowest*.]
    sec([Scars], sub: [weakness tags · the 4th retires the character])
    for n in range(1, 5) {
      block(height: 17.5pt, spacing: 0pt, grid(columns: (11pt, 44pt, 1fr), column-gutter: 4pt, align: bottom,
        text(font: display-font, size: 10pt, fill: blood, weight: 700, str(n)),
        wbox(h: 13pt, label: [pool]),
        line(length: 100%, stroke: 0.5pt + ash)))
    }
  })

#pagebreak()

// =====================================================================
//  PAGE 2 — GROWTH & GEAR
// =====================================================================
#title-band([GROWTH & GEAR], [2d12 System], box(width: 190pt, wline(label: [Name])))

#grid(columns: (1fr, 1fr), column-gutter: 14pt,
  // ---------- left
  {
    sec([Playbook Abilities])
    grid(columns: (1fr, 14pt, 14pt, 30pt), column-gutter: 3pt, lbl[Ability], align(center, lbl[★]), align(center, lbl[◆]), align(center, lbl[Refresh]))
    v(3pt)
    for i in range(7) {
      block(height: 16pt, spacing: 0pt, grid(columns: (1fr, 14pt, 14pt, 30pt), column-gutter: 3pt, align: bottom,
        if i == 0 { pline[Free:] } else { line(length: 100%, stroke: 0.5pt + ash) },
        align(center, pad(bottom: 1pt, cb())), align(center, pad(bottom: 1pt, cb())),
        align(center, box(width: 22pt, wbox(h: 12pt)))))
    }
    v(3pt)
    note[*Creation:* first playbook ability has no extra-slot cost; ★ Major still costs 1 Refresh. Tier 1 Focus is free. Up to 2 extra playbook abilities: ordinary 1 Refresh each, ★ Major 2 Refresh total each. Minimum Refresh 1. *Advancement:* new ability costs an Advance; ★ adds 1 Refresh. *Veteran* (after 6 Advances): another playbook's ability, +1 Refresh in addition to any ★ cost. *◆ Capstone:* 12 Advances and 4+ abilities from this playbook; no Refresh; one per character.]
    v(2pt)
    wline(label: [XP trigger])

    sec([Focus])
    for (t, hint) in (("T1", [free]), ("T2", [choose 1 of 2]), ("T3", [★ option here])) {
      block(height: 17pt, spacing: 0pt, grid(columns: (18pt, 50pt, 1fr), align: bottom,
        text(font: display-font, size: 10.5pt, fill: blood, weight: 700, t),
        pad(bottom: 1pt, text(size: 6.5pt, style: "italic", fill: dust, hint)),
        line(length: 100%, stroke: 0.5pt + ash)))
    }
    wline(label: [Link to a PC])

    sec([Experience])
    grid(columns: (auto, auto, 1fr, auto, auto), column-gutter: 5pt, align: horizon,
      text(weight: 700, size: 8.5pt)[XP],
      grid(columns: 6, column-gutter: 3.5pt, ..range(6).map(_ => box(width: 11pt, height: 11pt, stroke: 0.6pt + ink, fill: field-bg))),
      text(size: 6.5pt, style: "italic", fill: dust)[\= 1 Advance],
      text(weight: 700, size: 7.5pt)[Advances],
      box(width: 24pt, height: 15pt, stroke: 0.8pt + ink, fill: field-bg))
    v(3pt)
    note[*End of session, +1 per yes:* hit your playbook trigger (2 if desperate) · accomplished your Goal (+2) · your Belief drove a decision · your Instinct caused trouble or saved the day · you faced a weakness or Scar. \
    *Advance:* +1 skill (pyramid) · +3 to a pool or +1 Edge (max 3) · new ability · new power tag, or rewrite a weakness · +1 Refresh (max 3 + 1 per 3 Advances) · next Focus tier (3 Advances per tier) · +1 Effort Level (Level 2 at 3 Advances, Level 3 at 9) · Hardened (once).]

    sec([Relationships])
    wline(label: [Ally], lw: 30pt)
    wline(label: [Rival], lw: 30pt)
  },
  // ---------- right
  {
    sec([Load & Gear])
    [#cb() *Light 3* #h(8pt) #cb() *Normal 5* #h(8pt) #cb() *Heavy 7* #h(4pt) #text(size: 6.4pt, style: "italic", fill: dust)[encumbered: Mētis Effort +1, Stealth one step harder]]
    v(3pt)
    grid(columns: (1fr, 18pt, 1fr), column-gutter: 5pt, lbl[Item], align(center, lbl[Load]), lbl[Tags · action bonus])
    v(3pt)
    for i in range(8) {
      block(height: 16pt, spacing: 0pt, grid(columns: (1fr, 18pt, 1fr), column-gutter: 5pt, align: bottom,
        if i == 0 { pline[Signature:] } else { line(length: 100%, stroke: 0.5pt + ash) },
        wbox(h: 12pt), line(length: 100%, stroke: 0.5pt + ash)))
    }
    wline(label: [Always carried (0)])
    v(4pt)
    grid(columns: (auto, auto, 1fr), column-gutter: 10pt, align: horizon,
      [*Armour* #h(3pt) #cb() 1 #h(4pt) #cb() 2], [#cb() *Damaged* #text(size: 6.4pt, style: "italic", fill: dust)[(−1)]], [#cb() *Shield* #text(size: 6.4pt, style: "italic", fill: dust)[+1 Defend]])
    v(2pt)
    text(size: 6.4pt, style: "italic", fill: dust)[Light armour (1 load) is Armour 1; heavy (2 load) is Armour 2 and Mētis Effort +1. When you Resist physical harm, reduce it by that many extra tiers. A tier-4+ hit damages armour until repaired in downtime.]

    sec([Cyphers], sub: [Module A])
    [#lbl(fill: ink, size: 6.5pt)[Cypher limit] #h(4pt) #cb() 2 #h(4pt) #cb() 3]
    v(3pt)
    grid(columns: (1fr, 18pt, 1.2fr), column-gutter: 5pt, lbl[Cypher], align(center, lbl[Tier]), lbl[Effects])
    v(3pt)
    for i in range(3) {
      block(height: 16pt, spacing: 0pt, grid(columns: (1fr, 18pt, 1.2fr), column-gutter: 5pt, align: bottom,
        line(length: 100%, stroke: 0.5pt + ash), wbox(h: 12pt), line(length: 100%, stroke: 0.5pt + ash)))
    }
    v(3pt)
    note[*Use:* an action, usually no roll. It makes Power equal to its tier, spent only on its listed Effects. *Over the limit:* at scene end the GM gains 1 Woe per extra cypher and may roll Volatile (d12): 1–4 one fires · 5–8 one is ruined · 9–12 nothing yet.]

    sec([Artifacts], sub: [Module A · attune to 2 at most])
    for k in range(2) {
      block(width: 100%, spacing: 4pt, stroke: 0.55pt + dust, radius: 2pt, fill: field-bg.transparentize(40%), inset: (x: 5pt, y: 4pt), {
        grid(columns: (1fr, auto), column-gutter: 8pt, align: bottom,
          stack(spacing: 2pt, line(length: 100%, stroke: 0.5pt + ash), lbl(size: 5.2pt)[Name]),
          [#cb() #text(size: 7pt, weight: 700)[★ Attuned] #text(size: 6pt, style: "italic", fill: dust)[(−1 Refresh)]])
        v(8pt)
        grid(columns: (1.5fr, 22pt, 1fr), column-gutter: 6pt, align: bottom,
          stack(spacing: 2pt, line(length: 100%, stroke: 0.5pt + ash), lbl(size: 5.2pt)[Tags · ability]),
          stack(spacing: 2pt, wbox(h: 11pt), align(center, lbl(size: 5.2pt)[1 in d12])),
          stack(spacing: 2pt, line(length: 100%, stroke: 0.5pt + ash), lbl(size: 5.2pt)[Quirk · weakness]))
      })
    }
    text(size: 6.4pt, style: "italic", fill: dust)[*Depletion:* after each use roll d12; on the rating or lower it is depleted until restored.]
  })

#sec([The Grind], sub: [Module B · conditions are taken in order and don't stack])
#grid(columns: (1fr, 128pt), column-gutter: 12pt,
  rows-table((22pt, 66pt, 1.3fr, 1.25fr), ([], [Condition], [Effect], [Cleared by]), (
    ([#cb() 1], [*Hungry & Thirsty*], [Short rests restore nothing], [A meal, or Survival (Restore)]),
    ([#cb() 2], [*Weary*], [Effort costs +1], [A full night's rest]),
    ([#cb() 3], [*Exposed*], [−1 Sōma Edge (cold, heat, wet)], [Shelter and a recovery roll]),
    ([#cb() 4], [*Shaken*], [−1 Pneuma Edge; Fear statuses +1 tier], [Will or Empathy roll, or a Belief moment]),
    ([#cb() 5], [*Sick*], [−1 to all rolls; can't recover pools], [Medicine (Hard) and rest]),
    ([#cb() 6], [*Broken*], [Taken Out of the mission; gain a Scar], [Players' Turn only]),
  ), size: 6.8pt, inset: (x: 3pt, y: 3.2pt)),
  {
    text(font: display-font, size: 9.5pt, fill: ink, weight: 700)[Checks]
    v(1pt)
    grid(columns: 6, column-gutter: 4pt, ..range(6).map(_ => box(width: 13pt, height: 13pt, stroke: 0.6pt + ink, fill: field-bg)))
    v(4pt)
    text(size: 6.5pt)[*Earn:* apply your own weakness or Scar to a roll (−1) for 1 Check, or 2 if the penalty makes it fail. 1 free each Players' Turn. \
    *Spend 1:* recover from a condition or status · downtime clock · research or craft · restore a burned tag · attune an artifact · pursue your Goal.]
  })

#sec([Notes])
#block(height: 1fr, width: 100%, spacing: 0pt, layout(size => lines(int(size.height / 16pt), h: 16pt)))

// Evaluate the split page with the existing sheet helpers in scope.
#eval(read("tod-character-sheet-page.typ"), mode: "markup", scope: (
  title-band: title-band, display-font: display-font, dust: dust,
  ink: ink, blood: blood, ash: ash, sec: sec, note: note, cb: cb,
  lbl: lbl, tiers: tiers, wline: wline, rows-table: rows-table, lines: lines,
))
