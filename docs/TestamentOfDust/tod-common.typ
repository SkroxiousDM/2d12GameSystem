// ---------------------------------------------------------------- palette
#let ink      = rgb("#16130f")   // night / soot black
#let ash      = rgb("#2a2420")   // charred timber
#let paper    = rgb("#f4eee2")   // bleached bone parchment
#let tint     = rgb("#ebe2d0")   // table zebra
#let blood    = rgb("#7d1d1a")   // oxblood
#let ember    = rgb("#a8322a")   // fresh blood / ember
#let brass    = rgb("#a4813f")   // tarnished brass
#let dust     = rgb("#6b5f52")   // trail dust (muted text)
#let moon     = rgb("#e9dcc0")   // pale moonlight

#let body-font    = ("EB Garamond", "Libertinus Serif", "DejaVu Serif")
#let display-font = ("Cinzel", "Libertinus Serif", "DejaVu Serif")
#let symbol-font  = ("DejaVu Sans",)

// ---------------------------------------------------------------- metadata
// The #set document(...) call lives in the main book file; a document set
// rule in an imported module has no effect on the importing document.
#let book-title    = "Testament of Dust"
#let book-subtitle = "A Setting for The 2d12 System · Version 2"
#let book-kind     = "Setting Book"
#let book-tagline  = "Post-Apocalyptic Frontier Gothic"
#let book-motto    = "Roads through a broken world. Blood behind every bargain."
#let book-author   = "SkroxiousDM"
#let book-date-obj = datetime.today(offset: -6)
#let book-date     = book-date-obj.display("[year]-[month]-[day]")

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

// a jagged ruined-castle skyline, drawn as a polygon across the page width
#let skyline(width: 21.59cm, height: 3.2cm, fill: ink) = {
  let w = width / 1cm
  let h = height / 1cm
  // x, y pairs in cm; y measured from the top of the box
  let pts = (
    (0, h), (0, h*0.72), (1.2, h*0.70), (1.8, h*0.55), (2.4, h*0.62), (3.3, h*0.60),
    (3.3, h*0.38), (3.55, h*0.30), (3.8, h*0.38), (3.8, h*0.58), (4.6, h*0.56),
    (5.1, h*0.66), (6.2, h*0.64), (6.6, h*0.50), (7.0, h*0.50), (7.0, h*0.20),
    (7.15, h*0.20), (7.3, h*0.02), (7.45, h*0.20), (7.6, h*0.20), (7.6, h*0.42),
    (8.2, h*0.42), (8.2, h*0.28), (8.5, h*0.18), (8.8, h*0.28), (8.8, h*0.48),
    (9.6, h*0.48), (9.9, h*0.60), (11.0, h*0.66), (11.8, h*0.62), (12.4, h*0.70),
    (13.6, h*0.68), (14.0, h*0.58), (14.6, h*0.60), (15.2, h*0.74), (16.4, h*0.72),
    (17.0, h*0.64), (17.4, h*0.66), (17.4, h*0.52), (17.6, h*0.46), (17.8, h*0.52),
    (17.8, h*0.66), (18.8, h*0.70), (19.6, h*0.78), (20.6, h*0.74), (w, h*0.80), (w, h),
  )
  polygon(fill: fill, ..pts.map(p => (p.at(0) * 1cm, p.at(1) * 1cm)))
}

// a blood moon: layered discs
#let blood-moon(r: 3.2cm) = box(width: 2*r, height: 2*r, {
  place(circle(radius: r, fill: blood.darken(35%)))
  place(dx: 0.12*r, dy: 0.12*r, circle(radius: 0.88*r, fill: blood.darken(10%)))
  place(dx: 0.30*r, dy: 0.22*r, circle(radius: 0.62*r, fill: ember.darken(5%)))
  place(dx: 0.95*r, dy: 0.55*r, circle(radius: 0.16*r, fill: blood.darken(25%)))
  place(dx: 0.55*r, dy: 1.15*r, circle(radius: 0.10*r, fill: blood.darken(25%)))
  place(dx: 1.25*r, dy: 1.20*r, circle(radius: 0.07*r, fill: blood.darken(25%)))
})

