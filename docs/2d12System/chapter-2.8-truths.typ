#import "common.typ": *

== 8. Truths <core-truths>
#columns(2, gutter: 6mm)[
A #strong[Truth] is an established fact about a person, group, object, place or the world. It can permit or prevent an approach, set a requirement, establish a danger or define the setting.

#strong[Truths have no rank and no modifier.] A Truth doesn't change rolls, Difficulty, Power, status tiers, Situational Condition ratings or Disposition by itself. When a circumstance should help or hinder a roll by a number, record it as a #strong[Situational Condition] (@core-situational-conditions). One circumstance can be both: #emph[Barred River Gate] is a Truth; #emph[thick smoke 3] is a Situational Condition.

- #strong[Permission:] #emph[a drainage tunnel reaches the inner courtyard].
- #strong[Prohibition:] #emph[the door has no keyhole].
- #strong[Requirement:] #emph[admission requires the royal seal].
- #strong[Danger:] #emph[flame can ignite the gas in the cellar].
- #strong[World fact:] #emph[magic is real but feared].

=== 8.1 Possibility Before Difficulty <core-possibility-before-difficulty>
Check relevant Truths before anyone rolls (@core-difficulty-ladder):

- #strong[Possible and uncertain:] roll normally.
- #strong[Prevented:] explain the restriction. The character changes the circumstances or the approach.
- #strong[Certain:] it happens without a roll.
- #strong[Requirement unmet:] establish how it is met or bypassed first.

No bonus overcomes an impossible approach. A Truth restricts only what its wording and scope support: a barred gate doesn't make the hinges unbreakable or the wall unclimbable. Use a Situational Condition for numerical interference and a Truth for a categorical limit. Poor visibility can hinder observation; complete darkness can rule out ordinary visual identification. Don't penalise an impossible attempt instead of explaining why it can't work.

=== 8.2 Scale <core-scale>
#figure(
  [#table(
    columns: (22%, 78%),
    align: (auto,auto,),
    table.header([Scale], [Reach],),
    table.hline(),
    [#strong[Scene]], [The immediate encounter or temporary circumstances],
    [#strong[Site]], [A defined building, settlement location or installation],
    [#strong[Region]], [Connected places, communities or institutions],
    [#strong[Campaign]], [A foundational setting or campaign fact],
  )]
  , kind: table
  )

Scale measures reach, not strength. #strong[Campaign Truths] are 3--5 world statements agreed at session zero (#emph[Magic is real but feared], #emph[The Corporation owns the police]). Scene-scale Creates and spends can't rewrite Site, Region or Campaign Truths; that takes the projects and major arcs in #strong[Module C], which also covers using Truths to drive a sandbox campaign.

=== 8.3 Establishing and Recording <core-establishing-recording>
Truths come from agreed setup, actions, discovery, explicit abilities or purchases, and binding consequences or concessions. Recording a fact that already exists costs nothing.

- #strong[Creating Truths:] players use the #strong[Create] effect (2 Power, @core-effects) or spend #strong[2 Weal]; the GM spends #strong[2 Woe] (@core-weal-woe). A created Truth is scene scale and lasts for the scene; only Create can pay +1 Power to make it outlast the scene (@core-effects). It grants no Situational Condition rating.
- #strong[State it first.] Say what fact you intend to create before its action resolves, and agree its scope, requirements, cost and consequences. A Truth can't contradict resolved events, exceed the action's reach, grant an unrelated objective, decide another character's choices without their player's agreement, or widen agreed stakes.
- #strong[Recording a Truth.] Use the standard format (@core-effects): #strong[Name --- Truth/scale --- scope and what it implies --- ending condition]. It applies only within its scope, and a removal condition never extends a duration. #emph[Barred River Gate] --- Truth/Scene --- the gate can't open normally until its inner bar is lifted, broken or bypassed --- ends when the bar no longer secures it.

=== 8.4 Changing and Ending Truths <core-changing-ending-truths>
- #strong[Change the fact.] Lift the bar, disperse the gas, repair the bridge, obtain the seal. Use no roll, a test, a conflict or a project, whichever fits. Truths aren't worn down rank by rank; track partial progress with a clock, a Situational Condition or a revised fact.
- #strong[Duration.] Established facts last until something changes them. A created Truth also follows its creating rule's duration and ending condition.
#colbreak()
- #strong[Expiry doesn't rewind.] When a Truth ends, describe why: the passage closes, support is withdrawn, the authorisation lapses. Its end never reverses a completed action or erases a consequence; a crossing already made isn't undone when the route closes. Removing a cause doesn't heal a separate injury.
=== 8.5 Dangers and Conflicts <core-dangers-conflicts>
- #strong[Dangerous circumstances.] A circumstance is dangerous when it carries established lethal stakes or a listed Danger (#emph[Gas Leak], #emph[Collapsing Floor]; @core-scenery-maneuvers), not because of a rating. It can be a Truth, a Situational Condition or both. Record its scope, what exposes someone to it, its consequence, and how it can be avoided, Resisted or mitigated. Woe from dangerous circumstances is capped per scene (@core-woe).
- #strong[In conflicts,] Truths set approaches and scenery. They don't by themselves cancel scripts, grant turns, change Disposition, take participants out, override action interactions or settle a disputed objective; only an explicit ability can. If changing a Truth could settle the conflict, establish that before the deciding action resolves. Conflicts add further limits on creating Truths (@core-conflict-limits-reference).

#strong[Invoking a Truth.] A Truth carries no modifier, but it can still justify a Tychē Invoke (@core-tyche-points).
]
