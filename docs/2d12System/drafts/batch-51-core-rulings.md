# Batch 51: approved core conflict proposals

Date: 2026-11-07. Branch: `draft/conflict-system-rewrite`.

Status: approved decisions implemented in active Core Rules §§2, 5 and 10;
core Quick Reference source reconciliation is complete. Broader reference
reconciliation, compilation, rendered-layout checks and playtesting remain
pending.

This document preserves the answers and proposed rule text approved in the
conversation. It is not an included rulebook source. Source implementation
is recorded below; committing this decision record alone does not amend
the active Typst rules or establish build/playtest validation.

## Implementation record

| Integration | Commit | Scope |
|---|---|---|
| Conflict procedures | `b5b1827d42f6fad7b008d2ef7c222b0c46edf8f1` | Implements free setup Help, exceptional versus doubles, versus-Woe treatment, mixed spending and supplementary permissions/limits in §10. Splits the conflict source before §10.8 and includes the aftermath file once. |
| Core Resolution and Effects | `f9c2ca265b6231843854ca1ef6c95d46c6bb6c4f` | Reconciles §§2 and 5 with the implemented §10 procedure, including setup Help, Difficulty versus opposed outcomes, exceptional doubles and Effects boundaries. |
| Core Quick Reference | `ec778fc22c48789df1245cf828352835c2ec4a37` | Reconciles the summary with Batches 51–52, including free setup Help, versus outcomes, automatic success and supplementary spending. Expanded layout is not yet verified. |
| Compatibility ledger | `ceea15187019ba2d9ed34f9d5effd49e27945b0f` | Records the later source commits and distinguishes superseded historical questions from current pending work; not a new rules implementation. |
| Dated audit and drafts README | `630f5367ab9eb56fa9fe08663a9a25c451299137` | Preserves historical findings, adds follow-up status and documents the current source assembly. This decision-status correction supersedes its README reminder that Batch 51's status still needs updating. |

Active sources: `../chapter-2.2-core-resolution.typ`,
`../chapter-2.5-effects.typ`, `../chapter-2.10-conflict-system.typ` and
`../chapter-2.10-conflict-system-aftermath.typ`. The first conflict file
includes the aftermath file; do not include it twice in the parent book.
The core Quick Reference is `../chapter-7-appendix-a-quick-reference.typ`.

The numbered decisions and proposed replacements below remain the approved
design record, not a claim that every later entry uses identical wording.

## 1. Setup Help: questions 1–5

1. Setup Help is free. Each eligible helper adds +1 starting Disposition
   without paying a pool point.
2. No pool is charged. Each helper must explain a meaningful contribution
   to the objective.
3. Free-Help abilities add no further setup benefit unless expressly
   stated: no second +1 and no ordinary Help bonus die.
4. Helpers commit before the leader rolls; establish eligibility and
   contribution then.
5. There is no setup payment to run a pool dry. A character already unable
   to contribute cannot help. Later unavailability does not remove the
   helper's contribution or recalculate starting Disposition.

### Proposed replacement text

Helping establish starting Disposition costs no pool points. Before the
leader rolls, each helper explains a meaningful contribution and commits
to the side's stakes. Each eligible helper adds +1 Disposition; this does
not also grant an ordinary Help bonus die.

A free-Help ability provides no additional setup bonus unless explicitly
stated. A character unable to contribute cannot help. Later removal of a
helper does not subtract Disposition or recalculate the side's starting
value.

## 2. Exceptional doubles: questions 6–12

6. The higher opposing total determines the winner, including against
   double 12s. Double 12s do not override a higher total.
7. Losing double 12s grant no Power or normal action effect.
8. If both actors roll double 12s, compare totals normally.
9. Equal totals remain a tie, including when only one actor has double 12s.
10. Winning double 12s add +2 Power to the margin-based award, replacing
    rather than stacking with the ordinary +1 doubles critical.
11. Double 1s cause their normal complication, not an automatic loss.
    Successful double 1s receive the ordinary +1 critical Power and also
    cause their mandatory complication.
12. Apply the same procedure to doubles created by an ability, including
    Perfect Strike.

The statement that double 12s always succeed applies to independent
tests, not as an exception to opposing-total resolution.

### Proposed replacement text

In a versus test, determine victory by opposing totals, including when
exceptional doubles occur. Double 12s do not override a higher opposing
total or break an exact tie.

The winner gains 1 Power plus 1 per full 3 points of winning margin.
Ordinary successful doubles add +1 Power. Winning double 12s add +2 Power
instead of that +1.

A losing or tied action gains no Power from doubles. Double 1s always
cause their normal complication but do not automatically lose the test.
Apply this procedure equally to rolled doubles and doubles created by an
explicit ability.

## 3. Woe from versus results: questions 13–17

13. Losing a versus test generates no ordinary-failure Woe. The opponent's
    successful action supplies the immediate consequence.
14. An exact tie generates no ordinary-failure Woe.
15. Apply this symmetrically to player and GM actors.
16. Separately applicable complications and explicit Woe effects still
    resolve, including their usual buy-off or cancellation rules.
17. A trumped action generates no ordinary-failure Woe; it makes no roll
    and produces no effect.

Independent-test failure retains its existing Woe treatment.

| Result | Normal action effect | Ordinary-failure Woe |
|---|---|---|
| Win | Resolve with earned Power | None |
| Lose | No normal effect | None |
| Exact tie | Neither action produces its normal effect | None |
| Trumped action | No roll or effect | None |

### Proposed replacement text

Losing or tying a versus test does not generate ordinary-failure Woe. A
trumped action likewise generates none. Costs already paid remain spent.

Doubles complications, explicit ability costs, scenery Dangers and other
separately triggered Woe rules still apply normally. Losing by 1–3 does
not qualify for Success at a Cost.