// ---------------------------------------------------------------- page frame
#let running-header = context {
  let chs = query(heading.where(level: 1).before(here()))
  if chs.len() > 0 {
    let ch = chs.last()
    set text(font: display-font, size: 7.5pt, fill: dust, tracking: 0.12em)
    grid(columns: (1fr, auto), align: (left + bottom, right + bottom),
      upper(book-title + " · 2d12 v2"),
      upper(if ch.numbering != none { [Chapter #numbering(ch.numbering, ..counter(heading).at(ch.location()).slice(0, 1)) · ] } + ch.body))
    v(-5pt)
    line(length: 100%, stroke: 0.4pt + brass)
  }
}
#let running-footer = context {
  set text(font: display-font, size: 8.5pt, fill: blood)
  align(center, { diamond(size: 4pt, fill: brass); h(8pt); counter(page).display("1"); h(8pt); diamond(size: 4pt, fill: brass) })
}

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
    #place(bottom + center, dx: 0cm, skyline(fill: ash.darken(10%)))
    #place(top + right, dx: 0.6cm, dy: -1.2cm, blood-moon(r: 1.9cm))
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

// ---------------------------------------------------------------- house style
// Use as:  #show: apply-style   (once, in the main book file).
// Set/show rules in an imported module do not reach the importing file, so
// they are wrapped in this template function.
#let apply-style(doc) = {
  // base text
  set text(font: body-font, size: 10.4pt, fill: ink, lang: "en", region: "CA",
    hyphenate: true, number-type: "old-style")
  set par(justify: true, leading: 0.62em, spacing: 0.95em)
  show "★": it => text(font: symbol-font, size: 0.85em, fill: ember, it)
  show "◆": it => text(font: symbol-font, size: 0.85em, fill: brass, it)
  show "◈": it => text(font: symbol-font, size: 0.9em, fill: blood, it)
  show "→": it => text(font: symbol-font, size: 0.85em, it)
  show "✓": it => text(font: symbol-font, size: 0.85em, it)
  show "✗": it => text(font: symbol-font, size: 0.85em, it)

  set list(marker: (text(fill: blood, size: 0.7em, baseline: -0.15em)[◆], text(fill: brass)[–]), indent: 0.4em, body-indent: 0.55em, spacing: 0.75em)
  set enum(indent: 0.3em, body-indent: 0.5em, spacing: 0.75em, numbering: n => text(font: display-font, fill: blood, weight: 700, size: 0.85em)[#n.])
  show strong: set text(fill: ink.lighten(0%), weight: 700)
  show emph: set text(fill: ash)

  // page frame
  set page(paper: "us-letter", fill: paper,
    margin: (top: 1.5cm, bottom: 1.5cm, inside: 2cm, outside: 1.7cm),
    header: running-header, footer: running-footer, header-ascent: 35%, footer-descent: 35%)

  // headings
  set heading(numbering: none)
  show heading: set text(font: display-font, hyphenate: false)
  show heading: set par(justify: false)

  // level 1 is only produced by #chapter(), which styles it on the divider page
  show heading.where(level: 1): it => block(width: 100%, spacing: 0pt, {
    set align(center)
    if it.numbering != none {
      text(size: 11pt, fill: brass, tracking: 0.35em, weight: 700)[#upper[Chapter] #counter(heading).display("I")]
      v(14pt)
    }
    text(size: 30pt, fill: moon, weight: 700, tracking: 0.04em, it.body)
  })

  show heading.where(level: 2): it => block(above: 1.6em, below: 0.85em, sticky: true, width: 100%, {
    text(size: 15pt, fill: blood, weight: 700, it.body)
    v(-7pt)
    grid(columns: (auto, 1fr), align: horizon, column-gutter: 4pt,
      diamond(size: 5pt, fill: brass), line(length: 100%, stroke: 0.7pt + brass))
  })
  show heading.where(level: 3): it => block(above: 1.3em, below: 0.6em, sticky: true,
    text(size: 11.5pt, fill: ash, weight: 700, tracking: 0.02em, it.body))
  show heading.where(level: 4): it => block(above: 1.1em, below: 0.5em, sticky: true,
    text(font: body-font, size: 11pt, style: "italic", fill: blood, weight: 700, it.body))

  // tables
  show figure.where(kind: table): set block(breakable: true)
  show figure.where(kind: table): set align(left)
  show figure: set block(breakable: true, above: 0.9em, below: 1.1em)
  set table(
    stroke: (x, y) => (
      top: if y == 0 { 1pt + blood } else { none },
      bottom: 0.4pt + brass.lighten(35%),
    ),
    fill: (x, y) => if y == 0 { blood } else if calc.even(y) { tint } else { none },
    inset: (x: 5pt, y: 4.2pt),
  )
  show table: set text(size: 8.9pt, number-type: "lining", hyphenate: false)
  show table: set par(justify: false, leading: 0.5em)
  show table.cell.where(y: 0): set text(font: display-font, fill: paper, size: 7.8pt, weight: 700, tracking: 0.03em)
  show table.cell.where(y: 0): set align(left + horizon)
  show table.hline: none

  // quotes
  show quote.where(block: true): it => block(width: 100%, inset: (left: 12pt, right: 8pt, y: 7pt),
    stroke: (left: 2.2pt + blood), fill: tint.lighten(30%), spacing: 1em,
    text(style: "italic", fill: ash, it.body))

  doc
}
