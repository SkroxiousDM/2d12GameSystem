# Optional Modules Pass 1: Simplicity and Flow (A–C)

Scope:
- the chapter III opener
- Module A (Cyphers & Artifacts)
- Module B (The Grind & Travel)
- Module C (Truth-Driven Sandbox), including C.7–C.8, which come from `drafts/module-c-7-8-entanglements-long-knives.typ`

This pass starts from the state after core rules pass 5 and the story tag cleanup.

Patch: `review/optional-modules-pass1.patch` (5 files, 50 insertions, 50 deletions). **Applied**, together with the flag defaults and file moves below.

## Size

| File | Before | After | Change |
|---|---:|---:|---:|
| `chapter-3-optional-modules.typ` | 270 | 253 | −17 |
| `chapter-3-module-a-cyphers-and-artifacts.typ` | 1,205 | 900 | −305 |
| `chapter-3-module-b-the-grind-and-travel.typ` | 1,195 | 936 | −259 |
| `chapter-3-module-c-truth-driven-sandbox.typ` | 905 | 799 | −106 |
| `drafts/module-c-7-8-entanglements-long-knives.typ` | 1,045 | 913 | −132 |
| **Modules A–C total** | 4,620 | 3,801 | −819 |
| Full book, pages | 116 | 115 | −1 |

## Main Pattern

Many paragraphs in these modules were notes from earlier editing passes, written as rules text. Examples are "This pass does not supply those missing exceptions", "Retained travel questions" and "This compatibility pass does not decide…". A player can't use any of that.

Each one is now either:
- a short **Open ruling** line that states what is undecided, or
- a plain limit with a section pointer.

The undecided items are listed as flags below, each with a suggested default.

## Changes by File

### Chapter Opener

- The "Specific module rules govern…" paragraph becomes two sentences:
  - Modules override core rules only where they say so.
  - Pools, statuses, Disposition, project clocks and faction Qualities stay separate.
- The open-rulings sentence now says that each module lists its own.
- The Inquiry bullet is tightened.

### Module A: Cyphers & Artifacts

- **Using one.** "Listed fixed benefits follow their own text; do not turn them into additional unrestricted Power" now reads: "Fixed benefits, such as restore 3 Sōma, happen as written and aren't Power."
- **Cypher Limit.** "(some playbooks or Focuses grant 3)" pointed to nothing, because no generic playbook or Focus raises the limit. It now reads "A setting ability may raise this." See flag A2.
- **One Power budget, Use in a scripted conflict, Harm and protection, Healing.** Each is now two or three sentences. The rules are unchanged, and the core references are kept. Removed:
  - "A harmful status, a Truth and shared Disposition loss are different components…"
  - "A cypher's listed Effects… do not add them to every ordinary Maneuver"
- **Area.** This paragraph restated Core Rules §10.17 in full. It now says that a description alone (grenade, blast) doesn't create an area effect, and points to §10.17.
- **Open mappings.** The paragraph is now one Open ruling line about cypher action mapping and Ward token timing. See flag A1.
- **Artifacts.**
  - The double-count tag sentence is shorter.
  - "(§4.1)" becomes "(Core Rules §4.1)", following the Introduction's reference rule.
  - The conflict-limits paragraph and the Ember-Brand note are each cut to about half their length.

### Module B: The Grind & Travel

- **Intro.** "It pairs with Mouse Guard's GM's Turn / Players' Turn structure" was designer context. It now reads: "Play alternates between a GM's Turn (the mission) and a Players' Turn (downtime)." The source table in §14 still credits Mouse Guard.
- **B.1 table.** Removed the conflict-grouping clause from the GM's Turn row, because B.2 already states it.
- **B.2.** The tick rule is now two sentences. The paragraph that starts "The Grind is an explicit hardship procedure…" is cut to two sentences, and Open timing is now one Open ruling line (flag B1).
- **B.3.**
  - The note under the table now reads: "Grind conditions count as statuses for Restore, but they don't stack and have no tier: the Order column is the sequence you gain them in. Broken already includes its Scar."
  - Separate layers is tightened, and its core references now use "Core Rules §".
  - The "Resistance scope remains open" paragraph is now one Open ruling line (flag B2).
- **B.4.** The closing paragraph is down to four short sentences. Removed "Checks grant no extra scripted turn", because the Players' Turn isn't a conflict.
- **B.5.**
  - The Journeys and conflicts paragraph and the Spot Trouble paragraph are each shorter.
  - Bare §7, §10.1 and §10.2 references now use "Core Rules §".
  - Retained travel questions is now one Open ruling line (flag B3).

### Module C: Truth-Driven Sandbox

- **C.1.** Removed the sentence repeating §8's duration rule.
- **C.2, C.4.** The danger-clock note and the rumour note are tighter. The rumour table's first column is wider (8% → 12%), so "5–8" and "9–12" no longer wrap.
- **C.5.** The Module E replacement note is one sentence. The second "Under Module E…" sentence repeated it and is cut.
- **C.6.**
  - The Create-cost paragraph is tighter.
  - "Acting in a conflict" is now four short sentences.
  - Bare §10.x references now use "Core Rules §".
