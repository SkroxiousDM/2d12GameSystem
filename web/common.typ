// =====================================================================
//  web/common.typ — web-edition stand-in for docs/2d12System/common.typ
//
//  web/build_html.py copies the core rulebook source to a temporary
//  folder and puts this file in place of common.typ before Pandoc reads
//  it. Pandoc's Typst reader can't evaluate page layout (place, context,
//  query, page frames), so every helper here keeps the words and drops
//  the print layout.
//
//  Marked boxes: web-box(kind, body) wraps content in columns(1) with a
//  leading "WEBBOX:kind" token. web/rulebook.lua turns that into
//  <div class="rb-kind">. Keep helper names and signatures in step with
//  common.typ: a helper missing here stops the web build.
// =====================================================================

// ---------------------------------------------------------------- palette
// Colours are unused on the web (the site CSS styles everything), but
// chapters may reference them by name.
#let ink   = rgb("#1c1f24")
#let ash   = rgb("#343a42")
#let paper = rgb("#fcfbf8")
#let tint  = rgb("#edf0f3")
#let blood = rgb("#2d4a66")
#let ember = rgb("#3f6a8f")
#let brass = rgb("#8d99a6")
#let dust  = rgb("#68707a")
#let moon  = rgb("#eef1f4")

#let body-font    = ("EB Garamond",)
#let display-font = ("Source Sans 3",)
#let symbol-font  = ("DejaVu Sans",)

// ---------------------------------------------------------------- metadata
#let book-title    = "The 2d12 System"
#let book-subtitle = "Version 2"
#let book-kind     = "Core Rulebook"
#let book-tagline  = "Setting-Neutral Roleplaying Rules"
#let book-motto    = "One roll, many outputs. Roll 2d12 + Skill + Modifiers vs. Difficulty."
#let book-author   = "SkroxiousDM"

// ---------------------------------------------------------------- web boxes
#let web-box(kind, body) = columns(1)[WEBBOX:#kind #body]

// ---------------------------------------------------------------- art
#let playbook-art(file, alt) = image("art/playbooks/" + file, alt: alt)
#let playbook-art-side(file, alt, body, dir: "art/playbooks/generic/") = web-box("art-side",
  [#image(dir + file, alt: alt) #body])

// placeholder art: shown on the web as a small note with the art brief
#let art-fill(brief, min: none) = web-box("art-note", [#strong[Art placeholder] \ #brief])

// ---------------------------------------------------------------- ornaments
#let diamond(size: none, fill: none) = []
#let ornament-rule(width: none, color: none) = []
#let d12-face(..args) = []
#let horizontalrule = line()

// ---------------------------------------------------------------- helpers
#let sidebar(title, body) = web-box("sidebar", [#strong(title) \ #body])

// the site builds its own "In this chapter" list from the h2 headings
#let chapter-contents = []

// chapter divider: an h1 (lifted into the page title by build_html.py)
// followed by the blurb and epigraph
#let chapter(title, blurb, epigraph: none, numbered: true, label-text: none) = [
  #heading(level: 1, if numbered { title } else { [WEBUNNUMBERED #title] })
  #web-box("chapter-blurb", [#emph(blurb) #if epigraph != none [\ #epigraph]])
]

#let apply-style(body) = body
