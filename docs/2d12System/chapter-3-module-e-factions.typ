
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

== Module E — Factions, Standing & Obligations

#columns(2, gutter: 6mm)[
Organizations have ambitions, resources, loyalties, and limits. This module connects their struggles to the party's adventures: factions provide opportunities and assistance; the party's actions determine what those factions can accomplish.

Use this module when alliances, patronage, collective action, or political consequences matter. It is optional and remains setting-neutral. These rules are a playtest draft, not tested balance claims.

When enabled, this module replaces the faction action procedure in Module C.5. Retain the rest of Module C. Use the core rules for PC checks, Effects, Truths, clocks, and conflicts except where an explicit organizational exception appears below.

=== E.1 Faction Records

A faction is an organized group pursuing a shared purpose: a household, village council, guild, temple, company of soldiers, criminal network, or administration.

Record:
- Name, purpose, and long-term ambition.
- Operational reach: the places and communities where it can act.
- Five Qualities, each rated 0 to +4.
- Two or three assets and one vulnerability.
- Standing toward the party, from −3 to +3.
- A representative who can explain or authorize requests.
- One current project and its clock.
- An important ally and rival, where relevant.
- Outstanding favors, obligations, offices, and personal exceptions.

Prepare full records only for active factions. A name, purpose, and Standing suffice for a background group. Begin with three active factions; normally track no more than five at once.

The party may found or lead a faction. Give it ratings justified by its actual people and resources; do not purchase a second character sheet with personal pool points. Leadership grants only the authority its governing structure recognizes.

=== E.2 Organizational Qualities

#table(columns: (26%, 74%),
  table.header([Quality], [Measures]),
  [Might], [Organized force, military readiness, and coercive capacity.],
  [Treasure], [Accessible wealth, credit, and financial organization.],
  [Influence], [Information networks and ability to shape outside decisions.],
  [Territory], [Productive infrastructure, population, holdings, transport, and logistical reach.],
  [Cohesion], [Internal loyalty, legitimacy, discipline, and shared identity.],
)

#table(columns: (22%, 78%),
  table.header([Rating], [Capability]),
  [0], [No independent organized capability in this field.],
  [+1], [Limited.],
  [+2], [Established.],
  [+3], [Strong.],
  [+4], [Exceptional.],
)

Qualities measure capability, not fixed population or geographical size. A small veteran force can have strong Might. A mobile caravan can have Territory through its vehicles, workforce, and supply arrangements.

Explain every nonzero rating through concrete assets. Influence +3 might mean couriers, shipping agents, and sympathetic officials. It does not mean the faction knows every secret.

A Quality of 0 does not prohibit its members from acting as individuals. It means the organization cannot independently mount a major action in that field without establishing the missing capability or securing outside support.

==== Assets and reach

Assets determine what the faction can actually do. A treasury cannot occupy a town without personnel; soldiers cannot cross a sea without transport. A rating never creates an unstated army, fleet, office, or network.

When an asset matters mechanically, record a Truth with scope, rank, and removal condition. Use its concrete additional advantage, not a second bonus merely restating the Quality. Might already includes the ordinary readiness of the force that justifies its rating.

Record a distant branch separately when local capabilities matter. The imperial institution's full resources are not automatically available to every provincial official.

==== Changing Qualities

Change a permanent rating only after a lasting change to the capacity it represents. Losing one shipment normally changes an asset, creates Strain, or sets back a project. Losing the principal treasury and credit network may reduce Treasure.

An improvement normally requires an appropriate 8- or 12-segment project, a concrete new resource, and an outcome large enough to justify the next rating. Repetitive minor jobs cannot manufacture permanent growth. No Quality exceeds +4.

=== E.3 Standing

Standing measures the faction's normal policy toward the party, not the feelings of every member.

