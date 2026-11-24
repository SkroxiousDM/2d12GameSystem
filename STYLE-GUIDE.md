# 2d12 System contributor and AI editorial style guide

## 1. Purpose and scope

Use this guide when writing, revising, or reviewing any part of the 2d12 System: core rules, optional modules, character creation, Descriptors, Playbooks, Focuses, abilities, equipment, adversaries, character sheets, reference material, examples of play, setting material, design notes, and contributor documentation.

Write in a plain, direct, table-facing voice. Help readers find a rule, understand it, and use it during play. Improve the explanation without changing the game.

This guide is written in Markdown. It does not require converting the rulebook's Typst source to Markdown.

The guide applies across the system. Its existence does not authorize a system-wide editing pass: each task must define which books, sheets, and other files are in scope.

## 2. Editorial authority and source of truth

### Use the current approved source

Before editing:

1. Confirm the repository, working branch, and revision.
2. Read the contributor instructions and relevant review notes.
3. Read the rule being edited and the rules it references.
4. Check examples, summaries, sheets, and related abilities for dependencies.
5. Identify differences between repository files and Project copies.
6. Check for explicit author corrections that supersede existing wording.

Use this order of authority:

1. Explicit author decisions and approved corrections.
2. The designated current rulebook source.
3. Supporting examples, summaries, and reference material.
4. Historical drafts and archived design notes.

An author correction can establish that current source wording is wrong. Record the correction and flag affected passages; do not reproduce an error merely because it remains in the repository. If authority is unclear, ask before proceeding.

### Preserve mechanics and terminology

Preserve costs, quantities, targets, caps, timing, order of operations, prerequisites, eligibility, resource ownership, decision-makers, mandatory and optional choices, permissions, restrictions, exceptions, recovery, duration, refresh conditions, and interactions between rules.

Preserve established names, symbols, identifiers, cross-reference targets, and the mathematical meaning of signs and notation.

Changing any of these requires explicit approval. If clearer wording requires choosing between plausible interpretations, flag the ambiguity instead.

### Keep rules and proposals separate

| Category | Treatment |
|---|---|
| Current rule | Explain faithfully. |
| Approved author correction | Follow it and identify affected source wording. |
| Optional rule | Keep its optional status explicit. |
| Setting-specific rule | Identify its scope; do not generalize it into the core rules. |
| Playtest rule or comment | Preserve its status and warning. |
| Design proposal | Keep outside operative rules until approved. |
| Historical note | Do not use it to override current rules. |
| Unresolved contradiction | Report the conflicting passages and request a ruling. |

Do not turn a design question into a rule by removing words such as "consider," "test," or "possible."

## 3. The house voice

### Explain the game as it is used at the table

Use direct instructions, concrete verbs, familiar language, short connected paragraphs, and explicit subjects when responsibility matters. Include enough detail to resolve the procedure.

Avoid legalistic phrasing, academic explanations inside procedures, promotional claims, forced enthusiasm, vague reassurance, humour that obscures a rule, and atmosphere that hides costs or restrictions.

| Avoid | Prefer |
|---|---|
| "Players should proceed to make a selection of…" | "Choose…" |
| "It should be noted that…" | State the rule directly. |
| "The expenditure of this resource allows…" | "Spend this resource to…" |
| "At this point in time…" | "Now…" or precise timing. |
| "This powerful and versatile ability…" | Explain what it does. |
| "Simply resolve the action as normal." | Name the procedure or provide a reference. |

Remove filler, not qualifications.

### Use active voice by default

Name the actor when it affects play: "The GM sets the Difficulty," "The player chooses," or "The party spends Weal."

Passive voice is acceptable when the actor is irrelevant or already clear. Do not replace an explicit decision-maker with "the table" unless the rule gives the group that decision.

### Use present tense and natural contractions

Write rules as current procedures: "The effect ends" and "You choose."

Use past tense for completed events and historical design notes. Use natural contractions such as "you can't," "doesn't," and "don't." Do not make prose stiff merely to make it sound authoritative.

## 4. Addressing the reader

### Define the audience locally

In player-facing rules, "you" means the player making the choice or controlling the character. Use "your character" when distinguishing the person from the fictional character.

The player chooses an option; the character knows a fact, suffers an injury, or carries equipment.

