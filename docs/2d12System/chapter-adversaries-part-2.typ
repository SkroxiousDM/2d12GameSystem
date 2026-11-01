#import "common.typ": *

== 6. Running Adversaries
#columns(2, gutter: 6mm)[
=== 6.1 Setup
+ State intent, stakes and exits for both sides (Core Rules §10.2). State whether death is possible before any roll.
+ Add up Grit across the side to determine its starting shared Disposition. Apply all setup modifiers, including Ambush, then Superiority. If Superiority resolves the conflict at setup, stop; do not script volleys or activate Boss Phases.
+ If the side includes a boss, record its final starting shared Disposition as the #strong[phase reference]. Record Half and Desperate thresholds, rounding down (§7.1). These values remain fixed for this conflict.
+ Set Woe: 2 per PC plus Difficulty extras plus any setting-specific introduction Woe.
+ Write the side's script on index cards. Minion groups share one script.

=== 6.2 Scripting
Each exchange is three volleys. Script three actions in order.
- Every actor, minion groups included, acts once before anyone acts twice.
- Open with the strongest actor's Best action.
- Never script one action three times. Players read patterns.
- Put one Defend or Maneuver in when the side's shared Disposition is under half its starting value.
- Show the Tell on the volley before the Best action.
- If a member is out, any remaining teammate takes its scripted action as long as rotation allows. If none can, it is lost.
- Disarm on an already scripted action cancels it. The GM may pay 3 Woe to change it.

=== 6.3 Action Results
- #strong[Attack.] On a win, remove committed Power + 1 from the opposing side's shared Disposition once. An area Attack adds 1 per additional opposing participant affected (Core Rules §10.16). No status unless a Special says so.
- #strong[Defend.] Each Power restores 1 of your side's shared Disposition, up to the side's starting value. It does not restore a personal Grit track or return a Taken Out participant.
- #strong[Feint.] As Attack, but ignores Defend.
- #strong[Maneuver.] Power buys Impede (1), Gain Position (1), Disarm (3), Create a Truth (2 Power per rank; explicit discounts follow Core Rules §5) or a scenery action.
- #strong[Independent rolls] against an adversary use Standard 15 plus its Guard.
- #strong[Versus rolls] set Power by margin: meet = 1, +1 per full 3.

=== 6.4 Woe Economy
Gain Woe from player-bought dice, failures (+1), Escalation (+1), dangerous scene Truths (+1 per scene) and bought-off complications (+2).

#figure(table(columns: (68%, 32%),
  table.header([Spend], [Cost]),
  [Bonus die on an adversary roll], [1 per die, max +2],
  [Fire a Special], [1--3],
  [Reinforcements], [1 per minion, 3 significant],
  [Interrupt: change an unrevealed scripted action], [3 (2 with a Leader)],
  [Tick a danger clock], [1 per segment],
  [Extra Shrug], [1],
  [Scenery Danger on any scenery action], [1],
))
Spend on the Best action early. Unspent Woe at session end is wasted tension.

=== 6.5 Reinforcements
Reinforcements add their Grit to both the side's current shared Disposition and its starting Disposition. The increased starting value becomes the cap for Defend and other Disposition recovery.

Removing a participant does not, by itself, subtract its Grit from current shared Disposition or lower starting Disposition.

Reinforcements arrive at the time specified by their rule or Special. Their arrival grants no immediate extra action or free script change. They participate under the normal scripting and rotation rules.

For Boss Phases, reinforcements and recovery do not change the recorded phase reference or either threshold, reverse an activated phase or allow it to activate again (§7.1).

Reinforcements cannot reopen a settled conflict outcome. During a Last Stand volley, apply §6.10.

=== 6.6 Minion Bodies
Minion groups have Bodies (3--6) instead of Shrugs. Each successful Attack outside a conflict drops 1 Body. Extra Power spent on Extra Feat drops another. At half Bodies or fewer, ratings drop by 1. At zero, the group is gone. Morale usually ends it sooner.

=== 6.7 When Adversaries Win Or Lose
- #strong[Defeat.] A side at 0 shared Disposition is defeated, not necessarily dead. Capture, flight or death follow the stakes. Last Stand may postpone this defeat for one additional volley (§6.10); it does not restore Disposition or cancel the eventual defeat.
- #strong[No injury trade.] Ordinary adversaries and minion groups cannot use it (Core §10.13). A named rival built as a full PC can.
- #strong[Compromise.] When the PCs win, the Disposition they have left sets the cost: Minor tier 2, Significant tier 3, Major tier 4. When adversaries win, they take compromise statuses too, and may Shrug them.
- #strong[Concession.] Offer one before the next roll (Core §10.11), usually when the side's shared Disposition is at or below one third of its starting value. Humans accept. Beasts flee. Guardians never offer. A Boss falls back to a prepared position and starts a danger clock.

=== 6.8 Outside Conflicts
- #strong[Passive opposition.] Difficulty = 12 + the adversary's relevant rating. A Minor's Defend (Fair +3) gives 15; an Established Steward's Defend (+6) gives 18.
- #strong[Active opposition.] Roll versus: 2d12 + rating.
- #strong[Harm to adversaries.] Attack Power inflicts statuses as normal. Shrugs and Armour cut them down. Tier 6 is Taken Out. Apply any creature-specific exceptions supplied by the setting.

