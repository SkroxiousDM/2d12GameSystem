# Core Rules Pass 3: Simplicity and Flow

Scope: §10 Conflict chapters (§10.1–§10.21).

Files:

- `chapter-2.10-conflict-system.typ`
- `chapter-2.10-conflict-system-aftermath.typ`
- `chapter-2.10-area-and-interpose.typ`
- `chapter-2.10-guardian-domain-clarifications.typ`

Patch: `review/core-rules-pass3.patch`. It passes `git apply --check` against the current checkout. Nothing has been applied to the chapters yet.

## Word Count

| File | Before | After | Change |
|---|---:|---:|---:|
| chapter-2.10-conflict-system.typ | 3,685 | 3,601 | −84 |
| chapter-2.10-conflict-system-aftermath.typ | 2,225 | 2,110 | −115 |
| chapter-2.10-area-and-interpose.typ | 614 | 545 | −69 |
| chapter-2.10-guardian-domain-clarifications.typ | 636 | 528 | −108 |
| Total | 7,160 | 6,784 | −376 (−5%) |

These cuts are small because pass 1 and pass 2 already moved the duplicated conflict caveats into §10.7. Most of what is left is procedure that does real work. The bigger gains need the structural moves listed under "Rule Complexity Flags", and the patch does not include them.

## Changes by File

### chapter-2.10-conflict-system.typ

- §10.2 Starting Disposition: the standalone setup-Help paragraphs are now part of the "+1 per eligible helper" bullet. The record-total sentence is reworded.
- §10.3 Overwhelming Preparation: the setup-defeat paragraphs are trimmed to 2 short statements. One covers what is not done. The other covers what setup defeat does not inflict.
- §10.6 Offensive Bonuses: cut from 3 paragraphs to 2.
- §10.7 Doubles: now holds only the versus-specific bullets and points to §2.6 for everything else.

### chapter-2.10-conflict-system-aftermath.typ

- §10.9: removed the setup-Help line that repeated §10.2.
- "Starting Disposition and Reinforcements" is renamed "Reinforcements and Recovery". Paragraphs that repeated §10.2 and §10.6 Defend are removed, including "A successful Defend may still buy…".
- §10.11: the refresh line is reworded.
- §10.12 Defeat and Finishing Procedures: condensed.
- §10.13 Resistance: now 1 paragraph. The starting-value reference is changed from §10.9 to §10.2, where the value is now recorded.
- §10.14 "Specific breaking points" is merged into the paragraph above it.

### chapter-2.10-area-and-interpose.typ

- The revision-history sentence is now a `//` comment.
- The "Playtest flags" paragraph is now a `// PLAYTEST:` comment.
- The area text is trimmed.
- The Interpose bullets are condensed. Protected payments now point to §10.7 instead of being listed again.

### chapter-2.10-guardian-domain-clarifications.typ

- §10.19 Self-Repair: the last 2 paragraphs, which restated the general cap and stacking rules, are trimmed.
- §10.20 Domain: removed the paragraph that repeated "use the normal independent or versus procedure".
- §10.21 Protocol: the disclosure paragraphs are tightened.

## Rule Complexity Flags

These are not in the patch. Each one needs your decision.

1. **§10.18–§10.21 are not core rules.** Interpose is a Bulwark role trait. Self-Repair and Protocol are Guardian specials. Domain Scope applies only to the Adept and the Testament of Dust Occultist. Together they take about 1,070 words of the core conflict chapter. Proposal:
   - Move Interpose, Self-Repair and Protocol into the Adversaries chapter, next to the Bulwark role and the Guardian specials.
   - Move Domain Scope into the Adept playbook (chapter-5.8), with a one-line pointer in the Testament of Dust Occultist.
   - Keep §10.17 Area Effects in core.
   - Update these cross-references: chapter-7 quick reference ("Area Effects (Core Rules §10.17)" and "Interpose (Core Rules §10.18)"), `chapter-adversaries.typ` (around lines 87, 89, 119, 157 and 165) and the Gate Warden statblock in `chapter-adversaries-part-2.typ` (around lines 168–174).
2. **Name collision: Interpose.** The Focus ability Interpose (chapter-6.3, 2b: cancel 1 more Disposition on an injury trade) is a different rule from the Bulwark trait Interpose (redirecting a status). One of them should be renamed. "Shield-Bearer" or "Cover" would work for the Focus ability.
3. **§10.6 Exceptions names specific abilities.** It covers Called Shot's permission and duration, Cheap Shot's Attack-only limit and the free Extra Feat. Those limits belong in each ability's own text, so the core paragraph can be a single general sentence: "Abilities that permit a purchase state its trigger, cost, frequency and scope."
4. **§10.7 has become the catch-all limits section.** It now holds costs, failures, Doubles, Other Core Rules in Conflicts and protected payments. That is about 1,000 words in the middle of the procedure. One option is to keep Costs and Failures in §10.7 and move the cross-rule limits into a "Conflict Limits Reference" next to §10.15 Order of Resolution. That way the procedure reads straight through and the limits sit with the other lookup material.
5. **Feint versus Maneuver.** The existing `// PLAYTEST: Feint versus Maneuver resolves independently` is still open. Together with "Feint bypasses Defend" and "Feint is trumped by Attack", it is the only interaction that a reader can't predict from the triangle. A playtest should decide whether Maneuver should beat Feint.
6. **Compromise negotiation.** §10.13 combines the grade bands, injury guidance, existing injuries and Resistance into one negotiation of about 8 steps. A 4-step version would be easier to run at the table: find the grade, pick 1 package, apply Resistance, record it.
7. **Rotation rules.** "Can't act in consecutive volleys" and "every participant acts before anyone repeats" overlap for sides with 2 participants. One rule might be enough. This needs a check against 3-participant sides.
8. **Open `// PLAYTEST:` comments.** These include the §10.3 symmetry flag (both sides setup-defeated at 0) and the new area-effect flag.
9. **Pacing target.** §10.16 sets Disposition around 8–11, 2–3 exchanges and 15–20 minutes. That target should be tested in seeded batches before any of the numbers above are tuned.
10. **For the next pass (§11):** the "Creation extras" paragraph in §11 repeats the extra-ability Refresh cost from §4.1.

## Render Check

The pass 3 tree compiles without errors as 35 pages, and pages 18–30 were checked visually. There are no clipped tables, overlaps or split headings. The half-empty right column on page 22 (§10.6) comes from the Supplementary Effects table placement and was there before this pass. Fonts fall back to defaults in the sandbox, so page breaks are approximate.