#table(columns: (13%, 24%, 63%),
  table.header([Score], [Relationship], [Normal treatment]),
  [−3], [Enemy], [Actively seeks the party's capture, expulsion, destruction, or lasting defeat.],
  [−2], [Hostile], [Obstructs the party and supports credible action against its interests.],
  [−1], [Distrustful], [Demands safeguards, compensation, or supervision.],
  [0], [Uncommitted], [Judges requests on their immediate merits.],
  [+1], [Welcoming], [Offers ordinary hospitality, introductions, and opportunities.],
  [+2], [Trusted], [Shares sensitive information and considers meaningful assistance.],
  [+3], [Allied], [Treats the party's welfare as an organizational interest within agreed limits.],
)

Standing is not membership, command, fear, or internal unity. A faction may be cohesive and hate the party, or welcome the party while suffering mutiny. A feared enemy can comply with a threat without becoming friendly.

==== Relationship Truths

When identity is known and the relationship materially affects cooperation, access, or credibility, use one relationship Truth:

#table(columns: (20%, 56%, 24%),
  table.header([Standing], [Truth], [Rank]),
  [−3 / −2], [Enemies of the Faction / Hostile Reception], [2 adverse],
  [−1], [Distrusted by the Faction], [1 adverse],
  [0], [None], [—],
  [+1], [Welcome Among the Faction], [1 helpful],
  [+2 / +3], [Trusted by the Faction / Bound by Alliance], [2 helpful],
)

Each relevant rank shifts Difficulty one step (3 points), following Core Rules §8. Helpful and adverse Truths cancel normally; the net shift remains capped at three steps. Relationship Truths do not automatically modify combat, technical work, stealth, or deception.

Scope: recognized dealings with this faction where the relationship affects the request. Removal: replace the Truth when Standing changes or the relevant relationship ends. A personal exception replaces this Truth for its subject; it never stacks with it.

Trust does not compel obedience. Even an ally may refuse something beyond its means, authority, commitments, or capacity to survive. Ordinary assistance already willingly available needs no roll.

==== Changing Standing

Change Standing for consequential deeds the faction learns about and attributes to the party:
- +1: complete important work, protect a valued asset, uphold a difficult agreement, or make a meaningful sacrifice.
- +2: avert an organizational catastrophe or deliver a transformative victory.
- −1: cause significant avoidable loss, break a meaningful agreement, or seriously undermine the faction.
- −2: betray it, destroy an irreplaceable asset, or deliberately deliver it into an enemy's hands.

Apply changes once per undertaking, normally at its conclusion or when the consequences become known. Usually apply a net change of at most one step per faction per adventure; reserve two steps for decisive events. Clamp Standing between −3 and +3.

Paid work may demonstrate reliability. Honest failure is not betrayal. Declining an ordinary job is not an automatic penalty. Trivial gifts and repeated errands do not improve Standing indefinitely.

Secret deeds create no immediate public change. Record pending exposure when necessary. False accusations may change treatment; record the accusation as a Truth so disproving it offers a route to repair.

Helping one faction does not automatically offend every rival. Change another faction's Standing only when its interests were meaningfully affected and it knows whom to credit or blame.

=== E.4 Personal Exceptions and Authority

Use party Standing by default. Record an individual exception only when a particular relationship matters: an estranged child of the leader, a sworn member, an acknowledged oathbreaker, or someone who saved a representative's life.

Give the character an effective Standing for that relationship when needed. Party +1 and a character's temple exception −2 means the temple normally welcomes the group but treats that character as hostile in relevant dealings.

An exception applies to its subject, not automatically to everyone standing beside them. A trusted member can arrange an audience for companions without making them trusted members. Personal deeds change the exception unless the faction reasonably holds the whole party responsible.

==== Membership and office

Record membership, commissions, and offices as scoped Truths, not another numerical Influence track. Examples include Sworn Member, Commissioned Envoy, Licensed Supplier, and Captain of the Northern Watch.

State the permissions, jurisdiction, duration, duties, and removal conditions. Authority requires appointment, election, sponsorship, initiation, or another established process. Standing may open that opportunity; it does not replace it.

A legitimate seal may make access possible. It does not substitute Standing or a faction Quality for Persuade or another PC Skill.

==== Patronage

