# Encounter recalibration — session template

For Testament of Dust and The 2d12 System. Draft test worksheet, not a rules amendment or completed test result.

This template measures the current rules against the retained encounter labels. It does not assume that the legacy P = 8 + party size benchmark or the old Standard and Hard expectations are correct. Record the exact rules commit used for each run.

## Session brief

```markdown
# Encounter recalibration — session [ID]

Date:
Facilitator / recorder:
Rules branch and commit:
Character sheets / adversary-card revisions:
Players and party size:
Conflict type:
Test condition: [baseline / changed budget / changed Woe / other]
Paired run ID, if any:
Random seed or dice record:

Question being tested:
Prediction made before play:
What stays fixed across paired runs:
What changes across paired runs:

PC objective:
Opposition objective:
Established stakes, including whether lethal outcomes are possible:
Possible concession or withdrawal:
Scene Truths and other starting conditions:
```

Use the current rules commit and fixed character builds for a comparison. If you change both the budget and opening Woe, label it a new condition rather than attributing the result to either variable alone.

## Setup and budget

Core Rules §10.2 uses the leader's 2d12 + Disposition skill + highest Edge in that skill's pool, divided by 3 and rounded down. Add eligible helpers and flat modifiers at full value, apply the minimum of 1, then opposing Superiority. Adversary sides built from Grit sum Grit instead of rolling. Track shared Disposition for each side, never personal shares or spill-over.

```markdown
### PC starting Disposition
Leader / Disposition skill / pool:
Dice: [  ,  ]
Skill:
Highest Edge in that skill's pool:
Subtotal: floor((dice total + skill + Edge) / 3) =
Eligible helpers: [names and contributions]; +[number]
Other flat modifiers: [source and value for each]
Before minimum:
After minimum of 1:
Opposing Superiority: [category, distinct justification, value]
Adjusted PC starting Disposition:

### Opposition starting Disposition
Adversaries: [name — Rank — Role — Grit/Threat]
Sum of Grit:
Other applicable starting modifiers:
After minimum of 1:
Opposing Superiority: [category, distinct justification, value]
Adjusted opposition starting Disposition:

### Budget and Woe
Total Threat = [sum]; total Grit = [sum]
Retained legacy P for this party size: [reference only]
Retained label and formula: [Easy ½P / Standard P / Hard P+3 / Deadly P+6 or more]
Actual Threat minus adjusted PC starting Disposition:
PC/opposition adjusted Disposition ratio:
Session Woe:
Vampire introduction Woe, if first campaign appearance:
Other opening Woe and its source:
Extra Woe from retained difficulty label:
Total opening Woe:
Disposition-cutting abilities applied after budget: [source and amount]
Number of actors on each side:
```

Record each Superiority category separately. If one adjusted side reaches 0 at setup, record the no-cost outcome; if both reach 0, record mutual defeat without scripting. Do not reroll to force an encounter. The retained labels are hypotheses, not promises of difficulty.

Rules references: [Core setup](../2d12System/chapter-2.10-conflict-system.typ), [Adversaries budget](../2d12System/chapter-adversaries.typ).

## Volley log

Copy this block for every volley. Record independent actions even when one side reaches 0 during the volley; finish their resolution before determining the outcome.

```markdown
### Exchange [ ] — volley [ ]
Shared Disposition before: PCs [ ] / opposition [ ]
Available actors and continuous rotation:
Committed PC script / actor:
Committed opposition script / actor:
Script changes, cost and timing:
Interaction: [versus / both independent / trumped action]

PC roll: dice [ ] + rating/tags [ ] + bonus dice [ ] = [ ]
Opposition roll or independent Difficulty, including Guard: [ ]
Outcome: [winner, tie, each independent result, exceptional doubles]
Power earned by each side:
Power committed to Attack/Feint Disposition loss:
Other permitted Power purchases and their costs:
Disposition change: PCs [ ] / opposition [ ]
Explicit status or protected payment, if any:
Resistance / NPC reduction applied to each status:
Momentum, Woe, Tychē and pools spent or gained:
Special trigger, cost and pending effect:
Truths / Impede / Gain Position / disabled assets:
Shared Disposition after: PCs [ ] / opposition [ ]
Rules question or ruling made at table:
```

Keep ordinary Disposition loss separate from statuses and pools. Note whether a successful Attack or Feint committed at least 1 Power before applying its once-per-action base loss. For area tests, record the single combined shared-Disposition loss separately from any explicitly granted statuses to individual targets.

Rules reference: [Core actions and effects](../2d12System/chapter-2.10-conflict-system.typ).

## Outcome and debrief

```markdown
### Resolution
Exchanges / volleys played:
Winner, mutual defeat or concession:
Ending shared Disposition: PCs [ ] / opposition [ ]
Any Last Stand final volley or other pending procedure:
Finishing procedure, eligibility and outcome:
Deferred Special applications, in trigger order:
Compromise grade and basis:
Actual compromise costs and Resistance:
Status, Scar, pool and other persistent costs:
Did either side withdraw or change objective?

### Calibration observations
Did the label match the experienced difficulty? Why?
When did victory or defeat become likely?
Did setup variance dominate the result?
Did opening Woe or a Special dominate the result?
Were there meaningful scripting and resource decisions?
Was the encounter too short, too long or about right?
How clear were the rules and adversary Tells?
Was the encounter engaging?

### Follow-up
Rules ambiguity or bug:
Balance observation:
Proposed adjustment to test next time, not yet adopted:
Paired-run comparison:
Retest needed:
```

## Suggested first session

Run a Standard-labelled and a Hard-labelled encounter using the same party, and preserve the old Vale household and Deacon vault fights as historical comparators, not as validated current baselines. Then vary one factor at a time: Threat/Grit, opening Woe, composition or setup conditions.

The audit leaves P, Grit, encounter budgets and fight reruns pending; the old fights used a different Disposition formula and per-member spill-over. Read historical findings with the current implementation tracker, not as current unresolved rulings or mechanics.

References:
- [Audit plan](../design/rules-audit.md)
- [Current implementation tracker](../design/rules-audit-phase1-implementation.md)
- [Historical opposition tests](../design/opposition-statblocks%20and%20conflict%20play%20test%202.md)
- [Playtester primer](../Playtest%20tools.md)
