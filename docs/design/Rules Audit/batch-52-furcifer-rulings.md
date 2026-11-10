# Batch 52: approved Furcifer proposals

Date: 2026-11-07. Branch: `draft/conflict-system-rewrite`.

Status: approved decision package, implemented in active Furcifer source on this review branch; broader summaries, root changelog and validation remain pending.
This document records the 37 proposed answers and replacement entries
approved in the conversation. It is not an included rulebook source.
The source implementation is in `../chapter-5.4-furcifer.typ`, not this
Markdown file. Neither this record nor the source integration establishes
successful compilation, rendered layout or playtest validation.

The batch 51 decision package in `batch-51-core-rulings.md` guides this
implementation. Its shared procedures are now integrated in Core Rules
§§2, 5 and 10 by `b5b1827d42f6fad7b008d2ef7c222b0c46edf8f1` and
`f9c2ca265b6231843854ca1ef6c95d46c6bb6c4f`; summary/status reconciliation
remains separate work.

## 1. Shared eligibility: questions 1–6

1. Retain both alternative triggers: an unaware target or a target
   qualifying through Impede.
2. Unaware means unaware of your presence. Concealing hostile intent or
   disguising the particular tactic does not qualify by itself.
3. An opponent can be unaware of you while fighting your side, such as
   while engaged with visible allies when you remain hidden. Conflict
   participation does not automatically reveal every participant.
4. Use the specific participant whose next scripted action would receive
   pending Impede, not everyone on that side. An ongoing harmful status
   does not substitute for Impede under these abilities.
5. Identify that participant when the volley's actions and assigned actors
   are revealed. Scripting may anticipate an opening but these abilities
   grant no certainty or inspection of the opposing script.
6. The opening must materially assist the declared action. Unawareness or
   Impede does not qualify unrelated rolls merely because it exists.

## 2. Timing and consumption: questions 7–12

7. Check once after revealing the volley and describing approaches, before
   either action rolls or resolves. Outside scripted conflicts, check
   immediately before the roll or automatic resolution.
8. For independent actions, pending Impede qualifies the designated
   opposing actor at that check. Its application and expiry during their
   roll do not retroactively remove eligibility for the same volley.
9. A trumped opposing action does not qualify through Impede; Impede
   expires unused normally. Unawareness can still qualify your action.
10. Neither ability consumes or extends Impede. It applies and expires
    normally.
11. An unaware-target action reveals you if its execution exposes your
    presence. Resolve this after the action from the fiction. There is no
    guarantee of remaining hidden, but an indirect or concealed action
    need not reveal you without a fictional reason.
12. Meeting both triggers qualifies once, not twice.

## 3. Opportunist: questions 13–18

13. Apply to any otherwise permitted action directed against a qualifying
    opponent, not only Attack, provided the opening materially helps it.
14. Name an individual opponent and direct the approach against them.
    Shared Disposition can be affected normally, but an unrelated member
    of the opposing side cannot supply eligibility.
15. Include ordinary and independent successes, independent Success at a
    Cost, a winning versus test and an otherwise permitted automatic
    success with listed Power. Losing, tied and trumped actions gain
    nothing.
16. Gain +1 Power once per resolved action, not per target or trigger.
17. Spend the additional Power on any Effect otherwise permitted for that
    action and supported by the qualifying approach. It unlocks no
    otherwise unavailable purchase.
18. Apply outside scripted conflicts as well. Unawareness remains
    available; Impede qualifies only where the conflict Impede procedure
    actually exists.

## 4. Deadly Precision status discount: questions 19–23

19. Retain the harmful-status discount outside conflicts and when an
    explicit conflict rule permits an Attack to inflict a harmful status.
20. A harmful status of purchased tier T costs ceil(T / 2) Power.

| Purchased incoming status tier | Power cost |
|---|---|
| 1–2 | 1 |
| 3–4 | 2 |
| 5–6 | 3 |

These are incoming purchased tiers before applicable reduction and
stacking, not guaranteed final recorded tiers.

21. Restrict the discount to a harmful status inflicted by an Attack. It
    does not discount hazards, backlash, accepted payments or unrelated
    status-inflicting procedures.
22. Change only the Power price. Success, permission, scope, lethal stakes,
    Resistance, armour, stacking and creature-specific limits still apply.
23. Discount one harmful-status purchase against one qualifying target per
    action. Other purchases use normal prices; the discount does not
    automatically extend to every target of an area effect.

## 5. Deadly Precision Disposition benefit: questions 24–29

24. Grant a separate benefit to ordinary conflict Attack Disposition loss.
25. Remove +1 additional Disposition. Do not double committed Power or
    halve Disposition prices.
26. Require at least 1 Power committed to ordinary Attack Disposition loss.
27. Apply the additional loss once to the opposing side per action,
    regardless of qualifying-opponent count.
