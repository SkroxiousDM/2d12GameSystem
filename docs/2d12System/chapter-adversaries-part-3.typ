#import "common.typ": *



== 7 Boss Phases
#columns(2, gutter: 6mm)[ 
#strong[Approved procedure; balance unvalidated.] Boss Phases change a designated adversary's available options and ratings as its side loses ground. They use shared Disposition, never a personal Grit track. Phase activation costs no Woe; using a Special or calling reinforcements still requires its listed cost and procedure.

=== 7.1 Eligibility and Fixed Designation
When preparing an adversary, the GM may mark a Great or Paramount adversary as a #strong[Phased Boss]. Rank and the Leader role do not grant phases automatically. Before calculating starting Disposition, designate at most one eligible phased boss per side and record the designation on its card or conflict record. A side may have none. Do not add, transfer or replace a designation after setup, including through reinforcement arrival or removal.

Minion groups, Minor and Established adversaries require an explicit eligibility exception. A full-PC rival requires an explicit phase-capable entry; fictional importance alone does not qualify it. Other adversaries retain their own ratings, Role traits and Specials but gain no phase benefit unless expressly included. Do not split a coordinated side merely to obtain more phase systems; separate sides need genuinely distinct objectives and independent participation.

Designation alone adds no Grit, starting Disposition, Threat, Woe, turn, script change, reinforcement or unlisted Special, and grants no immunity to defeat or finishing procedures. Encounter cost and phase bonuses still require playtesting.

=== 7.2 Setup and Fixed Thresholds
If setup ends in overwhelming preparation or simultaneous setup defeat, activate no phases. Otherwise record the boss side's adjusted starting Disposition after all modifiers and Superiority as the #strong[phase reference]. Record Half as half that value rounded down, and Desperate as one third rounded down. There is no minimum threshold.

The reference and thresholds stay fixed for this conflict. Recovery, reinforcements, removal and lawful return do not recalculate them. Changing location, tactics or conflict type in the same unresolved struggle does not reset them.

A reference of 1 gives thresholds 0 and 0; a reference of 2 gives 1 and 0; a reference of 3 gives 1 and 1. A threshold at 0 normally cannot activate before defeat. If both thresholds are met at one eligible check, record Half first, then Desperate, with no intervening action window. Phase designation does not guarantee that every phase occurs.

=== 7.3 Special Ownership, Availability and Revelation
Owned means listed on the card. Available means its phase and other prerequisites permit use. Revealed means the players have learned about it. A Tell, observation or information effect can reveal a locked Special without unlocking it.

The following restrictions apply to the designated phased boss, not automatically to every adversary on its side or to ordinary non-phased adversaries.

Ordinary activated Specials are #strong[phase-locked]. Record each one's Start or Half assignment before calculating starting Disposition; assignments stay fixed, regardless of setup results, scripts or changing circumstances.

#figure(table(columns: (40%, 30%, 30%),
  table.header([Ordinary Specials], [Start], [New at Half]),
  [1], [1], [0],
  [2], [1], [1],
  [3], [1], [2],
  [4], [2], [2],
))

The table counts ordinary activated Specials only. Passive and defeat-triggered Specials use the separate schedule below. All count toward the card's normal Special limit unless an existing rule expressly excludes them; phase eligibility adds no slots. All table-allocated ordinary Specials are unlocked after Half. Desperate grants no additional Special unlock.

- #strong[Start:] Start-assigned ordinary Specials are available when the conflict proceeds beyond setup. Passive Specials operate from Start under their own listed conditions.
- #strong[Half:] Half-assigned ordinary Specials unlock; defeat-triggered Specials unlock and are revealed. They become usable from the next volley, including a later volley in the same exchange. After volley 3, that means the next exchange's first volley.
- #strong[Missed defeat triggers:] a defeat-triggered Special cannot trigger before it is unlocked and usable, including on a defeat during the volley that would otherwise qualify for Half. Do not unlock after the conflict ends or claim a passed trigger retroactively.

