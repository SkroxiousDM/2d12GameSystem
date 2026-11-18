# Skill Specialisations, Knowledge, and Fictional Permissions

Status: **Integrated** into the core rulebook (branch `feature/specialisations-and-knowledge`). This file is kept as the design record; the active Typst source is authoritative.

Where the rules now live:

| Draft section | Core location |
| --- | --- |
| Skill Specialisations | Core §3.3 Specialisations; free die in the §2.4 bonus-dice table; Advance option in §12.2; conflict limit in §10.18 |
| Knowledge Skills | Core §3.3 Knowledge Skills (skills at +2 or higher count as professional knowledge) |
| Fictional permissions | Core §2.2 "Permission comes first" |
| Contacts and networks | Core §3.6 "Circle and contact" and "Using contacts" |
| Signature assets | Generic Playbooks §2.1 "Losing a signature item"; writing guidance in Playbook Design Notes |
| Optional flashbacks | Core §4.2 Prepared in Advance (obvious or reasonable only, once per session; stretches stay with the Furcifer's ★ Flashback) |
| Weaknesses and Tychē | Already covered by Core §4 compel rules; no change |
| Woe, risk, and rerolls | Core §2.4 "What Woe buys"; §4 Invoke. "Risk Dice" and "Risk Reduction" below mean the *Shadowrun: Anarchy 2.0* mechanics and were not adopted; core Risky Rolls (§2.7) are unchanged |
| Special effects and conflict | Playbook Design Notes; Core §10.18 |
| GM Consequence Menu | Core §2.5 "Choosing a consequence" |
| Playtest Plan | Core §14.1 Known Risks |

Character sheet: `docs/2d12System/generic-character-sheet.typ`.

## Skill Specialisations

A Specialisation names a narrow application of a skill you already have. When a test uses that skill and the Specialisation directly applies to your approach, add one bonus d12 and keep the best two dice as normal. The die counts toward the normal bonus-dice cap. Only one Specialisation applies per test. If already at the cap, the die grants no substitute benefit.

Write entries as `Skill (Specialisation)`, such as Medicine (Trauma Care), Craft (Precision Mechanisms), or Persuade (Mediation). A Specialisation applies to how you tackle the problem, not merely to what is present. It grants no flat modifier, free Power, extra action, or permission to substitute a skill in a scripted conflict. It can combine with Effort, Help, or a die bought with Woe within the existing cap.

Playtest one starting Specialisation per character. Defer advancement costs until the test shows how often the die applies and replaces a resource spend.

## Knowledge Skills

A Knowledge Skill is an unrated field of expertise. Relevant backgrounds and professional skills also count as knowledge within their scope without separate entries. Use the core's professional benchmark if defined; do not import another system's rating threshold. Knowledge adds no die or modifier by itself.

1. Give routine facts freely when someone with the expertise would know them.
2. Give expertise its fictional permissions. Roll the relevant skill only when the action is uncertain and consequential.
3. Give an expert more meaning from the same result where appropriate. Finding an altered record and recognizing why it could not have been produced normally are distinct; interpretation is not extra Power.
4. Do not gate an essential clue behind one Knowledge Skill. Offer another route through a source, contact, or investigation.

Playtest two explicit Knowledge Skills per character beyond what their background and professional skills cover. Examples: Regional Trade Customs, River Ecology, Institutional Records. A medic may recognize an inconsistency without a roll, then roll Medicine with a Trauma Care bonus die to stabilize the patient under pressure.

## Supporting Procedures

- Fictional permissions: A background, tool, or ability can make an action possible or remove an obstacle caused by its absence, without automatically adding a die.
- Contacts and networks: Name one social circle and one individual contact. A circle tells you who might help; a contact tells you whom you can ask and what they might risk. Grant routine help freely and use an existing skill when access, discretion, or cost is uncertain. A favour owed or a relationship exposed can be a consequence. Add no separate skill or loyalty track; check integration with the existing Favours module.
- Signature assets: Give a character-defining asset a permission, any listed effect, a limitation, and a recovery route. Loss can matter, but repair, rescue, or replacement should not require buying the same character option again. Ordinary Load items get no such guarantee.
- Optional flashbacks: Spend 1 Tychē to establish one plausible prior preparation. Roll only if the earlier action was uncertain and consequential. Do not contradict established facts or erase resolved consequences. Load covers what you brought; contacts cover what you can source now; flashbacks cover what you arranged then.
- Weaknesses and Tychē: Use existing Weakness tags. Where the core awards Tychē for accepting a complication, reward an actual cost or lost opportunity, not merely portraying the trait. Do not award twice for the same event.
- Woe, risk, and rerolls: When a player buys a die with Woe, describe extra exposure where apparent, without automatically charging another consequence. A permitted reroll changes the result, not costs already paid or consequences already resolved. Do not add Risk Dice or Risk Reduction.
- Special effects and conflict: Use existing Power spends. A new ability should state timing, cost, and limits. Do not add a generic Tychē spend that interrupts scripts or duplicates a Power spend more cheaply. Borrow the signature-asset format rather than Shadow Amp pricing, Essence, or extra-action rules.

## GM Consequence Menu

Use this menu only when an existing rule calls for a consequence. Judge severity by fictional impact, not a new track. If the test succeeds, preserve what it earned.

| Action | Immediate complication | Longer-lasting consequence |
| --- | --- | --- |
| Inquiry | You get the name, but someone notices you asking. | You get the records, but the source cannot safely grant further access. |
| Negotiation | You secure passage, but at an inconvenient time. | You secure passage, but the agreement creates an obligation. |
| Repair | It works, but must be shut down after this use. | It works, but a separate capability stays offline until serviced. |
| Travel | You arrive, but leave supplies behind. | You arrive, but your usual return route is closed. |

## Playtest Plan

Run an investigation, a negotiated favour, a repair or rescue under pressure, and a short scripted conflict. Give a specialist rolls both with and without other bonus dice. Leave flashbacks optional in the first run.

- Specialisations: Record applicability, changes to the kept dice, Effort or Woe saved, and redundancy at the cap. Narrow overbroad Specialisations before changing the bonus.
- Knowledge: Record when expertise removes a roll, enables an attempt, or deepens a result. Clarify the wording if players expect a modifier.
- Supporting procedures: Check whether contacts create choices, signature assets matter without more routine bonus dice, and consequences preserve earned results.
- Conflicts: Check whether specialists can contribute under the existing action lists. Treat missing contributions as action-design questions rather than letting Specialisations override the script.

First revision: Does the specialist die change what players spend? Does knowledge change what they can do?

Design inputs: Shadowrun: Anarchy 2.0, supplied excerpts (printed pp. 48–63 and 70–77), and the 2d12 fight playtest. Verify overlaps with the current core before integration.
