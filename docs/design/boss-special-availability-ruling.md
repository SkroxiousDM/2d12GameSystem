# Boss Special availability

Date: 2026-11-07. Branch: `draft/conflict-system-rewrite`.

Status: approved availability ruling recorded in `boss-phases-fixed-thresholds-draft.md`. This commit changes design records only, not active Adversaries source. It does not approve or activate the full phase system or the separate defeat/compromise exception package.

## Ordinary Specials and fixed assignment

Ordinary activated Specials are phase-locked. Record each Special's specific assignment before calculating starting Disposition and keep it fixed for the conflict. Do not reassign after seeing setup, scripts or changing circumstances.

| Number of ordinary Specials | Start | Newly unlocked at Half |
|---|---|---|
| 1 | 1 | 0 |
| 2 | 1 | 1 |
| 3 | 1 | 2 |
| 4 | 2 | 2 |

All table-allocated ordinary Specials are unlocked after Half; Desperate adds no Special unlock. Locked means unusable even when the other trigger conditions are met. A Tell or information effect may reveal a locked Special but does not unlock it.

## Passive and defeat-triggered Specials

Passive Specials operate from Start under their listed conditions.

Defeat-triggered Specials unlock and are revealed at Half, becoming usable from the next volley. If defeat occurs before that availability begins, including the volley that would otherwise qualify for Half, they cannot trigger. Passed triggers cannot be claimed retroactively. The availability rule grants no phase activation after a conflict ends and does not replace the eventual approved phase/victory-check procedure.

The table counts ordinary activated Specials only. Passives and defeat-triggered Specials use their separate schedule. All count toward the normal card Special limit unless an existing rule expressly excludes them. This counting convention is the one stated in the consolidated ruling being committed; it grants no additional card slots.

## Unlocking versus use

Start-assigned Specials are available when the conflict continues beyond setup. Half-unlocked Specials can first be used in the next volley, including within the same exchange; after volley 3, that means the next exchange's first volley. Their own timing and committed action must allow use.

Unlocking/revelation is not activation. Normal trigger, action requirement, Woe payment, target, fictional permission and participation restrictions remain. No extra action, free script change, actor reassignment or automatic permission to act while Taken Out follows.

Half unlocks an owned reinforcement option only. It adds no new Special, automatic arrival, free cost or alternative arrival procedure. Fixed starting-Disposition recovery and compromise references remain unchanged.

## Remaining work

The approved eligibility decision remains in `boss-phase-eligibility-ruling.md`; reinforcement accounting remains in `reinforcements-disposition-cap-ruling.md`. Older notes listing availability as pending are dated records superseded on that point by this decision.

Still decide Desperate rating precedence/benefits, threshold/check details and low reference values, non-Special activation timing, and detailed participation/resumption. Last Stand, Fail-safe and compromise-rider replacements remain separate unapproved proposals; Special availability alone resolves none of their incomplete procedures.

Implement the full phase procedure in active source only after the remaining choices are resolved. Summary, ledger/tracker, shared-guidance and root-changelog follow-up, compilation, PDF rebuild, layout checks and playtesting remain pending. No source implementation or balance validation is claimed here.