- **C.7 Entanglements.**
  - "Each phase then gives a 2d12 output" was confusing, because no phase rolls 2d12. It now reads "Each phase also gives each PC something for their sheet".
  - The five line-type bullets are each about half as long, with the same records and limits.
  - "favor" is now "favour", matching E.7.
  - The relationships paragraph now names Backing alongside Help.
- **C.8 Long Knives.**
  - Removed the duplicate "do not also generate a second cluster" sentence.
  - "The incident is starting history" becomes "The incident is history", and is three sentences long.
  - Bare §7 and §8 references now use "Core Rules §".

## Rule Complexity Flags

| # | Flag | Suggestion |
|---|---|---|
| A1 | **Cypher scripted mapping and Ward token timing are unset.** The text forbids free interrupts but never says which action a cypher uses. | A cypher with Attack in its Effects is used on an Attack or Feint; any other cypher is used on a Maneuver. The Ward token is the exception: use it when a status is inflicted on you, with no action, once per scene. |
| A2 | **Cypher Limit 3.** No generic playbook or Focus grants it. | Keep "A setting ability may raise this", or add it to an existing ability (Explorator or a Knowledge Focus). |
| B1 | **When a filled Grind clock applies.** | Apply the condition at the end of the current exchange, or immediately outside a conflict. Only action rolls tick the clock; Resistance and recovery rolls don't. |
| B2 | **Can a Grind condition be Resisted?** | No. Grind conditions are hardship, not harm, and the only way out is to clear them. This keeps the Grind's pressure intact. |
| B3 | **Travel role prices and hard-stretch ticks.** | Each role option costs 1 Power, and Make Time advances 1 segment per Power. A failed hard stretch ticks the Grind twice in total (replacing the normal tick), not three times. |
| B4 | **Supplies "as a status (start at 3–6)".** A status is tiered 1–6 and gets cleared, but Supplies counts down and drops the Grind clock by 2 at 0. On a harsh 4-clock that leaves a 2-clock. | Make Supplies a plain counter rather than a status. Set a minimum clock size (for example 3). |
| C1 | **Three element types share the diamond shape.** Organization, Prop and Set are all diamonds, which defeats the "can't use the same shape twice in a row" rule. | Use a hexagon for Organization, or make the rule "same element type". |
| C2 | **Published rules come from `drafts/`.** Module C includes `drafts/module-c-7-8-entanglements-long-knives.typ`, and Module E includes `drafts/module-e-1a-starting-cluster.typ`. | Rename them to `chapter-3-module-c.7-entanglements.typ` and `chapter-3-module-e.1a-starting-cluster.typ`, matching `chapter-3-module-e.7-favours.typ`, and update both includes. |
| C3 | **§14 cites Exposed and Shaken** as if they were core statuses. They are Grind conditions (Module B.3). | Add "(Module B)" to the §14 bullet, or use core statuses in that example. |

## Render Check

- The full book compiles at 115 pages, using placeholder art because the repository art files are LFS pointers.
- I checked pages 36–44 (chapter opener through Module D's first page). There is no clipping, overflow or orphaned heading.
- The rumour table still splits across a page break, and its header repeats as before.

## Follow-Up Applied

Your rulings: apply the patch, use the suggested defaults for every flag, and move both included `drafts/` files.

New defaults that change play are marked `// PLAYTEST:`. These are A1, B1 and B3.

| Flag | Result |
|---|---|
| A1 | New **Which action** paragraph. A cypher with Attack in its Effects is used on an Attack or Feint; any other cypher is used on a Maneuver. The Ward token is used when a status would be inflicted on you, with no action, once per scene. PLAYTEST. |
| A2 | Kept "A setting ability may raise this." |
| B1 | Only action rolls tick the Grind. A clock that fills during a conflict applies its condition at the end of the exchange, or when the conflict ends if that comes first. Outside a conflict, it applies at once. PLAYTEST. |
| B2 | **No Resistance**: Grind conditions can't be Resisted, only cleared. |
| B3 | Each travel role option costs 1 Power. A failed hard stretch ticks the Grind twice in total, replacing the normal tick. PLAYTEST. |
| B4 | Supplies is a counter, not a status. At 0, the Grind clock shrinks by 2, to a minimum of 3. |
| C1 | Organization is now a hexagon. |
| C2 | `drafts/module-c-7-8-entanglements-long-knives.typ` is now `chapter-3-module-c.7-entanglements.typ`, and `drafts/module-e-1a-starting-cluster.typ` is now `chapter-3-module-e.1a-starting-cluster.typ`. Both includes and `drafts/README.md` are updated. |
| C3 | Checking this flag turned up a second error. Exposed lowers Sōma Edge and Shaken lowers Pneuma Edge, so they never stack on one pool. The §14 example now reads "two −1 Edge penalties on a 0-Edge pool". |

The book compiles at 115 pages.

`drafts/README.md` says that C.7 adapts Entanglements by Ewen Cluney, and that C.8 and E.1A adapt Long Knives by Levi Kornelsen. It asks for a licence check and an acknowledgements credit before publishing. That task is still open.