## 4. Supplementary Effects: questions 18–27

### 18. Default permission

A successful action may purchase its primary conflict effect and the
supplementary Effects permitted below. Fictional relevance is necessary
but does not unlock a prohibited purchase. Specific abilities can grant
narrower exceptions.

### 19. Permission matrix

| General Effect | Attack | Defend | Feint | Maneuver |
|---|---|---|---|---|
| Weaken | Explicit ability only | Explicit ability only | Explicit ability only | Explicit ability only |
| Create | Explicit ability only | Explicit ability only | Explicit ability only | Allowed |
| Enhance | Unavailable without exception | Allowed | Unavailable without exception | Allowed |
| Restore | Unavailable without exception | Allowed | Unavailable without exception | Explicit ability only |
| Discover | Allowed | Allowed | Allowed | Allowed |
| Advance | Allowed | Unavailable without exception | Unavailable without exception | Allowed |
| Disrupt | Unavailable without exception | Unavailable without exception | Unavailable without exception | Allowed, subject to question 24 |
| Extra Feat | Allowed | Allowed | Allowed | Allowed |

The matrix does not authorize general harmful-status Attack purchases.
Ordinary conflict Attacks and Feints remove Disposition only unless an
explicit rule permits a status.

### 20. Mixed spending and primary effects

No primary-effect purchase is mandatory. An actor may spend all earned
Power on permitted supplementary Effects.

- An Attack or Feint removes no Disposition unless at least 1 Power is
  committed to its Disposition effect. Apply the +1 base loss once, not
  once per purchase.
- Defend restores no Disposition unless Power is committed to recovery or
  a specific ability grants recovery independently.

### 21. Preventing the opposing action

Winning a versus test prevents the opposing action's normal effect even
if all Power is spent on permitted supplementary Effects. Prevention
comes from winning the interaction, not buying loss or recovery.
Independent opposing actions still resolve.

### 22. Discover and Advance

Discover is available with any successful scripted action when the
answer follows from that action. It does not authorize unrelated
questioning or remote investigation.

Advance is available with Attack or Maneuver when the declared action
genuinely progresses a separate, established clock. It must not tick a
second track invented to duplicate Disposition, automatically convert
segments into Disposition loss, or use clock completion to bypass an
opponent's still-disputed conflict objective.

If clock completion would itself settle the conflict, establish that
relationship explicitly before scripting rather than during Power
spending.

### 23. Weaken and Disarm

General Weaken is unavailable during scripted conflicts unless an ability
expressly permits it. Use Maneuver's priced Disarm option to disable a
specific weapon, asset or key tag for the conflict.

Explicit abilities such as Called Shot retain their named Weaken
permission and duration. They do not grant everyone a cheaper Disarm.

### 24. Disrupt

A Maneuver may buy Disrupt for its normal cost to cancel or delay an
established prepared action outside the opposing side's committed
script, or remove 1 point of available GM Woe.

Disrupt cannot generically cancel, replace, reveal or delay a committed
scripted action. Such interference requires an ability or scenery
procedure that expressly permits it. Removing available Woe cannot
reverse a spend already made or cancel an accepted payment.

### 25. Extra Feat

Extra Feat adds one related secondary accomplishment within the same
action's scope. It cannot grant another turn, roll or scripted action;
duplicate the primary Disposition effect; purchase an otherwise
prohibited Effect under another name; cancel an independent opposing
action; or achieve an objective outside the declared stakes.

Purchase it no more than once per action unless an explicit ability
permits more. A free Extra Feat waives its cost, not this limit.

### 26. Specific exceptions

An exception grants only its stated purchase, trigger, cost, frequency
and scope. Cheap Shot permits its named Create purchase as part of an
Attack; it does not make Create available on every Attack or unlock
other supplementary Effects.

### 27. Purchase limits

- Discover: 1 Power per question; repeat purchases allowed.
- Advance: 1 Power per segment; repeat purchases allowed.
- Enhance and Restore: normal tier prices and existing scope, stacking
  and treatment rules.
- Create: normal rank pricing, explicit discounts and minimum cost.
- Disrupt: at most once per Maneuver.
- Extra Feat: at most once per action unless explicitly overridden.
- Impede, Gain Position and Disarm: existing once-each-per-Maneuver limits.

All purchases share the action's earned Power budget. The same Power
cannot fund two Effects.

## Implementation boundaries and remaining work

This package makes substantive decisions, not merely copyedits. Preserve
existing restrictions on declared stakes, protected payments and
independently resolving actions unless an express exception identifies
a change.

These decisions are implemented in active Core Rules §§2, 5 and 10, with
the core Quick Reference reconciled as recorded above. Related historical
ledger findings and the dated audit now have contextual follow-up rather
than deleted history. This does not certify every other summary, setting
reference, ability entry or shared design note as reconciled.

The package alone did not complete named ability replacements. Subsequent
scoped source integrations include Second Wind in
`50b06b39b200c16856299d659c0d4baeb8a6a770`, Deadly Precision in
`ca671c6a1e27c4a433cd9209e13a69658ec527c8`, and Borrowed Might in
`76e59ce5762752b515640d2aabbbbbed7dc3cd26`. Its Perfect Strike decision
supplies the shared doubles procedure, not a claim that every affected
entry has been inspected or every special interaction validated.

Remaining work includes root changelog and Phase 1 implementation-tracker
reconciliation, other current-facing status/shared-guidance updates,
relevant generic/setting reference checks and active-source sweeps.
Deferred decisions and provisional balance flags remain separate from
this implementation record. Compile the books, rebuild PDFs, inspect the
split chapter and expanded tables/Quick Reference, and run playtests
before claiming build or balance validation.

No compilation, PDF rebuild, rendered-layout inspection or playtest is
claimed by this document.