Record what a patron supplies, the service expected, what lies outside the arrangement, and what ends it. Routine agreed service is not a new favor each time. Refusal matters according to the actual agreement, not an unlimited claim on the character.

=== E.5 Seeking Aid

+ State the assistance, timing, location, authorizing representative, burden, and offered compensation.
+ Check capability, reach, available assets, and the representative's authority.
+ Grant willing, available, inconsequential assistance without a roll.
+ Use a single core check for limited uncertainty; use an Argument or Negotiation conflict when the core conflict criteria are met.
+ If the request is impossible now, explain what would have to change.

For a single request check, establish burden before applying relationship and other Truths:

#table(columns: (29%, 71%),
  table.header([Base Difficulty], [Burden]),
  [Easy 12], [Minor inconvenience or readily available assistance.],
  [Standard 15], [Meaningful expense, limited exposure, or diverted personnel.],
  [Hard 18], [Serious expense, danger, secrecy, or political embarrassment.],
  [Formidable 21], [A major commitment threatening an important interest.],
  [Heroic 24], [An extraordinary but still possible commitment.],
)

PCs roll normal Skills. Pools pay for Effort and Resistance; do not add a pool as an attribute. Persuade, Deceive, and Intimidate reflect different methods and consequences. Evidence, compensation, leverage, and timing can change the request's feasibility or relevant Truths.

Use normal core outcomes, Power, doubles, and currencies. A Success at a Cost grants the agreed help with the normal consequence-or-Woe choice. Failure does not secure the help and produces an appropriate move. A failed request cannot be repeated unchanged: introduce materially new terms or circumstances.

Extra Power can improve agreed scope, speed, or discretion where normal Effects and the fiction support it. It cannot buy permanent Standing or unlimited resources.

=== E.6 Faction Support in Party Scenes

A Quality establishes what support the faction can organize; Standing, authority, and obligations govern whether it is provided. No faction Quality is added directly to a PC roll.

Support has one concrete application:
- Permission: equipment, credentials, transport, or access makes the action possible, or removes the need for a particular roll.
- A scoped Truth: actual conditions change Difficulty under Core Rules §8.
- Active Help: a participating ally uses the core Help procedure, pays its normal cost, and shares the risk. Define an accompanying NPC normally if its pool expenditure needs tracking; Qualities are not personal pools.

Do not award all three for the same contribution. Stronger Qualities increase feasible reach, reliability, and scale, not an automatic numerical bonus. Might +4 can organize support beyond Might +1; it does not grant +4 Fight.

An escort may make a friendly checkpoint automatic. It cannot make every later negotiation easier simply because it exists. Personnel face the real risks of deployment, and a borrowed resource is not freely duplicable or permanently transferred.

=== E.7 Favors and Obligations

A favor is a specific acknowledged promise. An obligation is the same record from the debtor's side. Record debtor, creditor, service, limits, notice, deadline or duration, and what settles it. Record who can call it in and whether it benefits the party or a named individual.

Agree to scope when the promise is made. “You owe us something” is an unresolved negotiation, not a blank cheque. Favors can be payment for work, part of an alliance, or compensation for aid.

Calling in a feasible, acknowledged favor within its terms requires no request check. Roll only for a separate uncertainty: evading inspection, locating a vessel, or reaching a destination. Broader or newly dangerous work may require renegotiation; establish whether the changed circumstances fall within the original agreement before rolling.

Possible settlements include fulfillment, an accepted substitute, partial settlement, or an agreed delay. Genuine inability is not automatically betrayal, though concealment or indifference may damage trust.

Knowingly refusing a feasible agreed obligation normally costs one Standing; severe betrayal may cost two. Owing a favor does not remove a player's control over their character. State the consequences and let them choose.

Calling in an earned favor does not reduce Standing. Repaying one does not automatically improve it. Falling Standing does not erase outstanding promises. A favor transfers only with the debtor's consent.

=== E.8 Adventures and Strategic Advantages

