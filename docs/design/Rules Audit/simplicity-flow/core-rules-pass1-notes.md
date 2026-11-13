# Core Rules Pass 1: Simplicity and Flow

Scope: §1 Design Pillars, §2 Core Resolution, §4 Tychē Points, §5 Effects, §7 Progress Clocks, §8 Truths, §9 Momentum and Woe, plus one new subsection in §10.7.
Not yet covered: §3 Character Creation, §6 Resistance, Harm and Recovery, §10 conflict bodies, §11–§14.

Patch: `review/core-rules-pass1.patch` (apply from the repo root with `git apply`). None of the chapter files have been changed yet.

## The main problem

Sections §2–§9 explain each general rule, then add conflict clarifications from the audit. Most of those clarifications already appear in §10.5–§10.7, word for word or nearly so. A reader trying to learn the core roll keeps hitting volley, script and trumped-action rules before they reach §10.

**Fix:** in §2–§9, keep each rule's general form and add one pointer to §10. A few conflict limits existed only in §2–§9 (Tychē in conflicts, Truth rank, clocks vs. Disposition). These move into a new §10.7 subsection, **Tychē, Truths, Clocks and Woe**, so no rule is lost.

| File | Words before → after |
|---|---|
| 2.1 Design Pillars | 198 → 187 |
| 2.2 Core Resolution | 1495 → 1122 |
| 2.4 Tychē Points | 978 → 758 |
| 2.5 Effects | 1067 → 658 |
| 2.7 Progress Clocks | 257 → 171 |
| 2.8 Truths | 518 → 364 |
| 2.9 Momentum and Woe | 562 → 427 |
| 2.10 Conflict System | 3394 → 3634 (+ new subsection) |

Net: about 1,200 fewer words across §1–§9, and about 240 added to §10.

## Changes by file

### 2.1 Design Pillars
- Pillar 3 rewritten as two short sentences, with the "don't invent hidden situational math" idea kept.
- Resource table column widths adjusted so the "Borrowed from" header no longer clips.

### 2.2 Core Resolution
- **Tags:** the tag-cap exception sentence ("Apply an explicit tag-cap exception only within its stated scope; the usual +1 exception permits at most +3") is now "A few abilities raise the cap to +3 within their stated scope."
- **Difficulty paragraph:** reordered so the reason to roll comes first, then the step size, then the below-9 note.
- **Bonus dice table:** removed the "(Cypher)" and "(2d20)" source labels, since the §1 table already credits sources. "Ordinary Help" is now "Help". Column widened so "Momentum" no longer overlaps.
- **Effort:** merged the table row with the "Effort (revised)" paragraph and dropped the leftover "(revised)" label.
- **Pay each cost** is now **Paying costs** (5 sentences, down from 8). Removed "Complete independently resolving actions before checking victory", which repeats §10.5.
- **Conflict setup Help** (2 paragraphs): removed. It repeats §10.2 and §10.9. Replaced with one pointer.
- **Outcomes:** the first row read "Beat the target by 3+ per step". It now says "Beat the target by 3+ → Success, 1 Power, +1 per full 3 points over".
- **Outcomes conflict block** (4 paragraphs: scripted exception, versus/trumped Woe, Success at a Cost, automatic success): replaced with one paragraph pointing to §10.5 and §10.7. Every removed sentence is already in §10.7.
- **Doubles:** the double 12s and double 1s bullets are rewritten in plain terms. The versus-test, Perfect Strike and conflict paragraphs became one closing sentence; all three appear word for word in §10.7.

### 2.4 Tychē Points
- Added "Invoke before the roll's outcome is resolved" to the Invoke bullet. The rest of **Conflict timing** moves to §10.7.
- **Declarations have limits** is now **Declarations stay minor** (2 sentences). The conflict half moves to §10.7.
- **Zero Resistance cost** is now **Resisting harder**, with the same rules in clearer order.
- Removed the stale sentence "Exceptional doubles against opposed totals remain an open ruling". §10.7 now settles it.
- The compel bullets now read "Accepting a compel" and "Compelling yourself", and their rules sit under a **What makes a compel** heading. The conflict compel paragraph moves to §10.7.
- **Refresh:** the ★ cost sentence ("additional to a creation extra's 1-Refresh price: a ★ creation extra costs 2 Refresh total, not 3. The free playbook selection waives…") is rewritten as one bullet that gives each case's cost: free pick 1, creation extra 2, advancement +1.
- **Refresh timing:** two sentences are now one.
- Result: §4 now fits on one page in the test render. Before, it ran onto a second page.