28. Keep this benefit Attack-only; exclude Feint.
29. Allow any conflict type when an eligible opponent and fitting
    precision-based approach exist, not only Fight or bodily violence.
    A targeted revelation in an Argument could qualify if the opening
    materially assists it. This advances only the declared objective and
    does not automatically inflict a harmful status.

## 6. Components and stacking: questions 30–34

30. If an explicit action inflicts both Disposition loss and a harmful
    status, choose one Deadly Precision component: +1 ordinary Attack
    Disposition loss, or one discounted harmful-status purchase. Never
    apply both benefits from Deadly Precision to the same action.
31. Opportunist and Deadly Precision can benefit the same eligible action.
32. Opportunist's +1 Power can pay Deadly Precision's discounted status
    price. This interaction is intentional.
33. Distinct flat offensive bonuses stack when each meets its requirements;
    each applies only to its permitted component. Alternative status
    prices do not combine into another discount: calculate separately
    and use the lowest. Deadly Precision grants no general discount to
    other Power spending or Effects.
34. For an area effect, identify qualifying individual opponents.
    Opportunist grants at most +1 Power for the action. Deadly Precision
    grants at most +1 shared-Disposition loss or discounts one status
    purchase against one qualifying target. If one purchase applies a
    status across several targets under an area rule, use normal pricing
    for that shared purchase; the single-target discount cannot lower
    the whole area's price. Apply the area procedure's own Disposition
    adjustment separately.

## 7. Finishing procedures and exceptions: questions 35–37

35. Neither ability improves staking, killing strikes or another
    creature-specific finishing procedure unless that procedure expressly
    permits the ability.
36. A helpless or defeated creature can be unaware of you, but eligibility
    does not authorize an otherwise unavailable Attack or bypass a
    required finishing procedure.
37. Neither ability grants an extra action, rescues a trumped action,
    unlocks an otherwise unavailable harmful-status purchase, expands
    declared stakes or overrides independently resolving actions.

## Proposed replacement entries

### Shared opening: unaware or Impeded

For Opportunist and Deadly Precision, choose an individual opponent
against whom your declared approach materially benefits from an opening.
They qualify if they are unaware of your presence, or if they are the
participant whose action will receive pending Impede in the current
volley.

Check after revealing actions and describing approaches, before either
action rolls or resolves. A trumped opposing action does not qualify
through Impede. For independent actions, eligibility established at this
check lasts through the volley's resolution even when Impede expires
during the opposing roll.

These abilities do not consume or extend Impede. Meeting both triggers
qualifies only once. Outside scripted conflicts, check unawareness
immediately before the roll or automatic resolution. Resolve whether your
action reveals your presence from what actually happens.

### Opportunist

When your action against an opponent meets the shared opening
requirements, gain +1 Power on a success, once per action. This includes
independent Success at a Cost and an otherwise permitted automatic
success with listed Power, but not a losing, tied or trumped action.

Spend the additional Power only on Effects otherwise permitted for that
action and supported by the qualifying approach. Multiple targets or
openings do not multiply the bonus.

### Deadly Precision

When your Attack against an opponent meets the shared opening
requirements, choose one benefit:

- If you commit at least 1 Power to ordinary conflict Attack Disposition
  loss, remove 1 additional opposing Disposition, once per action.
- If the Attack is permitted to inflict a harmful status, one status
  purchase against that qualifying target costs half its purchased tier
  in Power, rounded up.

Choose only one component if an explicit action permits both Disposition
loss and a status. The status discount applies to one target, not a
shared area-status purchase. It changes price only; normal permission,
reduction, stacking and stakes still apply. Alternative status prices do
not combine; use the lowest applicable price.

This benefit does not apply to Feint.

### Shared limits

Opportunist and Deadly Precision may benefit the same action. Neither
grants an additional action, permits a trumped action to resolve, unlocks
a harmful-status purchase or expands declared stakes. Neither improves
staking, killing strikes or another creature-specific finishing procedure
unless that procedure expressly permits it.

## Balance and implementation boundaries

The new +1 Disposition benefit is a substantive design change, not a
mechanical translation of the old status discount. Combined with
Opportunist, an eligible Attack can gain both +1 spendable Power and +1
Disposition loss. This combination is intentional but unplaytested. The
participant-specific Impede trigger, material relevance and once-per-action
limits constrain its availability.

The shared opening, replacement entries and shared limits are integrated
in active Furcifer source. Outside-conflict timing explicitly includes
automatic resolution to express question 15's approved no-roll permission.
The scoped implementation status is in `batch-52-implementation-status.md`.
Historical inspection findings remain historical; broader summary, audit
and root changelog reconciliation remain pending. Batch 51's shared
procedures are implemented in active Core Rules §§2, 5 and 10, not
certified as fully reconciled throughout every summary or validated by
playtesting.

No compilation, PDF rebuild, rendered-layout inspection or playtest is
claimed by this document.
