# Generic Focuses Pass 1: Simplicity and Flow (ch. 6)

Status: **applied** (2026-11-13), together with the R fixes and balance flags B1–B5 and B8 as PLAYTEST changes (see Follow-Up Applied). Patch: `review/generic-focuses-pass1.patch` (9 files, including the Module B Hungry & Thirsty row).

Scope (as agreed): flow, rule checks and balance flags against other Focuses and the playbooks; repeated limits moved into one shared block in §1; 6.9 design notes condensed into a sidebar. The patch changes wording only, except one fallback marked `// PLAYTEST:` (Apex Form, matching the chapter 5 Weary fallback). The first version of the patch didn't include the rule-check fixes or balance flags. They were added after approval; see Follow-Up Applied.

## Size

| File | Before | After | Change |
|---|---:|---:|---:|
| chapter-6-focuses.typ (§1–2) | 821 | 826 | +5 |
| 6.3 Combat | 1,301 | 964 | −337 |
| 6.4 Stealth & Precision | 1,175 | 861 | −314 |
| 6.5 Knowledge | 1,095 | 791 | −304 |
| 6.6 Social | 1,228 | 976 | −252 |
| 6.7 Wilderness & Travel | 882 | 662 | −220 |
| 6.8 Weird | 1,217 | 962 | −255 |
| 6.9 Design Notes | 523 | 149 | −374 |
| **Total** | **8,242** | **6,191** | **−2,051 (−25%)** |

Book: 112 → 109 pages (placeholder art).

## Main Pattern

Most Focus entries ended with the same defensive tail: "grants no additional scripted action", "cannot cancel shared Disposition loss, injury-trade payments, running-dry statuses…", "Apply the +3 at full value with other flat starting-Disposition modifiers…", "do not convert it into a modifier to opposing totals in a versus test". Chapter 5's §1.2 Ability limits already covers the general ones, so §1.3 now points there and adds only the Focus-specific limits. Each entry keeps its own trigger, benefit and any exception that is actually unique to it.

## Changes by File

### chapter-6-focuses.typ (§1.3)
- Renamed "Shared Rules Reminders" → **"Ability Limits"**. It opens by applying Generic Playbooks §1.2 (free costs, no extra turns, separate bonuses, protected payments, automatic success).
- Kept: +2 bonus die maximum; tag-cap exception max +3; one cost reduction for non-Create Effects with the Create discount exception (Core Rules §5).
- New shared bullets that replace repeated row text:
  - flat starting-Disposition bonuses (Core Rules §10.2–10.3);
  - declared facts can't contradict resolved events or recalculate Superiority, and bonus clock segments advance only that clock;
  - Difficulty reductions apply only against a Difficulty, never in versus tests (Core Rules §10.5);
  - crews, packs and allies count as one participant with no Disposition or injury trade;
  - healing treats existing statuses only (Core Rules §6.6, §6.4).
- Removed the stale line "A general Effect reference does not settle the open supplementary action-permission list (§5)". Core Rules §10.6 now has the Supplementary Effects Reference.
- Bare § references now read "Core Rules §".

### 6.3–6.8 (Focus tables)
- Trimmed boilerplate in about 80 entries, for example Shield Bearer, Second Wind, Living Wall, Warband, Vanish, Living Shadow, Master Key, Dead Man's Switch, The Reveal, Deep Cover, Become Them, Immunity, The Pack, Ward the Threshold, Not Yet and Borrowed Might.
- Kept the manual hyphenation hints in names (Unbreak-able, Contin-gency, Interro-gator, Master-work, Carto-grapher, Unshake-able).
- **Improvised Arsenal:** the load reference "Core Rules §2.1" pointed to The Roll. It now reads **Generic Playbooks §2.1**.
- **Power Broker:** "World Turn (Module C)" → **"(Module C or E)"**, advancing or reversing "one faction **or project** clock". Module E's World Turn (E.10) uses project clocks.
- **Legendary Ride:** added "(Module A)" after artifact, to match Weapon Saint and Masterwork.
- **Apex Form:** `// PLAYTEST:` Weary now reads "(Module B; without it, exhausted-2 until a night's rest)", the same fallback as Berserker and Unleash.

### 6.9 Design Notes
- Changed to `#sidebar("Design Notes")`, with three short paragraphs: Coverage (the playbook table as compact number ranges), Watch in playtest (tag-cap exceptions, playbook overlap, Create discount stacking) and Gaps.
- Dropped notes that only restated rules or are now resolved: the v0.3 tag-cap history, the automatic-success summary (now in Generic Playbooks §1.2), The Reveal "not automatic success" note (the entry says so itself), the ★-distribution claim (checked true: one ★ per Focus, never Tier 1) and the timing/payments note (now §1.3).

## Rule Check Flags

All applied as PLAYTEST changes (see Follow-Up Applied).

