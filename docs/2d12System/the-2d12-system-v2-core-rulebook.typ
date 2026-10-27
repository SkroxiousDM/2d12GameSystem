// =====================================================================
//  THE 2d12 SYSTEM, VERSION 2
//  Core Rulebook · Setting-Neutral Rules
//  Compiled for SkroxiousDM · #book-date
//
//  multi-file Typst source. Compile with:
//      typst compile the-2d12-system-v2-core-rulebook.typ
//
//  Fonts (free, Google Fonts / OFL). Install them, or pass --font-path:
//      EB Garamond   — body text
//      Source Sans 3 — headings and display type
//  If they are missing, Typst falls back to Libertinus Serif. Symbols
//  (★ ◆ ◈ →) fall back to DejaVu Sans.
//
//  The setting-neutral engine. Settings (such as Testament of Dust)
//  are published as separate books that require this one. Playtest draft.
// =====================================================================

#import "common.typ": *

#set document(
  title: book-title + " — " + book-subtitle + " — " + book-kind,
  author: book-author,
  date: book-date,
  keywords: ("2d12", "tabletop RPG", "rulebook", "core rules", "setting-neutral"),
)
#show: apply-style

// =====================================================================
//  COVER
// =====================================================================
#page(fill: ink, header: none, footer: none, margin: 0cm)[
  #set text(fill: moon)
  #place(top + left, rect(width: 100%, height: 100%, fill: gradient.linear(ink, ash, angle: 90deg)))
  #place(bottom + left, rect(width: 100%, height: 1.6cm, fill: blood))
  #place(top + center, dy: 1.6cm, text(font: display-font, size: 9pt, fill: brass, tracking: 0.5em, weight: 700, upper(book-tagline)))
  #place(top + center, dy: 4.2cm, grid(columns: 2, column-gutter: 0.9cm,
    d12-face(r: 3cm, fill: blood, num: "12"), d12-face(r: 3cm, fill: ember, num: "12")))
  #place(top + center, dy: 13.6cm, block(width: 92%, {
    set align(center)
    text(font: display-font, size: 46pt, weight: 900, fill: moon, tracking: 0.02em, book-title)
    v(8pt)
    ornament-rule(width: 70%)
    v(10pt)
    text(font: display-font, size: 17pt, weight: 700, fill: brass, tracking: 0.12em, book-subtitle)
    v(6pt)
    text(font: display-font, size: 13pt, fill: moon.darken(8%), tracking: 0.3em, upper(book-kind))
    v(16pt)
    text(size: 11pt, style: "italic", fill: moon.darken(10%), book-motto)
  }))
  #place(bottom + center, dy: -2.6cm, {
    set align(center)
    text(font: display-font, size: 11pt, fill: moon, tracking: 0.2em, weight: 700, upper(book-author))
    linebreak()
    
  })
]

// =====================================================================
//  CREDITS / COLOPHON
// =====================================================================
#page(header: none, footer: none)[
  #v(1fr)
  #align(center, block(width: 78%, {
    set par(justify: false)
    text(font: display-font, size: 20pt, fill: blood, weight: 700, book-title)
    v(2pt)
    text(font: display-font, size: 11pt, fill: ash, tracking: 0.08em, [#book-subtitle · #book-kind])
    v(10pt)
    ornament-rule(width: 60%)
    v(12pt)
    text(size: 10.5pt)[
      Design, writing and development: *#book-author* \
      Version 2 · Core compilation dated *#book-date*
    ]
    v(14pt)
    text(size: 9.5pt, fill: ash)[
      
    ]
    v(14pt)
    text(size: 9pt, fill: dust, style: "italic")[
      The 2d12 System is a setting-neutral tabletop roleplaying engine. Settings are published as separate books; the first is #emph[Testament of Dust]. \
Acknowledgements & Inspirations
Testament of Dust owes a heartfelt thank-you to the creators of Blades in the Dark, Cypher System, Fate, Mouse Guard, 2d20, and Imperium Maledictum.

In different ways, these games helped shape the questions behind this one: What makes a risk worth taking? What should success cost? How do a character’s beliefs and obligations become part of play? And what keeps people moving when the world is larger, stranger, and less forgiving than they are?

Thank you for the examples, the challenges, and the moments that made me stop and reconsider a rule—or an entire approach. Sometimes the inspiration was a particular idea. Sometimes it was the feeling a game could create at the table. Sometimes it was simply the encouragement to believe that another way of doing things was possible.

Testament of Dust is my own answer to some of those questions, but I did not arrive at them alone. This acknowledgement is a small expression of gratitude for the work that helped me get here.
    ]
    v(14pt)
    text(size: 8.5pt, fill: dust)[Playtest draft — not yet playtested. Set in EB Garamond and Source Sans 3.]
  }))
  #v(1fr)
]