=== 6.9 Other Conflict Types
The same card runs any type in Core §10.4. Swap Attack, Defend, Feint and Maneuver for that type's skills and keep the ratings, Grit and Woe costs. Rename Specials to fit: Hostage becomes a leverage threat in an Argument, Lockdown a sealed network in a Hack.

=== 6.10 Last Stand
Last Stand gives a defeated side one final volley. It does not give an individual an extra action outside the normal volley.

#strong[Activation.] After resolving all actions in a volley, check removal and victory normally. If a side has reached 0 shared Disposition, at least one participant can still pursue its objective, and an active participant has Last Stand available, the GM may spend 2 Woe to activate it.

Activate Last Stand before settling the outcome or compromise. A Taken Out participant cannot activate it. It cannot be used when the side loses because none of its participants can continue, or when both sides are defeated in the same volley.

#strong[One additional volley.] Postpone the side's defeat and resolve exactly one more volley. Both sides act under the normal action interaction, scripting and rotation rules.

Use the next unrevealed action in each side's script. If no scripted action remains, each side secretly scripts one action for this final volley, then reveals it normally. This is not a new exchange: do not refresh exchange-limited abilities or tick clocks merely for scripting this additional action.

Changing an unrevealed action still costs the normal Momentum or Woe. Last Stand itself grants no free script change.

#strong[Defeat remains pending.] The side using Last Stand remains at 0 shared Disposition throughout the final volley. Defend, reinforcement Grit and other Disposition recovery cannot raise its current Disposition during this volley. Reinforcements may still arrive and participate if their timing and the normal scripting rules permit, but they do not cancel the pending defeat.

Resolve explicit statuses, hazards and other effects normally. Last Stand does not restore a Taken Out participant, prevent removal or grant permission to act through an incapacitating condition.

#strong[Phases.] Reaching 0 does not activate Half or Desperate. Previously activated phase benefits remain available to an active boss during the final volley, but no new phase activates while defeat is pending.

#strong[End the conflict.] After the additional volley, the side using Last Stand loses. If the opposing side is also defeated by then, resolve mutual defeat normally. Otherwise settle the winner's intent and compromise using the final state of the conflict.

Last Stand can extend a side's participation only once per conflict. Multiple bearers do not stack, refresh or chain additional Last Stand volleys.

=== 6.11 Fail-safe
Fail-safe is a defeat-triggered Special, not a scripted action. It costs 3 Woe and must already be available.

#strong[Trigger.] Resolve all actions in the volley and check removal, victory and mutual defeat normally. When the Guardian's side loses at 0 shared Disposition, an active Guardian with Fail-safe available may detonate before compromise is settled.

The Guardian must remain an active participant when it activates Fail-safe. Being Taken Out or otherwise removed prevents activation. Reaching 0 shared Disposition does not, by itself, remove it.

#strong[Last Stand.] If Last Stand postpones defeat, defer Fail-safe until the additional volley ends. The Guardian must still be active and have Fail-safe available at that time. Fail-safe grants no further volley and does not restore Disposition.

#strong[Blast.] Establish the blast's reach from the Guardian's position and the fiction. Each PC within that reach adds #emph[burned-3] as an additional compromise injury assigned to that character.

This is an explicit Special effect, not an ordinary Attack. It removes no shared Disposition and grants no additional scripted action.

#strong[Settlement.] Add these injuries before crediting existing injuries and resolving Resistance under Core Rules §10.12. Existing injuries count once, and imposed compromise injuries may be Resisted normally. Do not add a replacement cost because Resistance removes an injury.

#strong[Limits.] Fail-safe does not trigger when Superiority resolves the conflict at setup, when an accepted concession ends it, when the side loses solely because no participant can continue, or on mutual defeat. It does not reopen a settled outcome or turn the Guardian's side's defeat into a victory.

The detonation destroys the Guardian.
#colbreak()
== 7. Bosses and Examples
Build cards with §3 and use the generic procedures above. Settings can supply additional Kind packages, construction exceptions and example cards without changing the shared core procedures.
]

#pagebreak()
=== 7.1 Boss Phases
Boss Phases mark changes in a boss's tactics as its side loses ground. Phase changes cost no Woe. Using a revealed Special or calling reinforcements still costs the listed Woe.

Use this procedure for an adversary designated as a boss. Great and Paramount adversaries normally qualify. A lower-rank adversary does not gain Boss Phases merely because it leads an encounter.

==== Fixed Phase Thresholds
At the end of conflict setup, after all modifiers and Superiority, record the boss side's shared Disposition as its #strong[phase reference]. Record two thresholds:

- #strong[Half:] half the phase reference, rounded down.
- #strong[Desperate:] one third of the phase reference, rounded down.

The phase reference is fixed for this conflict. It is not the boss's personal Grit or a separate Disposition track.

If Superiority resolves the conflict at setup, do not activate Boss Phases.