In GM-facing sections, establish that the instructions address the GM before using "you."

### Avoid shifting audiences

Do not switch between player and GM instructions without signalling the change. In shared procedures, state what the player does, what the GM does, and how the result applies.

Use "GM," "player," "character," "PC," "NPC," "party," and "side" precisely. Define abbreviations at their first useful appearance in introductory material.

### Use inclusive, setting-neutral language

Use singular "they" for an unspecified person or character. Keep core explanations applicable across genres. Put setting assumptions in labelled examples or setting material. Preserve proper names, quotations, and intentional character voices.

## 5. Canadian English

Use Canadian English throughout editorial prose.

| Use | Avoid in ordinary prose |
|---|---|
| armour | armor |
| colour | color |
| favour | favor |
| behaviour | behavior |
| centre | center |
| defence | defense |
| travelling | traveling |
| cancelled | canceled |
| labelled | labeled |
| organize | organise |
| recognize | recognise |
| roleplaying | Alternating between roleplaying and role-playing. |

Use "licence" as a noun and "license" as a verb.

These preferences do not authorize changing named mechanics, proper names, quotations, filenames, paths, labels, or identifiers. Preserve approved names and flag inconsistencies.

Use metric units for new measurements unless a setting or established rule requires otherwise. Do not convert existing mechanical distances or quantities without approval.

## 6. Terminology and capitalization

### Preserve approved vocabulary

Use the spelling, diacritics, and capitalization of the approved source, subject to explicit author corrections.

| Category | Forms |
|---|---|
| System | 2d12 System |
| Resources and related terms | Weal, Woe, Tychē Points, Refresh |
| Pools | Sōma, Mētis, Psychē, Pneuma |
| Pool shorthand | Sōm / Mēt / Psy / Pne |
| Rules terms | Difficulty, Power, Tag Power, Effects, Resistance, Edge |
| Character options | Descriptor, Playbook, Focus; Descriptors, Playbooks, Focuses |
| Generic Playbooks | Bellator, Furcifer, Savant, Interlocutor, Explorator, Adept |
| Fictional elements | tags, personal statuses, Situational Conditions, Truths |
| Ability notation | ★ Major, ◆ Capstone, ◈ Weird |

This register does not authorize mechanical capitalization of unrelated ordinary words. If another current instruction disagrees with the approved vocabulary, flag the conflict rather than silently choosing a new name.

### Capitalize terms, not importance

Capitalize established mechanics, options, actions, and categories. Use lowercase for ordinary meanings. Do not capitalize a word merely because it matters to the game or lowercase a named mechanic for visual consistency.

### Keep concepts distinct

Do not interchange Power and Weal; Weal and Woe; pool points and Tychē Points; bonus dice and numerical modifiers; tags and personal statuses; personal statuses and Situational Conditions; Situational Conditions and Truths; signed values and unsigned ratings; or narrative descriptions and mechanical permission.

Use the specific mechanic rather than a loose substitute such as "bonus," "penalty," "condition," or "effect."

### Treat older terminology as historical

Do not restore a term merely because it appears frequently in older drafts. Check whether an older usage is intentional, identify the controlling rule or correction, and flag uncertainty. Replace it only when the change is demonstrably editorial or approved.

## 7. Rules language

### Preserve the strength of instructions

| Wording | Meaning |
|---|---|
| must | Required. |
| can | Permitted or possible under the rule. |
| may choose | Explicitly optional. |
| can't | Prohibited. |
| should | Advice, not a requirement. |
| usually / normally | A default with exceptions. |

Do not exchange these casually. Prefer "can" for permission when "may" could suggest uncertainty.

### State timing precisely

Use explicit timing: before rolling, after resolving the roll, before applying the loss, when the scene ends, once per scene, or until the stated recovery condition is met.

Preserve distinctions between "before," "when," "after," and "instead." Do not replace exact timing with "then" when that makes an interaction less clear.

### Make costs complete

Preserve the amount, resource, payer, timing, optionality, whether the cost is additional or a replacement, and any limit, waiver, or exception. Do not write "spend 1 point" when several resources could apply.

### Keep permissions bounded

One permission does not imply related permissions. Do not infer that a narrative fact grants a numerical benefit, a free benefit ignores caps, automatic success ignores restrictions, healing refunds a cost, or a rule works identically inside and outside conflicts.