// =====================================================================
//  TABLE OF CONTENTS
// =====================================================================
#page(header: none, footer: none)[
  #v(0.4cm)
  #align(center, text(font: display-font, size: 24pt, fill: blood, weight: 700, tracking: 0.06em)[Contents])
  #v(-2pt)
  #align(center, ornament-rule(width: 45%))
  #v(10pt)
  #set par(justify: false)
  #show outline.entry.where(level: 1): it => {
    v(9pt, weak: true)
    block(above: 9pt, below: 4pt, link(it.element.location(), grid(columns: (auto, 1fr, auto), column-gutter: 5pt, align: bottom,
      text(font: display-font, size: 9.8pt, fill: blood, weight: 700)[#if it.element.numbering != none [#numbering("I", ..counter(heading).at(it.element.location()).slice(0, 1)) · ] else [Appendix · ]#it.element.body],
      box(width: 100%, repeat(text(fill: brass, size: 7pt)[ · ])),
      text(font: display-font, size: 9.8pt, fill: blood, weight: 700, it.page()))))
  }
  #show outline.entry.where(level: 2): it => block(above: 3.2pt, below: 3.2pt, link(it.element.location(),
    grid(columns: (0.7em, auto, 1fr, auto), column-gutter: 3pt, align: bottom, [],
      text(size: 9pt, it.element.body),
      box(width: 100%, repeat(text(fill: brass.lighten(30%), size: 6pt)[ . ])),
      text(size: 9pt, number-type: "lining", it.page()))))
  #show outline.entry.where(level: 3): it => block(above: 2.2pt, below: 2.2pt, link(it.element.location(),
    grid(columns: (1.6em, auto, 1fr, auto), column-gutter: 3pt, align: bottom, [],
      text(size: 7.9pt, fill: ash, it.element.body),
      box(width: 100%, repeat(text(fill: brass.lighten(45%), size: 5.5pt)[ . ])),
      text(size: 7.9pt, fill: ash, number-type: "lining", it.page()))))
  #columns(2, gutter: 0.9cm, outline(title: none, depth: 3, indent: 0pt))
]

// =====================================================================
//  CHAPTER I — INTRODUCTION
// =====================================================================
#include "chapter-1-introduction.typ"
// =====================================================================
//  CHAPTER — CORE RULES
// =====================================================================
#include "chapter-2-core-rules.typ"

// =====================================================================
//  CHAPTER — OPTIONAL MODULES
// =====================================================================
#include "chapter-3-optional-modules.typ"

// =====================================================================
//  CHAPTER — GENERIC DESCRIPTORS
// =====================================================================
#include "chapter-4-descriptors.typ"
  
// =====================================================================
//  CHAPTER — GENERIC PLAYBOOKS
// =====================================================================
#include "chapter-5-playbooks.typ"
// =====================================================================
//  CHAPTER — GENERIC FOCUSES
// =====================================================================
#include "chapter-6-focuses.typ"
  
// =====================================================================
//  APPENDIX — QUICK REFERENCE
// =====================================================================
#include "chapter-7-appendix-a-quick-reference.typ"

#v(1fr)
#align(center, ornament-rule(width: 40%))
#v(6pt)
#align(center, text(font: display-font, size: 9pt, fill: dust, tracking: 0.2em)[END OF THE CORE RULEBOOK · #book-date])




