// Standalone companion draft; not included in the core rulebook.
// Proposed repository path: docs/2d12System/drafts/module-stakes-and-checks.typ
#set document(title: "Stakes and Checks — Optional Module Draft", author: "SkroxiousDM")
#set page(paper: "a4", margin: 20mm, numbering: "1")
#set text(font: "Libertinus Serif", size: 10.5pt)
#set par(justify: true, leading: 0.65em)
#set heading(numbering: "1.")

#align(center)[
  #text(size: 23pt, weight: "bold")[Stakes and Checks]
  #v(4pt)
  The 2d12 System · Optional Module \
  #text(style: "italic")[Draft for playtesting · Not part of the core rules]
]
#v(12pt)

This module makes the outcomes of independent, opposed, and extended checks clear before rolling. It preserves ordinary 2d12 resolution, Power generation, Effect prices, Momentum, Woe, and applicable Resistance rules. It is a companion to _Stakes and Compromise_, which addresses scripted conflict setup and settlement.

Design basis: _Stakes_ by Levi Kornelsen, whose text is dedicated to the public domain. This adaptation borrows automatic outcomes, dangers, opportunities, and compatible outcome design. It does not import hit spending, automatic combat damage, or the rule that every unprevented danger occurs.

= Scope and Precedence

Use this module outside scripted conflicts. An independent check is a roll against a Difficulty. An opposed check compares two actors' totals. An extended check is a sequence of meaningful attempts contributing to an established progress clock; each attempt may be independent or opposed.

This draft applies the core versus-test comparison to ordinary opposed checks. This is an explicit application of that procedure outside scripted volleys, not permission to import scripted action interactions, Disposition, or compromise into single checks.

A specific activity, ability, hazard, or optional module governs its own costs, cadence, permissions, and consequences. This module does not replace Inquiry clue procedures, downtime endeavours, Grind cadence, or other specific rules. Do not layer two procedures for the same event.

= Frame the Check

Before rolling, establish:

+ Intent: What the actor is trying to accomplish.
+ Resolution: The skill and Difficulty, or the opposing actor and relevant skills.
+ Success: What a successful check establishes, including any required Effect purchase.
+ Automatic outcomes: Unavoidable time, expenditure, exposure, or other established events.
+ Dangers: One or two relevant possible adverse outcomes, each with a trigger.
+ Opportunities: One or two useful improvements, each mapped to an existing Effect and price.

Keep the frame brief. Do not invent extra dangers or opportunities merely to fill the categories. Resolve trivial or unopposed certainties without rolling.

#block(inset: 9pt, fill: luma(94%))[
  Intent: … \
  Roll: … \
  Success: … \
  Automatic: … \
  Danger — trigger and consequence: … \
  Opportunity — Effect and cost: …
]

== Preserve Success and Existing Prices

State what success means before rolling. An ordinary task that succeeds under the core rules does not acquire an additional Power tax merely because its outcome is written in this frame.

However, naming an Effect as the intent does not make that Effect free. Progress clocks still require Advance, statuses retain their tier costs, and Truths retain Create pricing. Where a procedure represents the primary outcome through a priced Effect, pay that price from the normal Power budget. Do not award the same outcome once as free success and again through an Effect.

A successful attempt to repair a clock-based project means the work is effective; its recorded progress is the number of Advance segments purchased. A successful attempt to open an ordinary lock need not become a project clock or acquire a new success purchase.

= Automatic Outcomes

An automatic outcome follows from making the attempt, rather than from success or failure. Examples include the declared time interval passing, consuming an essential ingredient, or becoming visible by stepping onto an open platform.

State its timing and amount before commitment. Distinguish a cost paid to attempt the action from an event occurring after it. If a required cost cannot be paid, the action is unavailable unless an explicit rule provides an alternative.

Do not label a preventable accident automatic merely to bypass a successful roll. Do not use automatic outcomes to grant free Power, free clock segments, priced Effects, or an additional attack. Any such benefit requires an existing explicit rule.