Retain explicit boundaries even when shorter wording sounds smoother.

## 8. Organizing rules

### Lead with the usable rule

When appropriate, organize an explanation as:

1. Purpose or trigger.
2. Who acts or chooses.
3. Procedure.
4. Cost and timing.
5. Result.
6. Limits and exceptions.
7. Example or reference.

Keep restrictions beside the rule they restrict. Do not force short rules into unnecessary templates.

Preserve the established Trigger, Cost, Benefit, Limit structure for abilities that use the project's four-field ability helper. Do not move a cost or restriction into flavour text.

### Separate rules, examples, and rationale

Make clear what readers do, what happens, and why the rule was designed that way. Put rationale in labelled notes unless needed to use the rule. Do not hide requirements in examples or sidebars.

### Choose lists and tables by function

Use numbered lists when order matters and bullets for unordered options or facts. Keep list entries parallel; start procedural steps with verbs where practical.

Use tables for costs, ladders, outcomes, parallel options, and reference information. Do not compress conditional procedures until timing or exceptions disappear.

## 9. Numbers, signs, and notation

### Use numerals for mechanical quantities

Write "1 Power," "2 Tychē Points," "+1 bonus die," and "a 4-segment clock." Use words in ordinary prose when more natural. Preserve exact values, limits, minimums, maximums, and approximations.

### Preserve dice instructions

Use forms such as `2d12`, `3d12 keep 2`, `+1 Power`, `Standard 15`, and `Hard 18`. Do not omit which dice are kept or how they are used.

Use inline code for literal notation in contributor documentation, not for every mechanical value in published prose.

### Use a true minus sign

Use `−` (U+2212) for negative values and subtraction, not a hyphen (`-`), en dash (`–`), or em dash (`—`).

Keep a negative sign attached to its numeral: `−2` or `−1 Edge`. Put spaces around a subtraction operator: `3 − 1 = 2`.

### Write personal statuses with signed values

Write the name and signed value in one italic span. Place one space between the name and the sign, with no space between the sign and numeral.

| Type | Example | Read as |
|---|---|---|
| Positive personal status | *warded +2* | Warded plus two. |
| Negative personal status | *wounded −2* | Wounded minus two. |

Use an explicit plus sign for positive values and a true minus sign for negative values. Do not write `warded-2`, `warded 2`, `wounded-2`, or `wounded − 2`.

The sign is meaningful, not a separator. Do not describe this notation as a "hyphenated tier."

For a variable value, preserve the same form: *warded +X*. Preserve the source's meaning of X.

Signed notation does not grant a roll modifier where a specific rule says otherwise. Ward, for example, retains its explicit protection-only operation. Do not infer stacking, Resistance, recovery, scope, or other mechanics from typography.

### Keep fictional elements distinct

| Element | Example | Notation |
|---|---|---|
| Tag | *scarred knuckles* | Italicized name. |
| Positive personal status | *warded +2* | Italicized name, space, positive value. |
| Negative personal status | *wounded −2* | Italicized name, space, negative value. |
| Situational Condition | *smoke cover 2* | Italicized name and unsigned rating. |
| Truth | *Patrolling Guards* | Italicized statement without a number. |

Do not convert unsigned ratings into signed personal statuses or change categories for visual consistency.

### Distinguish signs and punctuation

Use hyphens in compound words such as "4-segment clock," en dashes for compact ranges such as `1–3`, and true minus signs for negative values and subtraction. Write negative ranges clearly, such as "−3 to −1."

Never replace hyphens globally. Review occurrences in context. Preserve code syntax, paths, labels, and identifiers.

### Show consequential arithmetic

Show enough work to verify examples. Distinguish dice results, kept dice, modifiers, final totals, Power, Tag Power, spending, and remaining resources.

If correcting arithmetic requires selecting a rule interpretation, flag the issue and show the competing readings rather than silently changing it.

## 10. Examples of play

### Show a concrete decision

A useful example shows the situation, intent, mechanic, choice or payment, result, and what changes in the fiction or on the sheet.

Use named characters and visible decisions. For longer examples, use short labels such as Goal, Roll, Result, Spend, Consequence, and Afterward.

### Keep examples subordinate to rules