==== Specials Available by Phase
The number of listed Specials determines how many are available at Opening and how many become available at Half.

Before the conflict begins, choose which Specials are available at Opening. Keep the remaining Specials unavailable until Half activates.

#figure(table(
  columns: (24%, 38%, 38%),
  table.header([Listed Specials], [Available at Opening], [Revealed at Half]),
  [1], [None], [1],
  [2], [1], [Remaining 1],
  [3], [1], [Remaining 2],
  [4], [2], [Remaining 2],
))

A Special cannot be used before it is available. Revealing a Special makes it available; it does not activate it, pay its Woe cost or waive its timing, requirements or limits.

Role traits, Kind traits and general Woe spends that do not count against the boss's Special allowance are available normally. They are not locked behind a phase unless their own rules say otherwise.

Once revealed, a Special remains available for the rest of the conflict, subject to its normal limits. Recovery and reinforcements do not hide it again or refresh an expended use.

==== Checking Phases
Opening begins if the conflict continues after setup.

After each volley, resolve all actions, then check removal, victory and mutual defeat normally. If neither side has been defeated and the boss remains an active participant, activate any untriggered phase whose threshold the side's current shared Disposition is at or below.

Each phase activates once per conflict. If both thresholds are met in the same check, activate Half first, then Desperate.

A phase grants no immediate extra action, reinforcement or free script change. Its benefits apply to subsequent actions, not to actions already resolved.

#figure(table(
  columns: (16%, 28%, 56%),
  table.header([Phase], [Trigger], [Change]),
  [Opening],
  [The conflict continues after setup],
  [The boss begins with its Role trait and its Opening Specials available. Show a clear Tell.],
  [Half],
  [Shared Disposition is at or below the Half threshold],
  [Reveal any remaining Specials. Show a clear change in tactics. The boss may call reinforcements under the normal rules and costs. A Leader's minions benefit from Command only while that Leader remains active; this phase grants no additional +1.],
  [Desperate],
  [Shared Disposition is at or below the Desperate threshold],
  [Defend uses the boss's Weak rating. Its designated Best action gains +2 to its rating. If that action is Defend, use Weak +2. Show a desperate tactic, offer a deal or reveal an exit.],
))

#strong[Designated Best action.] This is the action assigned Best on the boss's card before phase adjustments. Do not choose a new Best action because current ratings are tied or another action has become higher.

At Desperate, replace Defend's rating with Weak first, then apply the +2 if Defend is the designated Best action. Apply other relevant bonuses and penalties normally.

#strong[Half reveals the remainder.] Every boss with one or more listed Specials gains access to its remaining Specials at Half. A boss with only one Special begins with no listed Specials available, but retains its normal actions, Role trait, Kind traits and any general Woe spends.

==== Recovery and Reinforcements
Recovery and reinforcements do not reverse an activated phase, allow it to activate again or change either threshold.

Reinforcements add their Grit to both the side's current shared Disposition and its starting Disposition (§6.5). The increased starting value is the cap for Defend and other Disposition recovery. The recorded phase reference remains unchanged.

Removing a participant does not, by itself, subtract its Grit or lower either Disposition value.

==== Taking Out the Boss or Leader
A Taken Out boss cannot activate a new phase or use phase benefits to act unless another rule explicitly permits it. Previously activated phases remain recorded; they do not restore the boss to participation.

Command's minion-rating bonus and reduced script-change cost end when the Leader is Taken Out or otherwise leaves the conflict. Boss Phases do not reactivate Command.

Last Stand does not activate a new phase at 0 Disposition. An active boss may use previously activated phase benefits during its side's Last Stand volley (§6.10).

==== Continuing the Same Conflict
Record a new phase reference only when a genuinely new conflict begins.

Changing location, conflict type or tactics within the same unresolved struggle does not reset the reference, activated phases or Special availability. Carry them forward alongside shared Disposition and participation.

=== 7.2 Running an Exchange
Script three actions for each side, reveal one volley at a time and follow Core Rules §10.14. Show each adversary's Tell before its designated Best action. Resolve all actions in the volley before checking removal and defeat, then check applicable Boss Phases if the conflict continues.

Removing a participant does not subtract its Grit from shared Disposition. Reinforcements follow §6.5; Last Stand follows §6.10; Fail-safe follows §6.11. Apply the established intent and stakes when settling the outcome.

== 8. Quick Checklist
- Intent, stakes and exits set before any roll.
- Threat budget near P. Mix at least two Roles.
- All setup modifiers and Superiority applied. Ambush counted.
- For a boss, phase reference and both thresholds recorded after setup.
- Opening Specials chosen; remaining Specials marked for Half.
- Three scripted actions per exchange, following rotation.
- One Tell per adversary, shown before its designated Best action.
- Woe tracked and spent each exchange.
- After each volley, removal, victory and mutual defeat checked before new phases.
- Activated phases retained through recovery, reinforcements and changes within the same conflict.
- Command ends when its Leader stops participating.
- Concession offered near one third of the side's starting shared Disposition.
- If Last Stand activates, resolve one additional volley, then settle defeat or mutual defeat.