Unlocking or revelation is not activation. Normal trigger, action requirement, declaration timing, Woe cost, targets, fictional permission and participation restrictions remain. The committed action must still permit use. There is no extra turn, free script change, actor reassignment or automatic permission to act while Taken Out.

Half unlocks an #strong[owned] reinforcement option only; it grants no new Special, automatic arrival, free cost or alternative arrival procedure. Apply §6.5 for Disposition accounting. Availability does not activate a Special or bypass its procedure: Last Stand uses §6.10, Fail-safe uses §6.11, and deferred Specials use §6.12 when their entries explicitly refer to it.

=== 7.4 Phase Checks and Benefit Timing
Complete the volley's actions, including independent actions and any expressly permitted effects that must resolve before victory. Then determine removal, victory or mutual defeat. Only if the conflict continues and the designated boss remains able to participate, compare current shared Disposition with each unactivated threshold. Activate every eligible phase whose threshold is met.

Use the #strong[final total] at that check, not the lowest total reached during the volley. Crossing a threshold and recovering above it before the check grants no activation or pending entitlement. Once activated, a phase does not reverse or activate again through recovery or reinforcements.

Record activation at the check. Newly activated rating changes and other phase benefits apply from the #strong[next volley], never retroactively. They may modify an already committed action's later roll but do not change its category or assigned actor. If both phases activate together, their benefits begin together next volley.

#figure(table(columns: (22%, 78%),
  table.header([Phase], [Benefit]),
  [Opening], [Role trait, passive Specials and Start-assigned ordinary Specials operate under their own conditions. Show a clear Tell.],
  [Half], [Unlock the assigned ordinary and defeat-triggered Specials under the schedule above. Owned reinforcement options retain normal costs and timing. Grant no duplicate Command bonus.],
  [Desperate], [The recorded available non-Defend category gains +2 to its rating. Defend uses the card's Weak rating as its base. Show a desperate tactic, offer a deal or reveal an exit; no extra negotiated benefit follows automatically.],
))

=== 7.5 Desperate Rating Precedence
// PLAYTEST: Fixed available non-Defend category.
Before setup, record one available Attack, Feint or Maneuver category for Desperate. Add +2 there while active; keep the choice fixed. Without an available non-Defend category, grant no bonus without an explicit exception. Replace Defend's base with Weak, then apply eligible modifiers; never add Desperate's +2 to Defend. A Marshal recording Attack uses Attack +7, Defend +3, Feint +3 and Maneuver +5 before other modifiers.

At an eligible exchange boundary, check phases before reinforcement arrivals (§6.16). Arrival creates no additional phase check and does not reverse an activated phase.

The +2 stays attached to the recorded category. A later ability changing ratings does not move it unless it expressly changes the phase designation. These changes affect the designated boss only and grant no additional Power, automatic success, harmful-status permission or action.

=== 7.6 Participation, Suspension and Lawful Return
Check phases only while the designated boss remains able to participate. When it becomes unable to participate, keep its designation, reference, thresholds, phase markers and unlock history. Activate no new phase during its absence and transfer none of its designation to another adversary.

Phase-derived rating benefits are suspended while it cannot participate. Unlocks are not erased but grant no permission to act, activate a Special or return while Taken Out. If another rule legally returns it to the same unresolved conflict, previously activated phase benefits resume from the next volley. Do not reset setup, rotation, used abilities or phase triggers.

At the next normal end-of-volley check for which the boss is eligible, test unactivated thresholds against the current total. Do not reconstruct threshold crossings during its absence. A return after the conflict ends cannot reopen it or activate a phase retroactively.

Command applies only while its Leader remains able to participate; phases neither restore nor duplicate it. Passive Specials follow their own conditions: Start availability does not make them dependent on a Half/Desperate rating benefit or override their participation restrictions. A Special expressly allowed to trigger while its owner is unavailable uses that permission only if already unlocked and usable; any Last Stand or Fail-safe use must still meet §§6.10--6.11.