Examples illustrate rules; they do not create exceptions. Every mechanical statement must follow current rules or approved corrections. If an example contradicts a rule, flag both passages and explain the difference.

Use the smallest situation that demonstrates the interaction. Introduce extra mechanics only when helpful. Preserve continuity: spent resources remain spent and ongoing effects continue until a rule ends them.

Use signed personal status notation throughout, including changes such as *terror −3* becoming *terror −1*.

### Label editorial examples

Label writing demonstrations as wording examples, not new rules. Do not invent an ability or cost merely to demonstrate sentence style.

## 11. Voice across different material

Keep the same clarity throughout. Vary atmosphere, not mechanical precision.

| Material | Treatment |
|---|---|
| Core rules | Direct instructions, explicit timing and limits. |
| Optional modules | The same voice, with scope and dependencies early. |
| Playbooks and Focuses | Brief identity-setting prose, then precise mechanics. |
| Abilities | Established fields, with triggers, costs, benefits, and limits clear. |
| Equipment | Concrete descriptions; distinguish utility and mechanical benefits. |
| Adversaries | GM-facing instructions with clear triggers, targets, and costs. |
| Character sheets | Compact, accurate labels and reminders consistent with the rules. |
| Setting material | Atmosphere is welcome; distinguish rules from setting facts. |
| Examples | Concrete decisions and consequences. |
| Quick reference | Compact reminders that do not expand or contradict rules. |
| Design notes | Intent, alternatives, and uncertainty; proposals remain proposals. |

Flavour text can establish identity but must not carry hidden mechanical requirements.

## 12. Headings, emphasis, and references

### Use clear headings

Name the rule or answer the reader's likely question. Preserve established reference targets. For new documentation, use sentence case, one top-level title, ordered nesting, and no decorative punctuation.

Do not rename or renumber published sections during a prose-only pass.

### Use emphasis consistently

Use italics for fictional elements as required, bold sparingly for short lookup terms, and inline code for paths, identifiers, and literal syntax in contributor documentation.

Keep the personal status name and signed value in the same italic span: `*wounded −2*` or `*warded +2*`.

In Typst source, use the project's equivalent markup, such as `#emph[wounded −2]`, rather than Markdown syntax.

### Preserve working references

Verify destinations. Preserve labels and identifiers unless authorized. Prefer descriptive references to "see above." Do not hard-code numbers where automatic references are used. Flag broken or ambiguous references.

Notation corrections do not authorize changing hyphens in filenames or reference labels.

## 13. AI editor instructions

### Before editing

1. Confirm the requested scope.
2. Read relevant current source.
3. Check approved author corrections.
4. Check terminology and connected rules.
5. Identify mechanical details that must remain unchanged.
6. Ask a targeted question if proceeding requires a design decision.

Do not repeat questions already answered in the task brief.

### During editing

Do not invent rules, resolve unapproved contradictions, change numbers to rescue examples, replace established names with synonyms, import other games' conventions, or turn design intent into mechanical permission.

Do not delete exceptions, unresolved comments, or playtest flags for brevity. Do not reorganize unrelated material without authorization.

Do not treat meaningful signs as separators, override author corrections with old source wording, or infer new mechanics from signed status notation.

Work in bounded passes. Separate prose edits, approved notation corrections, and proposed mechanical changes. Never claim a review, test, build, or repository update that did not occur.

### After editing

Report scope, files reviewed and changed, editorial changes, approved corrections applied, possible mechanical implications, unresolved questions, references checked, checks performed, and checks not performed.

Say "No intentional mechanical changes" only when accurate; it is not a substitute for reviewing the diff.

## 14. Reporting ambiguities and contradictions

Keep unresolved questions outside publishable rules unless source comments are requested.

```markdown
### Editorial query: [short title]

- Location:
- Related passage:
- Type: ambiguity / contradiction / terminology / notation / arithmetic / reference
- Current wording:
- Relevant author decision, if any:
- Problem:
- Possible readings:
- Mechanical impact:
- Decision needed:
- Proposed wording, if approved:
```

Quote enough to identify the issue. Distinguish confirmed contradictions from unclear wording. If already resolved by the author, record an approved correction awaiting application rather than reopening the question.

Offer alternatives without presenting unapproved choices as settled. Preserve existing `// PLAYTEST:` notes and do not invent a competing comment convention without approval.

