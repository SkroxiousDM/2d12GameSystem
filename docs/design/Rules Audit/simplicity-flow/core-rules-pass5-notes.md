# Core Rules Pass 5: Simplicity and Flow

Scope: §11 Playbooks, §12 Advancement, §13 Example of Play and §14 Design Notes, plus a reference-style fix across the book. The work starts from the state after pass 4 and the rename of `chapter-2.10-area-and-limits.typ`.

Patch: `review/core-rules-pass5.patch` (8 files, 40 insertions, 50 deletions). **Applied**, together with flags 1–3 and the story tag cleanup below.

## Size

| File | Before | After | Change |
|---|---:|---:|---:|
| `chapter-2.11.playbooks.typ` | 350 | 233 | −117 |
| `chapter-2.12-advancement.typ` | 695 | 584 | −111 |
| `chapter-2.13-example-of-play.typ` | 1,165 | 988 | −177 |
| `chapter-2.14-design-notes.typ` | 956 | 636 | −320 |
| Words, all `.typ` files | 64,726 | 64,005 | −721 |
| Full book, pages | 118 | 116 | −2 |

## Changes by File

### §11 Playbooks

- The entry list repeated Generic Playbooks §1.1 line for line, so it becomes one paragraph: what a playbook gives you, and where the full rules are.
- "Creation extras" and "Later acquisition" become two bullets that point to §3.6 and §12.2. They were restating both of those sections.
- Removed "Blades-style", which is designer context. The source table in §14 already covers it.
- Removed the paragraph saying a theme doesn't override conflict rules and that free grants give no extra turn. §10.18 Conflict Limits Reference covers this.
- The table is unchanged. Every pool line still totals 36.

### §12 Advancement

- **Refresh cap.** The cap (3 + 1 per 3 Advances) now has the name **Refresh cap** in the +1 Refresh entry. "Refresh limits" now cites it by name instead of pointing to §4.1, which doesn't define it. §4.1's buy-back line now ends "up to the Refresh cap (§12.2)". The Tychē cap (Refresh + 3) is a different rule and stays in §4.1.
- **Trims.** Cut the repeated text in Focus choices ("not an additional charge for each lower tier"), Veteran abilities ("do not charge the creation-extra price again"), Capstones ("this summary adds no automatic award…") and Refresh limits. The second half of Refresh limits repeated §10.18.
- **§12.3.** Tightened the Belief-conflict paragraph. The closing line now reads "Keep one World, one Other and one Self Belief. Goals are rewritten each session, and Instincts can change at milestones (§3.5)."

### §13 Example of Play

- **Fixes.**
  - The typo "guard'sFeint" is fixed.
  - The citation for recording starting totals now points to §10.2, not §10.9.
  - The scripting paragraph uses the "rounds" wording from §10.5: "both guards act in the first round, and the second guard acts between the first guard's turns". The odd phrase "eventual Feint" is gone.
- **Trims.**
  - The Effort Level caveat is now one sentence.
  - The gate-scene setup paragraph is shorter and keeps every fact.
  - Removed "needs no Success-at-a-Cost consequence" and "The general weapon tag is not counted again". Neither changed anything, and the second was confusing.
  - Shortened the protected-payment and compromise paragraphs, which now point to §10.7 and §10.12–10.13.
- **Continue or settle.**
  - Removed the scripting-change cost, which only §10.5 needs.
  - Added a one-line rotation example: "Tarin acted last, so he can't take its first volley." This shows the rotation rule in play.
- **Math is unchanged and checked:**
  - Kade: 23 vs 15 gives 3 Power, +1 for doubles, +1 Effort = 5.
  - PC setup: 19/3 = 6, +2 backers = 8.
  - Guards: Grit 5 + 3 = 8.
  - Mira: 2 Power + 1 = 3 removed.
  - Tarin: the tier-3 injury cancels 2 loss.
  - Compromise: 4 of 8 left is Significant.

### §14 Design Notes