=== 7.7 Recovery and Outcome References
Starting Disposition remains the normal recovery cap and compromise reference; reinforcements increase current Disposition only (§6.5; Core Rules §10.9, §10.13). No phase refreshes either value or creates a new conflict. Apply §§6.10--6.12 for defeat-triggered Specials and deferred injuries; phase availability grants no further exception. Numerical calibration, rendered layout and encounter balance remain unvalidated.

=== 7.8 Example Exchange
Party of three. Opposition: Bounty Veteran (5), Knife in the Dark (3) and a Hound Pack (3), Threat 11. This matches the legacy P = 11 budget for three PCs, not a guaranteed Standard matchup under current setup. In this example the PCs have noticed the Knife, so Ambush does not apply; there are no other setup modifiers or Superiority. The opposition records starting shared Disposition 11. Its Woe pool is 6.

Before any reveal, the party commits Attack, Defend, Defend, assigned to three eligible PCs in rotation. The opposition commits Pack Maneuver, Knife Feint, Veteran Attack in that order.

- Volley 1: Attack versus Maneuver is versus. The Pack spends 1 Woe on a bonus die and wins by 4, generating 2 Power. It buys Impede (1) and Gain Position (1). Hit and Run also removes 1 shared PC Disposition. Impede applies to the party's next scripted action, not necessarily the PC who just acted. Telegraph the Knife's next action with the guttering lamp.
- Volley 2: the Knife's Feint resolves independently; the party's Defend is trumped and makes no roll. The pending Impede expires unused on that no-roll action. Gain Position supplies the Knife one bonus die, within the normal cap. Its successful Feint removes committed Power + 1 shared Disposition, without an automatic wound. Telegraph the Veteran thumbing back both hammers.
- Before volley 3 is revealed, the players may spend 2 Momentum to change their unrevealed action while retaining its assigned actor. The GM may likewise pay 3 Woe to change the opposition's unrevealed action, not react to a revealed result. If neither changes, the Veteran's Attack opposes the final PC's Defend. On the Veteran's first successful Attack this exchange, Heavy Hitter grants +1 Power.
- If a status or explicit effect Takes Out the Pack, remove it from participation without subtracting its 3 Grit from shared Disposition; ordinary loss does not individually remove it. Complete any independently resolving actions before checking victory. A concession near one third of starting Disposition is optional tactical advice, not an automatic defeat trigger.

== 8. Quick Checklist
- Intent, stakes and exits set before any roll.
- Budget calibration flagged; mix at least two Roles.
- Flat setup modifiers counted before Superiority; both adjusted totals checked for setup defeat; original starts recorded.
- Any phased boss and fixed Special assignments recorded before setup; fixed thresholds recorded before scripting and available non-Defend Desperate category recorded before setup.
- Three actions and eligible actors committed before reveal; continuous rotation tracked.
- One Tell per adversary, shown before its Best action.
- Woe tracked; costs paid without overrun.
- Ordinary Disposition loss kept separate from statuses, pools and Bodies.
- Independent actions finished before victory; only continuing conflicts with an eligible boss check phases; benefits begin next volley.
- Last Stand: eligible unlocked bearer, 2 Woe, one final volley per side per conflict; pending defeat cannot be recovered.
- Final outcome, eligible Fail-safe activation, finishing procedure, deferred applications, then injury credit and settlement.
- Fail-safe: active eligible Guardian, 3 Woe, established PC blast reach; no mutual-defeat or concession trigger.
- Deferred Specials: one recorded application per named Special per target per conflict across all sources; each record resolved individually after every outcome; imposed injuries remain Resistable.
- Finishing procedures before compromise; reinforcement Grit changes current Disposition, not original start or recovery cap.
- Concessions negotiated before the next roll; compromise settled as one package.
]