A declared automatic cost is not charged again as a failure consequence. Existing protected payments retain their protections; this module grants no new immunity or prevention exception.

= Dangers Need Triggers

A danger is a possible consequence, not a penalty already owed. Record both what may happen and what authorises it.

#table(
  columns: (28%, 72%), inset: 6pt,
  table.header([Trigger], [How to use the danger]),
  [Ordinary failure], [A fitting candidate for the GM's normal failure move on an independent check. Failure also grants its normal 1 Woe.],
  [Success at a Cost], [A fitting immediate consequence if the player chooses a consequence rather than granting 1 Woe.],
  [Doubles or Risky roll], [A fitting complication when the applicable dice rule triggers one. Use normal cancellation rules.],
  [Explicit Woe spend], [An outcome permitted by the actual Woe option, at its normal price and timing.],
  [Hazard or special rule], [Resolve only when the named rule triggers, using its listed effect and limits.],
)

Choosing a consequence for Success at a Cost does not also grant the alternative 1 Woe. An independent failure's normal GM move does not require a separate Woe payment; an additional purchased event does.

Listing several dangers does not make all of them occur. Use a proportionate consequence for each actual trigger. Multiple genuinely separate triggers can produce separate consequences, but do not count the same event twice or combine incompatible results.

A clean success does not trigger ordinary-failure dangers. It may still carry declared automatic costs, a triggered dice complication, or a separately authorised event. Power cannot generically cancel a triggered danger. Use Resistance, the normal dice-complication buyoff, or another explicit prevention rule when applicable.

= Opportunities Use Existing Effects

An opportunity identifies a useful improvement that follows from the described action. It is not an additional success currency.

#table(
  columns: (39%, 26%, 35%), inset: 6pt,
  table.header([Opportunity], [Effect], [Normal price]),
  [Learn an additional useful detail], [Discover], [1 Power per question],
  [Make recorded project progress], [Advance], [1 Power per segment],
  [Establish a relevant Truth], [Create], [2 Power per rank],
  [Give an ally a helpful status], [Enhance], [1 Power per tier],
  [Treat an existing harmful status], [Restore], [1 Power per tier; treatment limits apply],
  [Achieve a related secondary goal], [Extra Feat], [1 Power],
)

Other Effects remain available when their normal requirements are met. A short opportunity menu is guidance, not a prohibition on other legitimate purchases.

Apply existing durations, scope, discounts, stacking, and ability limits. Extra Feat is not a discounted Create, Advance, Attack, or other priced Effect. Do not use it to bypass a still-unresolved objective or gain another roll.

Pay all purchases from one Power budget. Unspent Power becomes Momentum normally. No opportunity grants a free refund or additional Power merely because it was listed.

= Independent Checks

Roll 2d12 + Skill + Modifiers against the established Difficulty. Use normal Effort, bonus dice, tags, statuses, and Truths.

- Meet the target: Success, with 1 Power.
- Exceed the target: Gain an additional Power per full 3 points over it.
- Miss by 1–3: Success at a Cost, with 1 Power; the player chooses a consequence or 1 Woe for the GM.
- Miss by 4 or more: Failure; the GM makes its normal move and gains 1 Woe.

Apply doubles and Risky rolls normally. A critical does not automatically purchase every opportunity. A complication does not automatically erase a success.

== Example: Open the Sluice

Intent: Open the sluice so the trapped water can drain.

Roll: Craft against Standard 15, using appropriate tools.

Success: The sluice opens. This ordinary task is not represented by a separate clock.

Automatic: The attempt occupies one minute.

Danger: On failure, the gearing jams and this approach requires repairs before another attempt. On Success at a Cost, if the player chooses a consequence, the sluice opens noisily enough to alert the nearby watch. A fitting dice complication might instead damage a carried tool.

Opportunity: Discover for 1 Power reveals whether the remaining mechanism can close the sluice again. Extra Feat for 1 Power also opens the adjacent maintenance hatch, if the same work can plausibly release it.