- **Source table.** In the Mouse Guard row, "before helpers" is now "before backers", the term pass 4 introduced.
- **Labels and wording.** Removed the revision labels "(revised)", "(revised R3)" and "(unified)". "One-Scar-per-event" now reads "one-Scar-per-scene".
- **Known Risks** now lists what to watch, with section pointers, instead of restating rules.
  - The Resistance dice, Running dry, Damage cycle, Shared Disposition, Attack/Feint +1 and Superiority bullets keep every playtest question but drop the rule recaps.
  - The rules themselves stay in §6, §10.2–10.3, §10.6, §10.11 and §10.13.
  - "Historical simulation caveat" is renamed **Old simulation figures** and shortened.
- **Open conflict rulings.** This bullet is replaced with **Playtest flags in the text**, an index of every `// PLAYTEST:` item:
  - §5.1 stacking
  - §6 negative Edge
  - §6.3 one Scar per scene
  - §10.3 symmetry and Superiority eligibility
  - §10.5 Feint versus Maneuver
  - §10.13 four-step compromise
  - §10.17 area effects
- **Removed stale claim.** The old bullet said "exceptional doubles against opposed totals remain unresolved". That was out of date: §10.7 now settles doubles.

### Reference Style (Book-Wide)

The Introduction names the chapters **Generic Playbooks** and **Generic Focuses**. "Playbook Rules" and "Focus Rules" are section titles inside those chapters.

- Outside those chapters, references now use the chapter name. This changes §2.3, §2.6 and §12.
- Inside Generic Playbooks, references are bare section numbers. This changes §5.9.
- No references remain to "Playbook Rules §" or "Focus Rules §".

## Rule Complexity Flags

| # | Flag | Suggestion |
|---|---|---|
| 1 | **"Desperate scene" is undefined.** §12.1 gives 2 XP for a playbook trigger "in a desperate scene", but no rule defines the term. | Reuse the §8 test: lethal stakes or a listed Danger. Or drop the 2-XP case and always award 1. |
| 2 | **Does a capstone cost an Advance?** §12.2 and Generic Playbooks §1.2 say it "unlocks" and costs no Refresh. Neither says whether taking it uses an Advance. | State it outright: "Take it as an Advance; it costs no Refresh." Or make it automatic when unlocked. |
| 3 | **When Goals are rewritten.** §3.5 calls a Goal an objective "for this session or mission", but §3.5 and §12.3 both say "Goals are rewritten each session". A mission-length Goal (the example's mill-town delegate) can't survive a session break. | "Rewrite a Goal when it's accomplished or no longer fits; check it at the start of each session." |
| 4 | **The example doesn't show the new Feint vs Maneuver versus.** Pass 4 made this a PLAYTEST rule, and §13 is where players see rules in action. | Optionally, change the second guard's Defend to a Maneuver against Kade's Feint in a later volley. Hold off until the rule settles. |
| 5 | **Cheap Shot says "story tag".** Core rules now use Truths for this. | Leave for the Focus pass. |

## Render Check

- The full book compiles at 116 pages, using placeholder art because the repository art files are LFS pointers.
- I checked pages 33–38 (§11–§14 and the Optional Modules opener). §11 and §12 now share a page, and there is no clipping, overflow or orphaned heading.

## Follow-Up Applied

Your rulings: apply the patch, fix flags 1–3, and change every "story tag" to Truth.

| Item | Result |
|---|---|
| Flag 1, desperate scene | §12.1 now reads "1, or 2 in a scene with lethal stakes or a listed Danger, §8". |
| Flag 2, capstone cost | "Take it as an Advance; it costs no Refresh" is now in §12.2, Generic Playbooks §1.2 and the Introduction's ability key. |
| Flag 3, Goal timing | §3.5 now says to rewrite a Goal "when it's accomplished or no longer fits", and to check it at the start of each session. §12.3 points to §3.5. |
| Story tags | Cheap Shot (submitted separately) and the 12 other abilities now say Truth, and so does Module A. The book no longer says "story tag" anywhere. |

Abilities that make lasting Truths now state the duration in their own text:
- Deep Cover lasts "until the cover is blown".
- Contacts last "until the contact is lost".
- A Cartographer map is "a permanent Truth".

§8 still says only Create can extend a Truth past the scene. These abilities are specific exceptions written into their own text, so §8 is unchanged.

The book compiles at 116 pages.