Before an undertaking, explain its likely strategic effect when the characters can reasonably foresee it. “Secure the bridge and our forces can cross this turn with a rank-1 advantage” gives the players a meaningful choice.

Successful adventures may:
- Accomplish an objective outright.
- Advance or obstruct a project through the Advance effect.
- Establish a scoped Truth for a later faction action.

Examples: Enemy Deployment Exposed; Crossing Secured; Troops Paid Before the Muster; Reformers Have Public Support; Southern Squadron Will Not Intervene.

Record scope, rank, duration, and removal condition. Rank 1 is normal; rank 2 requires a decisive advantage. One-use preparation applies to the next relevant action and then expires; persistent advantages endure only as long as their established circumstances do. Apply the core Truth cap.

A roll does not automatically create a lasting Truth merely because it succeeds: use the appropriate core Effect or establish it as the agreed outcome of the completed undertaking. Larger lasting changes need the appropriate project or milestone, as in Module C.6.

Do not require a faction roll to confirm what the party already accomplished. Capturing a bridge does not lead to another roll to see whether it was captured. A separate roll may determine whether the army exploits that opportunity.

Distinct consequences can follow one achievement, but never award duplicate progress or duplicate modifiers for the same work. One bad PC roll does not automatically damage a whole faction; consequences must reach its people or resources.

=== E.9 Commitments and Strain

A faction normally takes one major project action per World Turn without automatic Strain. Exceptional deployment can exhaust a capability.

Mark one relevant Quality as Strained when the faction takes an additional major action, makes an exceptional deployment to support the party, overextends to meet a deadline, or suffers an explicit exhaustion consequence. Ordinary hospitality, meals, and introductions do not qualify.

A Strained Quality operates one rating lower, minimum 0. Strain does not stack on that Quality and is not also an adverse Truth for the same exhaustion. A faction can take at most one additional major action per turn; declare it and mark Strain before resolving that additional action. It must strain the primary Quality of that action, which must not already be Strained. Thus additional actions cannot be repeated indefinitely.

Clear Strain after one full World Turn in which the affected capability is not used for a major action or exceptional commitment, provided recovery remains plausible. Ordinary background activity does not prevent recovery. Strain alone reducing effective Cohesion to 0 does not trigger Fracture; use permanent Cohesion for E.12.

Exhaustion is not destruction. Rest can recover tired guards; it cannot rebuild a burned warehouse. Track persistent losses separately.

=== E.10 World Turns

Choose one cadence: each in-world week, between adventures, or another agreed meaningful interval. Do not take extra turns simply because a session ended. This procedure replaces Module C.5 while Module E is enabled.

+ Resolve known consequences of recent play; update Standing, obligations, assets, and exceptions.
+ Declare each active faction's project action, primary Quality, intended outcome, and any exceptional commitment.
+ Resolve actions and opposition. Use ratings at the start of the action phase; apply resulting permanent changes after all declared actions resolve. This prevents turn order from erasing a declared action without warning.
+ Resolve completed clocks, crises, and eligible Strain recovery.
+ Reveal observable developments through news, witnesses, altered conditions, or encounters. Secret projects need not reveal their details, but consequential changes should leave discoverable signs.

==== Organizational resolution

Roll 2d12 + the relevant effective Quality against Standard 15, adjusted by task difficulty and relevant Truths. Use one primary Quality, not the sum of two. Other capabilities may be prerequisites or provide distinct concrete circumstances; their ratings are not automatic extra modifiers.

- Success: 1 Power, plus 1 per full 3 points over the target.
- Success at a Cost (miss by 1–3): 1 Power and a concrete setback appropriate to the action.
- Failure (miss by 4+): no progress; introduce a relevant setback.
- Doubles follow the core's success/cost/failure twist rules, including double 12s and double 1s.

Organizational exception: off-screen faction actions do not gain or spend the party's Momentum, PC pools, or Tychē Points, and do not generate or spend Woe. Uncommitted Power is discarded. Resolve twists narratively; there is no off-screen Woe buy-off. PC scenes retain all normal core currencies.

==== Project clocks

