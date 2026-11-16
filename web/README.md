# Core rulebook web edition

This folder turns the Typst core rulebook into web pages for the [SkroxiousDM site](https://skroxiousdm.com/rules/core/). The PDF is still the reference layout. The web edition carries the same text and tables in the site's own style.

## How it works

1. `build_html.py` copies `docs/2d12System/` to a temporary folder and swaps in the web versions of `common.typ` and `adversaries-common.typ` from this folder.
2. It reads the chapter order from the `#include` lines in `the-2d12-system-v2-core-rulebook.typ`. An `#art-fill` line after an include belongs to that chapter.
3. Pandoc converts each chapter to HTML, and `rulebook.lua` tidies the output.
4. It writes one page per chapter, a contents page and the art those pages use:

```
build/core-html/
├── index.html                  contents page    -> /rules/core/
├── core-rules/index.html       one per chapter  -> /rules/core/core-rules/
└── art/playbooks/generic/      images the pages use
```

The workflow `.github/workflows/build-core-html.yml` runs this on every change to the core source or this folder on `main`. It copies the output into `rules/core/` in `SkroxiousDM/SkroxiousDM` and opens a pull request there, or updates the open one on the `rulebook-html/update` branch. Merge it to publish.

## One-time setup: the site token

The workflow needs permission to push a branch and open a pull request in the site repository.

1. On GitHub, go to Settings > Developer settings > Personal access tokens > Fine-grained tokens and create a token.
2. Under Repository access, choose Only select repositories and pick `SkroxiousDM/SkroxiousDM`.
3. Under Repository permissions, set Contents and Pull requests to Read and write.
4. In this repository, go to Settings > Secrets and variables > Actions, and add it as a repository secret named `SITE_PUSH_TOKEN`.

Without the secret the workflow still builds the HTML and attaches it to the run as an artifact, but it doesn't open a pull request. Tokens expire, so renew it when the workflow warns.

## Build it yourself

Install [Pandoc 3.7.0.2](https://github.com/jgm/pandoc/releases/tag/3.7.0.2). Other versions may read Typst differently. Then, from the repository root:

```sh
python3 web/build_html.py --out build/core-html
python3 -m unittest discover -s web -p 'test_*.py'
```

## What carries over

| In the Typst source | On the web |
|---|---|
| `chapter(title, blurb, epigraph: …)` | Page title, chapter label (Chapter I…, or Appendix when `numbered: false`) and the blurb above an "In this chapter" list |
| `== Heading` and lower | Headings with anchor links, such as `#s-6-2-running-dry-statuses` |
| Tables | HTML tables, with the first row as the header |
| `sidebar(title)[…]` | Dark box, `rb-sidebar` |
| `statblock(…)` | Bordered card, `rb-statblock` |
| `playbook-art-side(…)` | Art floated beside the playbook quote and stats, `rb-art-side` |
| `art-fill[brief]` | Dashed note with the art brief, `rb-art-note` |
| Cover, credits page, contents page, divider pages, running heads, ornaments, columns | Left out. The site builds its own contents and navigation |

`§` cross-references stay plain text for now.

## When you change `common.typ`

A helper that exists in `docs/2d12System/common.typ` but not in `web/common.typ` makes the web build fail. When you add or rename a helper, or change its arguments, add a matching version here that keeps the words and drops the print layout. To give it its own style on the site, wrap it in `web-box("name", …)`. That becomes `<div class="rb-name">`; then add the CSS for `.rb-name` in the site's `assets/css/rpg.css`.

Pandoc applies a `#set enum(start: N)` rule to later lists as well as its own block. `build_html.py` rewrites `#set enum(numbering: "1.", start: N)` followed by a `+` item as an explicit `N.` item, so keep that form for lists that continue after a table.
