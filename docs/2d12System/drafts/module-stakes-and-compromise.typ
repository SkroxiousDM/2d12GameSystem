// Standalone draft. Not included in the core rulebook.
// Compile from the repository root:
// typst compile docs/2d12System/drafts/module-stakes-and-compromise.typ
#set document(title: "Stakes and Compromise — Optional Module Draft", author: "SkroxiousDM")
#set page(paper: "a4", margin: 20mm, numbering: "1")
#set text(font: "Libertinus Serif", size: 10.5pt)
#set par(justify: true, leading: 0.65em)
#set heading(numbering: "1.")

#align(center)[
  #text(size: 23pt, weight: "bold")[Stakes and Compromise]
  #v(4pt)
  #text(size: 12pt)[The 2d12 System · Optional Module]
  #v(4pt)
  #text(style: "italic")[Draft for playtesting · Not part of the core rules]
]
#v(12pt)

This module makes the possible costs of victory visible before a scripted conflict begins. Each side declares its intent and identifies a few concrete things it might lose, surrender, owe, or expose through compromise.

It supplements conflict setup and settlement. It does not change scripted actions, action interactions, Power spending, shared Disposition, or the existing rules for injuries, Resistance, concession, and mutual defeat. The core conflict procedure remains authoritative; the compromise table below reproduces the version used to prepare this draft, rather than replacing it.

#block(inset: 9pt, fill: luma(94%), radius: 3pt)[
  Design basis: adapted from _Stakes_ by Levi Kornelsen, particularly its practice of establishing possible outcomes in advance and checking that those outcomes can coexist. The source dedicates its content to the public domain. This module does not use its hit-spending resolution procedure.
]

= When to Use This Module

Use this module when the possible terms of victory deserve attention: a dangerous escape, a contested negotiation, a defence with vulnerable dependants, or another struggle in which winning could come at several different prices.

For a straightforward conflict, one or two spoken hooks are enough. Write a fuller list only when it helps the participants understand the choices.

Do not create a scripted conflict merely to use this module.

= Declare Intent and Boundaries

During conflict setup, before calculating starting Disposition, each side states:

- Intent: What the side gains by winning.
- Boundaries: What defeat permits, which lasting consequences are possible, and any relevant limits.
- Compromise hooks: Two or three concrete things the side might concede even if it wins.

Use the following format:

#block(inset: 9pt, stroke: 0.5pt + luma(65%))[
  Intent: We win by… \
  Boundaries: This conflict can result in… \
  Compromise hooks: Victory might cost us…
]

Each side must have an objective it can achieve, rather than only an outcome it wants to prevent.

== Protecting the Intent

Compromise may qualify the terms of victory, but it cannot simply negate the winner's declared intent.

If the intent is “escape without revealing the refuge,” revealing the refuge is not a valid compromise. Abandoning supplies, losing a useful identity, or owing someone for assistance might be.

If a side wants a particular outcome guaranteed by victory, include it in the intent and confirm that it is achievable through this conflict. Do not add protected conditions after the result is known.

== Boundaries Are Not Immunities

A consequence excluded from compromise is not automatically impossible through other established procedures.

If lethal harm is possible, declare lethal stakes normally. If a hazard or ability can impose a particular consequence during the conflict, identify that risk through its applicable rules.

An intent does not prevent independently resolving actions, explicit harm, or other established effects.

= Choose Compromise Hooks

A compromise hook identifies something the side could meaningfully give up while still achieving its intent.

#table(
  columns: (25%, 75%),
  inset: 6pt,
  table.header([Hook], [What it puts at risk]),
  [Supplies], [Provisions, ammunition, materials, money, or transport],
  [Position], [Territory, access, a defensible location, or a safe route],
  [Time], [A deadline, departure, opportunity, or period of freedom],
  [Secrecy], [An identity, method, contact, alliance, or piece of information],
  [Relationships], [Trust, reputation, support, or a valuable connection],
  [Obligation], [A favour, promise, service, debt, or continuing duty],
  [Opposition], [The loser's escape, retained assets, or limited future freedom],
  [Injury], [Appropriate harm within the established stakes],
)

Name the specific thing at risk. “The mule carrying the winter provisions” is more useful than “resources.”

A hook must matter in the current situation. Delay is not a meaningful cost without time pressure. Losing replaceable equipment is not a major sacrifice merely because several items are listed.

== Whose Hooks?

Each side's list describes possible costs of its own victory.

The opposing side's intent can suggest a hook, but does not automatically become a valid concession in full. A loser may gain a compatible part of its objective; it cannot receive its complete incompatible objective through compromise.

== Check Compatibility

Before scripting, check that:

- Each hook can coexist with the side achieving its intent.
- The possible consequences follow from the circumstances.
- The list does not assume incompatible events must all happen.
- Participants understand which lasting consequences are possible.

Revise an unclear intent or unsuitable hook before proceeding.

= Set the Possible Scale

A hook is not assigned a fixed price. Its severity depends on how much is conceded and what that means in the fiction.

For an important or disputed hook, record examples at different grades:

#table(
  columns: (23%, 77%),
  inset: 6pt,
  table.header([Grade], [Example: an obligation]),
  [Minor], [Perform a limited favour with a clear end],
  [Significant], [Undertake a dangerous or costly service],
  [Major], [Accept a lasting obligation that substantially constrains future choices],
)

These are examples, not entitlements or mandatory payments.

A limited favour might be a serious concession under particular circumstances. Losing a small water supply might be catastrophic when it is the only water available.

Do not require a separate Minor, Significant, and Major entry for every hook.

= Resolve the Conflict Normally

