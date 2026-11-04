## 10. Boss phases, Command and Last Stand

Recorded from the designer's subsequent rulings and implemented on `boss-phases-fixed-thresholds`.

- Use the boss side's final starting shared Disposition after all setup modifiers and Superiority as a fixed phase reference.
- Half is half that reference, rounded down. Desperate is one third, rounded down.
- Resolve the volley's actions and check removal, victory and mutual defeat before activating phases. A defeated side does not activate a new phase.
- Each phase activates once per conflict. If both thresholds are reached in the same check, activate Half before Desperate.
- Listed Specials follow this Opening/Half schedule:

  | Listed Specials | Available at Opening | Revealed at Half |
  |---|---:|---:|
  | 1 | 0 | 1 |
  | 2 | 1 | 1 |
  | 3 | 1 | 2 |
  | 4 | 2 | 2 |

- Revealing a Special makes it available, not free. Its costs, requirements, timing and use limits remain.
- Role traits, Kind traits and general Woe spends outside the Special allowance remain available normally.
- At Desperate, Defend uses Weak. The designated Best action gains +2; if that action is Defend, use Weak +2.
- Command applies only while its Leader remains an active participant. Half grants no additional Command bonus.
- Reinforcements increase both current and starting shared Disposition by their Grit. The increased starting value is the recovery cap; the phase reference and thresholds do not change.
- Recovery and reinforcements do not reverse phases, refresh them or hide revealed Specials.
- Last Stand costs 2 Woe and postpones defeat at 0 shared Disposition for exactly one additional volley. Both sides participate under the normal scripting and rotation rules.
- Last Stand can extend a side only once per conflict; multiple bearers do not stack or chain it. It does not restore Disposition, waive incapacitation or activate new phases. Resolve defeat or mutual defeat after the additional volley.
- **Source-summary status:** scoped Quick Reference coverage of boss phases, Last Stand and Fail-safe is implemented in `a89ec97`. Broader reference checks, compilation, PDF rebuilding, layout verification and playtesting remain outstanding. Fail-safe timing and source implementation are recorded in §11.

## 11. Fail-safe final-defeat timing

Status: timing model approved by the designer and implemented in `954b71e` on `boss-phases-fixed-thresholds`. The Guardian Special row and Adversaries §6.11 are updated. The source commit diff was checked: only that row and the new procedure changed. Scoped Quick Reference coverage was subsequently added in `a89ec97`. These completions do not establish exhaustive reference clearance, compilation, layout or playtest verification.

- Fail-safe remains a defeat-triggered compromise effect, not an extra action or another Last Stand. It costs 3 Woe and must already be revealed and available.
- After all actions in the volley resolve, check removal, victory and mutual defeat. An active Guardian may activate Fail-safe when its side's defeat at 0 shared Disposition becomes final, before compromise is settled.
- A Taken Out Guardian or one otherwise removed from participation cannot activate it. Reaching 0 shared Disposition does not itself remove the Guardian.
- If Last Stand postpones defeat, defer Fail-safe until the additional volley ends. The Guardian must still be active and have Fail-safe available then.
- Establish the blast's reach from the Guardian's position and the fiction. Each PC within reach receives burned-3 as an additional compromise injury assigned to that character. Preserve the existing PC-only targeting; no broader NPC or bystander effect is selected here.
- Add these injuries before crediting existing injuries and resolving Resistance under Core Rules §10.12. Existing injuries count once, and imposed compromise injuries may be Resisted normally. Do not add a replacement cost because Resistance removes an injury.
- Fail-safe removes no shared Disposition, restores none, grants no action or additional volley, and does not reopen a settled conflict outcome or turn the Guardian's side's defeat into a victory.
- It does not trigger on a setup win from Superiority, an accepted concession, mutual defeat, or defeat solely because no participant can continue.
- The detonation destroys the Guardian.
- **Remaining closeout:** changelog and boss-phase design-summary reconciliation, broader reference checks, compilation, PDF rebuilding, layout and playtesting. Scoped Quick Reference source coverage is complete; its rendered layout remains unverified. Updating this decision record and the implementation tracker does not complete those tasks.