#table(columns: (22%, 78%),
  table.header([Segments], [Typical scope]),
  [4], [Limited local action with few obstacles.],
  [6], [Substantial operation or contested local objective.],
  [8], [Complex undertaking or lasting institutional change.],
  [12], [Major regional transformation.],
)

Commit Power at one segment per Power. A single faction action advances one declared project or produces one limited immediate result; it cannot purchase unrelated outcomes. Cap progress at the remaining segments; discard overflow. Link clocks for wider ambitions.

Use Module C.6 for lasting Site, Region, and Campaign changes: normally 8 segments for a Site Truth, 12 for a Region Truth, and a major arc for a Campaign Truth. A short operational clock does not bypass those requirements.

==== Opposition and disruption

A faction may spend its action obstructing a known project if it has a credible method. Roll its relevant Quality against Standard 15, adjusted by the target's concrete defenses and other Truths. The target's Quality rating is not automatically a Difficulty shift.

On success, spend Power to remove uncompleted progress, one segment per Power. Remove no more than is present and discard excess. A defending faction may devote its own action to countermeasures, producing appropriate protection or removing the obstructing capability. Do not add a free reaction roll for every attempted disruption.

Apply all same-turn progress and disruption to a clock together before checking completion. A clock that completes cannot later be “unticked”: reversing its established result needs a new undertaking.

PCs can use Advance to remove progress when sabotage or delay directly supports that effect. Establish the affected project before the roll. A played scene replaces the equivalent off-screen work, not the whole faction's unrelated activity.

==== Completion

A project grants its declared result, not every benefit the victor might want. Create, remove, or change a Truth when appropriate; record scope, rank, and removal condition. Completion does not automatically make a Truth rank 2 or increase a Quality.

=== E.11 Conflict, Objectives, and Pressure

Use core Argument, Negotiation, or Battle conflicts when the action deserves a played conflict. Retain normal core Disposition, scripting, Power, concessions, and compromise. Do not import Levels of Success, legacy attributes, or spendable Social Superiority.

Standing grants no automatic Superiority. Insider intelligence, an arranged audience, or a secured guarantee can qualify as actual preparation under the core's categories and cap. Evaluate distinct advantages, not labels. Combat receives no direct Standing modifier.

State strategic objectives separately:
- Raid: take or destroy specified resources.
- Occupy: hold a particular place.
- Break resistance: disable a specified fighting force.
- Humiliate: undermine prestige before a relevant audience.
- Annex: establish lasting control over a holding.
- Reconcile: restore cooperation between internal groups.

Winning a battle does not automatically create stable government. Occupation may open a separate integration project and establish Population Rejects the Occupation. One conflict does not grant unrelated spoils or objectives beyond its stakes and compromise.

==== Woe in faction scenes

Use Woe normally during PC scenes to introduce supported complications, reinforcements, or danger-clock progress. Hostility is a motive, not an unlimited Woe source. A completed World Turn project establishes its result without an extra Woe payment; a new scene complication uses the normal rules. Never charge twice for the same event.

Woe cannot directly buy a Standing reduction. It can expose evidence or create circumstances that cause one. Momentum and scene-scale Create effects likewise cannot buy permanent reputation.

=== E.12 Damage, Crisis, and Reorganization

Target the capability actually harmed. Destroying payroll may damage Treasure; exposing agents may damage Influence; losing an estate may damage Territory; defeat may damage Might; betrayal may provoke a Cohesion crisis.

Use an asset loss, setback, adverse Truth, or Strain for limited harm. Permanent rating loss requires a lasting reduction in organizational capacity, established by the stakes or a completed undertaking. Do not subtract a rating point merely for losing any roll.

==== Fracture

When permanent Cohesion reaches 0, establish an internal crisis and start a 4-segment Fracture clock. Advance it once at the end of each subsequent World Turn that ends with permanent Cohesion still 0. A newly created clock does not receive this automatic tick in its creation turn. Explicit consequences may advance it further.