Once setup is complete, use the existing conflict procedure.

Compromise hooks do not:

- Modify starting or current Disposition.
- Grant bonus dice, Power, or Momentum.
- Authorise additional Effect purchases.
- Impose consequences merely because they were listed.
- Allow a successful action to settle a still-disputed objective.
- Give the GM additional permission to inflict harm.

Use the existing rules for ordinary failure, Success at a Cost, doubles, hazards, scenery Dangers, and explicit abilities.

== Possibilities and Established Events

Keep possible settlement terms distinct from things that actually happen during play.

A listed risk of losing a wagon does not mean the wagon is already lost. If an explicit effect destroys it during the conflict, record that event.

Defend does not reverse an established loss merely by restoring Disposition. Likewise, describing an Attack does not establish an injury or destroy an asset unless the applicable procedure permits it.

== Changed Circumstances

A newly discovered fact or changed situation may justify revising a hook or introducing a new danger.

Explain the change before resolving an action or exchange that could impose the new consequence. Give affected participants an opportunity to respond under the normal rules.

Do not introduce new lasting stakes retroactively, raise the compromise grade, or recalculate starting Disposition merely because the hook list changes.

= Determine Compromise

When one side wins, determine compromise using the existing table:

#table(
  columns: (72%, 28%),
  inset: 6pt,
  table.header([Winner's starting Disposition lost], [Grade]),
  [None], [None],
  [More than 0, less than half], [Minor],
  [At least half, less than three-quarters], [Significant],
  [Three-quarters or more], [Major],
)

Use the adjusted starting Disposition recorded at setup and compare proportions without rounding. Apply the normal reinforcement and recovery rules.

The grade determines the scale of the whole settlement, not the number of hooks that must be selected.

= Build One Settlement Package

After establishing the grade:

+ Restate what the winner achieves.
+ The loser proposes a concession, using the hooks as guidance.
+ Confirm what the loser retains or gains.
+ State the complete costs and who bears them.
+ Check the package against the grade, intent, and stakes.
+ Apply existing-injury credit and eligible Resistance normally.
+ Record the binding result.

Choose one substantial term or combine several smaller terms into a coherent package. Do not impose every listed hook.

== Grade Guidance

- Minor: A limited expenditure, short delay, manageable obligation, or modest complication.
- Significant: A substantial concession, restricted terms, important loss, serious injury, or compatible part of the loser's objective.
- Major: Victory at a major price, such as severe injury, lasting obligation, important loss, or a powerful new danger.

These describe possible packages, not mandatory injury costs or penalties for every participant.

== Proposing Unlisted Terms

The hook list is not exhaustive. Either side may suggest another term if it follows from the established stakes and what happened during the conflict.

An unlisted term cannot introduce a new category of lasting consequence that should have been declared earlier. The GM adjudicates disputed terms within the normal limits; disagreement does not erase earned compromise.

== Avoid Double Charging

Distinguish between:

- Events already resolved during the conflict.
- Existing injuries eligible to satisfy an assigned injury cost.
- New concessions imposed through settlement.

Apply existing injury-credit rules exactly. Do not automatically convert spent pool points, lost Disposition, or every inconvenience into settlement credit.

Equally, do not charge again for an already established loss by presenting it as a new sacrifice. State what additional concession, if any, the package requires.

= Concession and Mutual Defeat

== Concession

A side may use the hooks to propose an early end before the next roll.

State what the opponent gains, what the conceding side retains, all costs, and how the immediate struggle ends. Hooks do not establish a minimum offer or require acceptance.

If accepted, apply the agreed terms. Do not also calculate compromise unless the agreement explicitly includes it. Agreed payments retain their normal protections against cancellation and Resistance.

== Mutual Defeat

No side receives a winner's compromise.

Use both intents and hook lists to help establish compatible partial outcomes and a shared setback within the stakes. Do not select a compromise grade or automatically apply both lists.

= Example: Hold the Bridge

== Defenders

Intent: Hold the bridge until all refugees cross.

Boundaries: Lethal harm, capture, and loss of equipment are possible. Compromise cannot undo the refugees' successful crossing.

Compromise hooks:

- Abandon the provision wagons.
- Surrender the bridge after the crossing.
- Leave the enemy able to pursue.

== Attackers

Intent: Seize the bridge before the crossing is complete, cutting off the refugees still on this bank.

Boundaries: Lethal harm and capture are possible; victory does not automatically kill or capture everyone.

Compromise hooks:

- Allow some of the remaining refugees through.
- Seize a damaged crossing.
- Allow the defenders an organised withdrawal.

== Settlement

The defenders win with Significant compromise. The attackers propose:

#block(inset: 9pt, fill: luma(94%))[
  “Every refugee crosses, but the provision wagons remain behind, and the bridge is abandoned intact.”
]

The table judges whether those combined terms form a proportionate Significant package. If accepted or adjudicated, record:

#block(inset: 9pt, fill: luma(94%))[
  The refugees cross safely. Their provisions are lost, and the attackers control an intact bridge. Pursuit remains possible but is not automatically successful.
]

No additional injury is required merely because the conflict was a fight.

= Quick Reference

== Before Scripting

- State each side's intent.
- Establish lasting stakes and exits.
- Name two or three concrete compromise hooks per side.
- Check that each hook preserves that side's possible victory.

== During Play

- Resolve actions normally.
- Keep possible costs separate from established consequences.
- Discuss changed stakes before they can take effect.

== At Settlement

- Determine the compromise grade normally.
- Let the loser propose one coherent package.
- Preserve the winner's intent.
- Apply injury credit and Resistance normally.
- Record the result; do not immediately reroll it.
