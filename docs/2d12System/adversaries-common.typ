// Shared adversary card renderer; import where cards are evaluated.
#let statblock(name, line, threat, body) = block(breakable: false, width: 100%, inset: 7pt, stroke: 0.6pt + luma(120), radius: 2pt, above: 8pt, below: 8pt)[
  #grid(columns: (1fr, auto), text(weight: 700, name), text(weight: 700)[Threat #threat])
  #text(size: 9pt, style: "italic", line)
  #v(2pt)
  #set text(size: 9pt)
  #body
]