- **R1 Change of Plans (Talks Their Way Out, 2a) does nothing.** The core Success at a Cost already lets the player take the consequence or give 1 Woe. Suggestion: "Once per scene, a social Success at a Cost costs you nothing."
- **R2 "Short rest" and "full rest" aren't defined.** Core Rules §6.5 names First–Fourth rests. Physician's Care and Regeneration use the undefined terms, and so does Module B Hungry & Thirsty. Suggestion: short rest = a Second or Third rest, full rest = a Fourth rest. Don't use the First rest: it takes seconds, so Physician's Care would refill all pools mid-fight.
- **R3 Hardened: "your personal Grind clock" doesn't exist.** Module B's Grind clock belongs to the party. Suggestion: "You ignore Exposed, and the first Grind condition you'd take each journey."
- **R4 One Shot (Never Misses, 3a): "Takes them Out" in a conflict.** In scripted conflicts, defeat runs through shared Disposition, so it's unclear what happens. Suggestion: outside a conflict, the target is Taken Out; in a conflict, a non-major participant is removed and the Attack removes 1 extra Disposition.
- **R5 Module B dependencies with no fallback:** Remedy (Grind conditions, Checks); Favour Bank and Holdings (Players' Turn, Checks); Forager's Eye, Shelter Builder, Hardened, Living Larder, Shortcut (Supplies, Grind, legs). Lives Off the Land is nearly all Module B. Suggestion: mark these "(Module B)" and add a ◈-style marker to the Quick Reference, as the Weird Focuses have. Alternative: write a short fallback for each.
- **R6 Module C dependencies:** Discoverer, Lands Unknown (Region Truth), Rewrite History and Gossip Network. Same suggestion: add a module tag.

## Balance Flags

These compare the Focuses with the playbooks after the chapter 5 PLAYTEST changes. B1–B5 and B8 are applied as PLAYTEST changes; B6 and B7 are still open.

- **B1 Starting-Disposition bonuses are larger than the playbook ones.** Clean Getaway +3 (T2, Chase), Trusted Mount +3 (T3, Chase), Command the Field +4 (T3, Battle) and The Reveal +4 (T3). By comparison, At the Helm is now +2, Ambusher +2 and the Word Is Law capstone +3, and starting Disposition is about 6. Flat modifiers also stack: a Chase with At the Helm, Clean Getaway and Trusted Mount gives +7. Suggestion: Chase bonuses +2; T3 +4s → +3. Optional: a +4 cap on flat bonuses for one side.
- **B2 Two-step Difficulty reductions** at T3 (Master Key for complex security, Living Archive for Lore history) beat the Master of the Field capstone (one step). Suggestion: one step, or keep two steps and widen Master of the Field (this links to chapter 5's B6).
- **B3 No One Left** (T3 non-★: escape any conflict once per session, no extra compromise) rivals the One With the Wild capstone escape, which only works in the wild. Suggestion: require a successful Defend or Maneuver in that volley, or make it ★.
- **B4 Unseen Hand + Opportunist:** +1 Power while hidden (Unseen Hand) and +1 Power when the action has an opening (the Opportunist playbook ability) usually trigger together, because being hidden is an opening. That gives +2 Power per action. Suggestion: "doesn't stack with Opportunist".
- **B5 Lost Knowledge** (T2: a free Truth once per session, 0 Power) is stronger than most T2 abilities. Suggestion: 1 Power, or move it to T3.
- **B6 Borrowed Might ★** (automatic 4 Power for 3 Woe, once per session) is close to the Ascendant capstone (5 Power). The Woe cost probably keeps it fair. Watch in playtest.
- **B7 Overlaps with playbook abilities:** Bypass = Decipher; Trap Sense = Escape Artist; Interrogator = Tracker; Unshakeable ≈ Steady Mind/Juggernaut + Escape Artist; Bane ≈ Brutal; Every Trick in the Book ≈ Crowd Work/Brutal; Monster Lore ≈ Beast Lore. The sidebar's "don't stack, take the better one" rule covers the overlap. Consider giving the Focus versions a small extra benefit so an on-type pick isn't wasted.
- **B8 Physician's Care ★:** full pools on a rest is strong if R2 maps short rest to a Second rest (10 minutes). Suggestion: tie it to the Third rest only.

No issue found: Golden Tongue (+3 invokes), the tag-cap exceptions (+1, max +3) and Sniper's Patience (bonus dice within the cap).

## Follow-Up Applied

Every item below has a `// PLAYTEST:` comment above the row.

| Flag | Change |
|---|---|
| R1 | Change of Plans: once per scene, a social Success at a Cost costs nothing. |
| R2 | Physician's Care uses the Third rest. Regeneration: a Second or Third rest clears one tier-1 physical status, and a Fourth rest clears 2 tiers from every physical status. Module B Hungry & Thirsty: "First to Third rests restore nothing". |
| R3 | Hardened: ignore Exposed and the first Grind condition you'd take each journey (Module B). |
| R4 | One Shot: in a conflict, it removes the participant and 1 additional Disposition. |
| R5/R6 | Module tags added to Favour Bank, Holdings, Forager's Eye, Shelter Builder, Shortcut, Living Larder and Lands Unknown. New §1.2 "Module abilities" paragraph: without the module, take the other ability at that tier or agree a substitute. Lives Off the Land gets a B marker in the §2 Quick Reference, and the GM removes it without Module B. |
| B1 | Clean Getaway +2, Trusted Mount +2, Command the Field +3, The Reveal +3. |
| B2 | Master Key and Living Archive: one Difficulty step. |
| B3 | No One Left needs a successful Defend or Maneuver by you or an ally in that volley. |
| B4 | Unseen Hand doesn't stack with Opportunist. |
| B5 | Lost Knowledge costs 1 Power. |
| B8 | Physician's Care: Third rest only (with R2). |

Chapter 6 after the follow-up: 6,441 words (it was 8,242 before this pass). The book stays at 109 pages.

**Still open:** B6 (Borrowed Might vs Ascendant) and B7 (playbook overlaps). From chapter 5: B2 Crowd Work ★, B3 Weather Sense ★, B6 Master of the Field scope (links to this chapter's B2) and B7 Focused Channel.

## Render Check

Placeholder art, full book compile: 112 → 109 pages. Chapter 6 runs from PDF p. 92 (opener) to p. 103. The last page has the end of the Is More Than Human table and the Design Notes sidebar, so there's no orphan page. The Apex Form row breaks across pp. 102–103, which is acceptable. No pagebreak change was needed.

## Reminder

`drafts/README.md` still needs a licence check and acknowledgements for C.7 (Entanglements, Ewen Cluney) and C.8/E.1A (Long Knives, Levi Kornelsen).