### 2.5 Effects
- **Effect table:** removed the conflict text from the Attack, Weaken, Disrupt and Extra Feat cells; each now ends with "In conflicts, … (§10.6)". The Create cell no longer repeats the per-rank cost.
- **Under the table:** 6 paragraphs became 4. Removed **Conflict boundaries**, the versus/trumped paragraph, **Specific exceptions** and **Separate bonuses**; all are in §10.5 and §10.6. Kept one short line each for Free and Create discounts.
- **5.1 Statuses:** bullets reordered to follow play (what a status is → recording → scope → stacking → order → tier 6 → Impede). The tier 6 and Life-threatening bullets are merged. Removed the Sun-Sick, Thirst and Bled mentions; §6.3 "Specific replacements" already covers them.
- Added `#pagebreak(weak: true)` before §5 so the table and Statuses start on one page instead of spilling a few bullets onto a mostly empty page.

### 2.7 Progress Clocks
- Removed the conflict sentence from the Danger clocks bullet (repeats §10.7).
- Shortened **Specific procedures govern**. Removed "A failed treatment attempt does not itself advance the Dying clock", which §6.7 already states.
- **Clocks are not Disposition** is now one sentence; the conflict detail moves to §10.7.

### 2.8 Truths
- Three paragraphs (Conflict permissions, Scope is not a free effect, Scale and preparation) became two short ones: **Rank only shifts Difficulty** and **Scale**. The conflict detail moves to §10.7, and the Superiority sentence is removed because it repeats §10.3.

### 2.9 Momentum and Woe
- Removed **Script timing**; it repeats §10.5 Changing a Script.
- **Paying with Woe:** cut the last sentence (it said an existing permission applies, which adds nothing).
- **The GM gains Woe from:** the run-on list is now a bulleted list.
- **Conflict consequences** and **Woe timing and scope** are now one sentence that points to §10.7.
- Removed `// OPEN: Woe generation for losing versus tests remains unresolved`. §10.7 now settles this: losing or tying a versus test generates no ordinary-failure Woe.

### 2.10 Conflict System (§10.7)
- New subsection **Tychē, Truths, Clocks and Woe** before "Free, Immediate and Automatic Effects Reference". It has six bullets: Invoke, Declarations, Compels, Truths, Clocks and Disposition, Complications. Each one holds the conflict limit removed from §2–§9.

## Rule complexity flags (not in the patch; your call)

1. **Double 1s.** "Always cause their normal complication" plus "successful double 1s also receive the ordinary +1 critical Power" suggests a success on double 1s gets both a complication and +1 Power. The patch says that plainly. If you meant something else, this needs a ruling.
2. **Two Help procedures.** Ordinary Help gives a bonus die for 1 pool point. Setup Help gives +1 Disposition for free. Consider calling setup Help "Backing" or "Joining", so one word doesn't name two different mechanics.
3. **"Dangerous scene Truths (+1 Woe per scene)"** has no definition anywhere in core. Either define "dangerous" (for example, a Truth with lethal stakes or a Danger) or cut it and let the GM spend Woe to create hazards.
4. **Refresh-for-abilities rules sit in §4.1.** They are character creation rules and fit better in §3.6 Starting Resources, which already explains Tychē reset. §4.1 could keep only Refresh, the cap and the minimum.
5. **"Borrowed from" column in §1.** This is designer context, not play guidance. Moving it to §14 Design Notes would make the pillar table easier to read at the table.
6. **Status stacking ("new tier minus 1, min +1").** For an existing tier-2, adding wounded-1 or wounded-2 both give +1, and adding wounded-3 gives +2. It works, but every hit needs arithmetic. A simpler option: "Each new same-kind hit adds +1 tier, or +2 if the new hit is tier 3 or higher." This would need a balance check in your seeded combat batches.
7. **Three ways to make a Truth.** Create costs 2 Power, Momentum costs 2 and Woe costs 2. The prices match, which is good. But Create's "+1 Power to outlast the scene" exists only for Create. Decide whether Momentum- and Woe-bought Truths can also last past the scene.
8. **Tag-cap exception.** Only a few Focus abilities use it (Signature Style in combat Focuses; Masters a Weapon and Is More Than Human in the §6.9 design notes). Consider printing the +3 rule in those abilities only and leaving the core line as "max +2" with no exception text.

## Render check

I compiled the chapter locally with Typst (fallback fonts, so page breaks may differ slightly from your build). There were no compile errors, and the edited chapter is 36 pages, down from 37. Fixes from the visual check: bonus-dice table width, pillar table header, and the §5 page break.