A total of 18 grants 2 Power before other applicable bonuses. The player opens the sluice, buys Discover for 1 Power, and leaves 1 Power to become Momentum. No listed danger occurs without a trigger.

= Opposed Checks

Before rolling, state both actors' intents, what each gains by winning, and what an exact tie means. Establish permissions and limits symmetrically.

Both actors roll using the relevant skill and modifiers. The higher total wins and gains 1 Power, plus 1 per full 3 points of margin. The loser gains no normal Power or action effect. An exact tie grants neither actor Power or their normal effect; costs already paid remain spent.

Do not treat a loss by 1–3 as Success at a Cost. Losing or tying produces no ordinary-failure Woe or additional ordinary-failure GM move. The winner's declared outcome resolves, with any required Effect purchases. Separately triggered complications and explicit rules still apply.

Apply the core versus doubles rules. Double 12s do not override a higher opposing total or break a tie. Winning ordinary doubles grant +1 Power; winning double 12s grant +2 instead. Losing or tied doubles grant no Power. Double 1s cause their normal complication regardless of victory.

An opportunity cannot negate the winner's established outcome, invent an unrelated objective, or purchase another opposed check. A danger such as capture must be part of a suitable declared outcome or follow a separate explicit trigger; it is not automatically added to every loss.

== Example: Take the Dispatch

A courier and an infiltrator reach for an unattended dispatch case.

Infiltrator's intent: Secure the case and move back behind the nearby doorway.

Courier's intent: Secure the case and retain possession on this side of the doorway.

Tie: Neither secures possession; the case remains between them. Time passes and the situation must change before repeating the same attempt.

Roll: Appropriate Athletics checks. Winning secures the declared ordinary task outcome. No free injury or movement beyond the established scope follows.

Opportunity: Discover for 1 Power reveals a useful detail visible on the case. A related Extra Feat might secure another small loose item within reach; it cannot read the sealed dispatch remotely or automatically win an ensuing escape.

The infiltrator totals 20 against 16, earning 2 Power before applicable doubles. Losing does not independently give the GM Woe. If the courier then pursues through several meaningful tactical decisions, consider a scripted Chase rather than repeating identical grabs.

= Extended Checks

Use an extended check when repeated meaningful work, interruptions, and intermediate choices matter. Do not divide a single ordinary action into repeated rolls merely to prolong it.

== Establish the Undertaking

Record:

- Goal: What completing the clock establishes.
- Clock: Normally 4, 6, 8, or 12 segments, as appropriate.
- Interval: What one attempt represents in time and activity.
- Requirements: Tools, access, materials, and eligible contributions.
- Progress: How Advance purchases mark segments.
- Pressure: Relevant deadlines, danger clocks, or limited attempts.
- Stakes: Automatic outcomes, triggered dangers, and useful opportunities.
- Interruption: What persists, what can be lost, and when work becomes impossible.

Success on one attempt does not complete the whole undertaking unless its purchased progress fills the clock. Completing a clock grants only the established goal, not unrelated benefits.

== Resolve Each Attempt

+ Confirm the approach, interval, and current stakes.
+ Pay applicable pre-roll costs and resolve the check normally.
+ Resolve success or failure, Power, and applicable complications.
+ Allocate Power among Advance and other permitted Effects.
+ Apply each clock change only through its actual trigger.
+ Record persistent effects and check completion, interruption, or defeat of the undertaking.

Advance costs 1 Power per segment. There is no free segment for attempting, succeeding, spending an interval, or narrating hard work unless a specific rule grants one. Power spent on information or preparation is not also spent on progress.

== Pressure and Danger Clocks

Use a danger clock only when its completion has a clear outcome. State its triggers and tick amounts. The generic Woe rate is 1 Woe per segment; specific clock procedures can override it.

A declared failure consequence may tick a danger clock without a Woe spend. Do not also charge Woe for that same tick. Separate, legal Woe purchases remain separate events.

