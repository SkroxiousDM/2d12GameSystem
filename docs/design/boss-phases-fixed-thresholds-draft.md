# Boss Phases — Fixed Thresholds

Status: Integrated and amended in the core Typst sources on `boss-phases-fixed-thresholds` (`9c89972`, companion conflict-procedure changes in `c07ea90`). This design document mirrors that branch's integrated rules; it is not evidence of a merged, compiled or playtested release.

Current rules sources:
- `docs/2d12System/chapter-adversaries.typ` §§6.1, 6.5, 6.10 and 7.1.
- `docs/2d12System/chapter-2.10-conflict-system.typ` §§10.10 and 10.14.

The integrated source takes precedence if this design summary diverges.

## 7.1 Boss Phases

Boss Phases mark changes in a boss's tactics as its side loses ground. Phase changes cost no Woe; using a revealed Special or calling reinforcements still costs the listed Woe.

Use this procedure for an adversary designated as a boss. Great and Paramount adversaries normally qualify. A lower-rank adversary does not gain Boss Phases merely because it leads an encounter.

### Fixed phase thresholds

At the end of conflict setup, after all modifiers and Superiority, record the boss side's shared Disposition as its phase reference. Record two thresholds:

- Half: half the phase reference, rounded down.
- Desperate: one third of the phase reference, rounded down.

The phase reference is fixed for this conflict. It is not the boss's personal Grit or a separate Disposition track. If Superiority resolves the conflict at setup, do not activate Boss Phases.

### Specials available by phase

Before the conflict begins, choose which listed Specials are available at Opening. The remaining Specials are unavailable until Half activates.

| Listed Specials | Available at Opening | Revealed at Half |
|---|---:|---:|
| 1 | 0 | 1 |
| 2 | 1 | 1 |
| 3 | 1 | 2 |
| 4 | 2 | 2 |

A Special cannot be used before it is available. Revealing it does not activate it, pay its Woe cost or waive its timing, requirements or use limits.

Role traits, Kind traits and general Woe spends outside the Special allowance are available normally unless their own rules say otherwise.

Once revealed, a Special remains available for the rest of the conflict, subject to its normal limits. Recovery and reinforcements do not hide it again or refresh an expended use.

### Checking phases

Opening begins if the conflict continues after setup. Resolve the volley's actions, then check removal, victory and mutual defeat normally. If neither side has been defeated and the boss remains an active participant, activate any untriggered phase whose threshold the side's current shared Disposition is at or below.

Each phase activates once per conflict. If both thresholds are met in the same check, activate Half first, then Desperate. A phase grants no immediate extra action, reinforcement or free script change. Its benefits apply to subsequent actions, not actions already resolved.

| Phase | Trigger | Change |
|---|---|---|
| Opening | The conflict continues after setup | The boss begins with its Role trait and its Opening Specials available according to the reveal schedule. Show a clear Tell. |
| Half | Shared Disposition is at or below the Half threshold | Reveal all remaining Specials. Show a clear change in tactics. The boss may call reinforcements under the normal rules and costs. A Leader's minions benefit from Command only while that Leader remains active; this phase grants no additional +1. |
| Desperate | Shared Disposition is at or below the Desperate threshold | Defend uses the boss's Weak rating. Its designated Best action gains +2 to its rating; if that action is Defend, use Weak +2. Show a desperate tactic, offer a deal or reveal an exit. |

The designated Best action is the action assigned Best on the boss's card before phase adjustments. Do not choose a new Best action because ratings are tied or another action has become higher. At Desperate, replace Defend with Weak first, then add +2 if Defend is the designated Best action. Apply other relevant modifiers normally.

Every boss with listed Specials reveals the remainder at Half. A boss with one Special starts with none available, but retains its normal actions, Role trait, Kind traits and general Woe spends.

### Recovery and reinforcements

Recovery and reinforcements do not reverse an activated phase, allow it to activate again or change either phase threshold.

Reinforcements add their Grit to both the side's current shared Disposition and its starting Disposition. The increased starting value is the cap for Defend and other Disposition recovery, but the recorded phase reference remains unchanged. Removing a participant does not, by itself, subtract its Grit or lower either value.

Reinforcements follow their listed arrival timing and normal scripting and rotation rules. They grant no immediate extra action or free script change, and cannot reopen a settled conflict outcome. During Last Stand, follow Adversaries §6.10.

### Taking out the boss or Leader

A Taken Out boss cannot activate a new phase or use phase benefits to act unless another rule explicitly permits it. Previously activated phases remain recorded; they do not restore the boss to participation.

Command's minion-rating bonus and reduced script-change cost end when the Leader is Taken Out or otherwise leaves the conflict. Boss Phases do not reactivate Command.

Last Stand does not activate a new phase at 0 Disposition. An active boss can use previously activated phase benefits during its side's final volley. Follow the full activation, scripting, recovery restrictions and defeat procedure in Adversaries §6.10 and Core Rules §§10.10 and 10.14.

Record a new phase reference only when a genuinely new conflict begins. Changing location, conflict type or tactics within the same unresolved struggle does not reset the reference, activated phases or Special availability.

## Remaining verification

- Fail-safe timing remains open.
- Quick Reference reconciliation and the broader active-source sweep remain pending.
- No current-branch Typst compilation, PDF rebuild, layout verification or playtest validation is claimed.
- Numerical recalibration and fight reruns remain deferred.
