# Core Rules Pass 2: Simplicity and Flow

Scope: §3 Character Creation and §6 Resistance, Harm and Recovery (§6–§6.8), plus one addition to the §10.7 subsection from pass 1.
Patch: `review/core-rules-pass2.patch`, applied on top of pass 1. None of the chapter files have been changed yet.

These two sections were in better shape than §2–§9. Most of the prose already reads well, so this pass is lighter: it removes repeats and moves conflict-only limits, and the play-facing text mostly stays as written.

| File | Words before → after |
|---|---|
| 2.3 Character Creation | 2155 → 1998 |
| 2.6 Resistance, Harm and Recovery | 2929 → 2677 |
| 2.6.5 Recovery (§6.5–§6.8) | 2196 → 2130 |
| 2.10 Conflict System | 3634 → 3685 |

## Changes by file

### 2.3 Character Creation
- **Instinct:** this rule appeared twice, in "Three Different Jobs" and "Write Your Instinct". "Three Different Jobs" now only defines the Instinct. "Write Your Instinct" keeps the general rule (it takes no time, but doesn't skip a roll) and points to §10.7 for conflicts. The conflict limits (no extra action, interrupt or script change) move to a new **Instincts** bullet in §10.7.
- **Beliefs grant nothing:** three sentences are now two.
- **Compact Templates removed.** They repeated the three quote templates written above them, in shorter form.
- **3.6 Starting Resources:** the Tychē bullet now points to §4.1 instead of restating the reset-and-cap rule. The Load-out bullet is shorter, and its conflict sentence is now a pointer to §10.10.

### 2.6 Resistance, Harm and Recovery
- **Ability thresholds:** four paragraphs (about 330 words) are now one paragraph and a shorter example. The rules are unchanged: the Resistance result is the die you read; a threshold checks that die unless the ability says otherwise; a threshold grants only what it names; a separately listed effect still applies; and a 0 cost doesn't trigger the double-12 clear.
- **Protected payments:** two overlapping paragraphs are now one. The list of things Resistance can't touch stays as is.
- **6.2 "It is a cost":** now says outright that a running-dry status is a protected payment, then gives the same limits more briefly.
- **6.3 Specific replacements:** says plainly that this is a Testament of Dust rule (Sun-Sick and Thirst replace the Scar, while Bled keeps it).
- **6.3 Scope:** removed the shared-Disposition and victory-check sentences, which repeat §6.4 and §10.12. It now points to §6.4.
- **6.4 Resisting while out:** removed the sentence saying Resistance can't reverse a defeat or undo a concession. The list in §6 already covers this.
- **Layout:** removed a forced column break before §6.2 that left most of a column empty after the "Running Dry in Order" box.

### 2.6.5 Recovery
- **Edge does not apply:** the design reason is now half a sentence.
- **No automatic refill:** this was stated three times (in §6.1, a §6.5 bullet and the No shortcut paragraph). The §6.5 bullet is removed and its content folded into No shortcut.
- **Not a general reset:** removed the healing-refund sentence, which repeats §10.7 Protected Payments.
- **6.8 Where it comes from:** the tier-6 sentence is now "Reaching tier 6 gives a Scar (§6.3), not a permanent loss." §6.3 "Not lethal by default" already lists what tier 6 doesn't do.

### 2.10 Conflict System (§10.7)
- The pass 1 subsection is renamed from **Tychē, Truths, Clocks and Woe** to **Other Core Rules in Conflicts**, since it now covers Instincts too.
- Added an **Instincts** bullet holding the conflict limits moved out of §3.

## Rule complexity flags (not in the patch; your call)

1. **The "Hardened" Advance sits in §6.5, not §12.** Players browsing Advances won't find it there. A wilderness Focus ability also uses the name Hardened (chapter 6.7, ability 3a), and the quick reference repeats the Advance. Move it to §12 and rename one of the two, for example "Quick Recovery" for the Advance.
2. **"Burn" means two things.** In §3.4, burning a tag is voluntary: +1 Power, and the tag is unusable until you recover it. In §5, the Weaken effect can "Burn" an enemy's tag for the scene. Pick a different word for one of them, for example "Spend" a tag versus "Suppress" a tag.
3. **Resistance threshold abilities.** The threshold rules need a long paragraph only because some abilities say "on a highest die of 5+", which breaks at negative Edge. Rewording those abilities to "on a Resistance result of 5+" would let the paragraph shrink to one sentence.
4. **Resistance roll at negative Edge.** At Edge −2 or lower you roll more dice but keep the lowest. That is a second procedure players have to learn for a rare case. A simpler alternative: at Edge −1 or lower, roll 1d12 and increase the cost by 1 for each step below −1. This would need a probability check. The current tables show −2 and −3 costing 3 points on 56% and 70% of rolls.
5. **Scar Recorded bookkeeping.** "One per episode", "One per event" and the Scar Recorded mark all prevent duplicate Scars. A single rule might cover all three: "A character gains at most one Scar per scene, unless an ability says otherwise." Test it against long ordeals that span several scenes before adopting it.
6. **Running-dry recovery categories (Depletion, Injury, Affliction)** are chosen when the status is first recorded. Defaulting all running-dry statuses to Depletion, and letting only an explicit source make one an Injury or Affliction, would remove a choice at the table. The text nearly says this already ("the default, unless the source…").
7. **Pass 1 flag carried forward:** the Refresh-for-abilities rules in §4.1 would fit better in §3.6, which now just points to §4.1.

## Render check

The chapter compiles without errors at 36 pages. I checked §3.6, §6–§6.5 and §10.7; no clipping, overlap or stray empty columns.