Time passing does not generically tick every danger clock. A clock driven by elapsed time needs an explicit cadence established for this undertaking or supplied by its governing procedure.

If completion and a deadline could coincide, establish how the events relate before resolving the attempt: completion may beat the danger, the danger may prevent completion, or both may happen compatibly. Do not invent an initiative contest after the rolls to choose a preferred result.

== Persistence and Repeated Attempts

Retain earned progress unless a declared consequence or explicit rule removes it. Failure does not automatically erase previous segments or reset a clock.

An interruption can suspend work without undoing it. If an essential requirement is lost, explain what must be restored. A deadline can close the opportunity without implying that completed physical work vanishes.

Do not permit consequence-free repeated rolls solely to generate Momentum. If time, uncertainty, and consequences cease to matter, stop calling for checks and resolve the remaining work through the applicable procedure. Do not introduce an undeclared hazard simply to justify more rolls.

Helping and group participation use existing rules. This module grants no additional downtime endeavours, free independent attempts, shared Power transfers, or extra actions merely because several characters describe contributions.

== Opposed Extended Checks

An actively contested attempt can use the opposed procedure. Define what winning that interval permits: for example, the winner can spend its Power on its own established progress clock. A loss or tie grants no normal progress.

This is not two independent tests. Do not grant both actors threshold-based success or ordinary-failure Woe. Do not convert margin directly into clock segments: generate Power normally, then purchase Advance.

For racing clocks, state each finish condition and what happens when one fills. Do not add shared Disposition or conflict compromise to the race. If sustained tactical exchanges are the interesting part, use the scripted conflict system instead.

== Example: Repair the Ferry

Goal: Restore the ferry to safe operating condition.

Clock: Repair the Ferry, 6 segments. Each attempt takes one hour and requires tools and suitable timber.

Automatic: The hour passes. Materials committed to that attempt are used; identify the amount before rolling.

Roll: Craft against Standard 15, subject to actual circumstances.

Danger: On failure, damage a necessary tool, preventing further work with it until repaired or replaced. On Success at a Cost, the player may choose to lose additional usable timber instead of granting 1 Woe. State the amount before the roll.

Opportunities: Advance for 1 Power per repair segment. Discover for 1 Power identifies a hidden weakness relevant to the work. A fitting Create purchase can establish a helpful worksite Truth at its normal price; it is not free progress.

Pressure: The ferry must be ready before an established departure deadline. The deadline follows elapsed hours, not an additional generic tick for every roll. If the final repair interval ends at departure, agree before rolling whether completion at that instant is timely.

A successful attempt earning 3 Power may buy 2 repair segments and one Discover answer. It does not also receive an automatic repair segment. The discovery can inform later choices without changing the already-paid progress.

= Compatibility with Scripted Conflicts

This module does not replace conflict setup or create an alternate route around a still-disputed conflict objective.

During scripted conflicts, use action-specific Effect permissions and the restrictions on failure consequences. Do not import the independent-check failure move or the opportunity table as extra permissions. Separate clock progress must follow the existing conflict rules.

Use _Stakes and Compromise_ to frame possible settlement terms. Ordinary and extended checks receive no automatic compromise grade. If play changes procedure, establish how existing clocks, injuries, costs, and facts carry forward; do not reset them merely to escape consequences.

= Quick Reference

Before rolling: State intent, resolution, success, automatic outcomes, triggered dangers, and priced opportunities.

Independent: Resolve against Difficulty. Preserve Success at a Cost and its player choice.

Opposed: Compare totals. Generate Power from margin. No Success at a Cost for a narrow loss and no ordinary-failure Woe for losing or tying.

Extended: Declare a goal, interval, clock, requirements, pressure, and interruption conditions. Buy progress with Advance. Keep existing progress unless a rule actually removes it.

Always: Use one Power budget. Keep costs and triggered consequences distinct. Unlisted opportunities remain possible when normally permitted. Never make every listed danger occur simply because it was not purchased away.