Restoring permanent Cohesion stops automatic progress but does not erase existing fractures. Reconciliation or another concrete undertaking removes progress. When the clock fills, the faction splits, disbands, loses central authority, or transforms according to the established situation. Its people and assets do not simply vanish.

==== Branches, alliances, and mergers

Separate a local branch when its resources or loyalties differ materially. Do not use a resource twice as if parent and branch had independent copies. An alliance provides agreed access and obligations, not summed ratings.

A merger is a reorganization project. Reassess Qualities from the actual combined capacity once integration occurs; do not automatically add ratings or increase matched scores. Hostile absorption may bring assets while reducing Cohesion or creating adverse Truths. Defeating a smaller organization can grant a useful asset without increasing a rating.

=== E.13 Example: Reed Quay Association

An illustrative faction, not setting canon.

#table(columns: (27%, 73%),
  table.header([Field], [Record]),
  [Purpose], [Protect river trade and control profitable landing places.],
  [Reach], [Lower river settlements and commercial offices in the provincial capital.],
  [Might +1], [Dock guards and armed crews.],
  [Treasure +3], [Freight income and commercial credit.],
  [Influence +2], [Agents, weighmasters, and clerks.],
  [Territory +2], [Barges, warehouses, and landing rights.],
  [Cohesion +1], [Members cooperate primarily for profit.],
  [Standing +2], [Trusted; Nera, master of the eastern landing, represents the association.],
  [Vulnerability], [Its principal charter is legally disputed.],
  [Project], [Secure Exclusive Ferry Rights, 8 segments: a lasting local institutional change.],
  [Favor], [Conceal up to six people aboard one outbound barge this season, with a day's notice; no declared contraband.],
)

The party requests public freight records. Nera willingly supplies them; no roll is needed. Access to sealed judicial records is a different request, possibly requiring an introduction or commission.

The association funds a lawful journey and provides a commercial introduction. Passage permits the journey; the introduction grants an audience. Neither grants +3 Persuade because Treasure is +3.

The party retrieves admissible evidence that a rival obtained a charter through bribery. As the agreed outcome of the undertaking, Rival Charter Under Legal Challenge becomes a rank-1 Truth for the ferry-rights project until the challenge is adjudicated. If the party obtains a final judgment itself, do not roll again to establish that judgment.

On the World Turn, the association uses Influence +2. The evidence lowers the Standard 15 target to Easy 12. Dice of 7 and 9 total 16; +2 gives 18, producing 3 Power. It commits three segments. Without the evidence, the same total against 15 would produce 2 Power.

Later, the party saves the winter grain convoy at substantial personal risk. Once the association learns what happened, Standing may rise to +3. A new favor is not automatic: the association must explicitly promise one.

If the association undertakes an additional urgent funding action that turn, Treasure becomes Strained before that action and operates at +2. It cannot take a third major action. Recovery needs a later full turn without a major Treasure commitment and with plausible access to its credit network.

=== E.14 Table Reference

#table(columns: (31%, 69%),
  table.header([Question], [Rule]),
  [What can it do?], [Qualities, assets, and operational reach.],
  [Will it help us?], [Standing, authority, commitments, and reasonable requests.],
  [What do PCs roll?], [Their normal Skill; never add a faction Quality.],
  [What does support do?], [Permission, a scoped Truth, or actual Help; no duplicate benefit.],
  [What does the faction roll?], [2d12 + one effective Quality, normally vs. Standard 15.],
  [How does it progress?], [1 Power per project segment; no off-screen Momentum or Woe.],
  [How do adventures matter?], [Achieve an objective, affect progress, or establish a strategic advantage.],
  [How often does it act?], [One major action each World Turn; at most one additional action causing Strain.],
  [What is owed?], [A written favor or obligation with scope, limits, and settlement.],
  [What causes collapse?], [Permanent Cohesion 0 opens a Fracture crisis, not instant disappearance.],
)

For a faction record, copy E.1 and leave space for five ratings, five Strain marks, Standing, personal exceptions, one project clock, and outstanding promises. Keep rating explanations concrete and show the players changes their characters can observe.
]