## 15. Contributor workflow

1. Confirm source and scope.
2. Review approved author decisions.
3. Read affected rules and dependencies.
4. Prepare the revision.
5. Compare against the original for mechanical equivalence.
6. Check terminology, notation, examples, and references.
7. Record unresolved issues separately.
8. Submit the proposed diff and review notes.
9. Obtain required approval before applying changes.

Follow [CONTRIBUTING.md](CONTRIBUTING.md) for branches, pull requests, commits, changelog entries, builds, and generated outputs. Do not edit generated PDFs directly; rebuild them through the prescribed process when required. State clearly when a required build has not been performed.

Keep each pass focused enough to review or revert independently.

For status notation corrections, review explanations, examples, abilities, equipment, adversaries, tables, quick references, and in-scope character sheets. Preserve numbers and mechanics. Do not alter unrelated hyphens.

## 16. Final review checklist

### Voice and readability

- [ ] Plain, direct, table-facing prose.
- [ ] Clear audience and decision-makers.
- [ ] Necessary qualifications retained.
- [ ] Rules, examples, and rationale distinguishable.
- [ ] Consistent Canadian English.

### Mechanical fidelity

- [ ] Costs, resources, quantities, caps, and thresholds preserved.
- [ ] Timing, order, permissions, and prohibitions preserved.
- [ ] Resource ownership and decision-makers preserved.
- [ ] Exceptions, durations, and recovery preserved.
- [ ] Optional and playtest status preserved.
- [ ] Author corrections respected.
- [ ] No unresolved contradiction silently resolved.

### Terminology and notation

- [ ] Approved names, capitalization, and diacritics used.
- [ ] Tags, personal statuses, Situational Conditions, and Truths distinct.
- [ ] Personal statuses use explicit signed values: *warded +2*, *wounded −2*.
- [ ] One space between the name and signed value; sign attached to numeral.
- [ ] Negative values use `−` (U+2212), not a hyphen or dash.
- [ ] Signs are not described as name separators.
- [ ] Unsigned ratings remain unsigned.
- [ ] Specific exceptions, including protection-only statuses, preserved.
- [ ] Dice instructions remain complete.

### Examples and references

- [ ] Examples match rules and approved corrections.
- [ ] Arithmetic checked where relevant.
- [ ] Costs and consequences remain continuous.
- [ ] Cross-references resolve.
- [ ] Source markup and identifiers intact.
- [ ] Compound words, paths, and labels unaffected by notation changes.

### Delivery

- [ ] Summary matches the diff.
- [ ] Unresolved questions listed.
- [ ] Completed and uncompleted checks stated accurately.
- [ ] No unauthorized changes made.

## 17. Reusable AI editing brief

```text
Edit the specified 2d12 System material using STYLE-GUIDE.md.

Use plain, direct, table-facing Canadian English.

Confirm authoritative source and scope. Check explicit author decisions
and approved corrections before relying on existing wording.

Preserve mechanics, terminology, costs, numbers, timing, permissions,
restrictions, exceptions, resource ownership, and decision-makers.

Write personal statuses in italics with one space before the signed
value: warded +2 or wounded −2. Use an explicit plus sign for positive
values and a true minus sign (−, U+2212) for negative values. Keep the
sign attached to the numeral. Variable values follow the same pattern,
such as warded +X.

Read these as “warded plus two” and “wounded minus two,” not hyphenated
tiers or names joined to numbers. Notation grants no new roll modifier
or other mechanical permission. Preserve explicit exceptions.

Do not convert unsigned ratings into signed personal statuses. Do not
globally replace hyphens or alter code syntax, paths, or labels.

Improve clarity without adding rules or choosing between interpretations.
Keep rules, examples, setting prose, and rationale distinct. Preserve
source markup, reference labels, ability fields, and playtest comments.

Flag ambiguities and contradictions with locations, related passages,
possible readings, and the decision needed. Do not resolve them without
approval. Record settled author decisions as approved corrections rather
than reopening them.

Return the proposed revision or diff, change summary, approved corrections
applied, possible mechanical implications, unresolved queries, and checks
performed and not performed.

Follow CONTRIBUTING.md. Do not apply, commit, or push changes without the
required approval. Do not claim checks or builds that did not occur.
```
