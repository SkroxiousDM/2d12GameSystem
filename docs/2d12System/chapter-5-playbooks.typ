#import "common.typ": *

// =====================================================================
//  CHAPTER — GENERIC PLAYBOOKS
// =====================================================================
#chapter("Generic Playbooks", [The six genre-neutral playbooks: Bellator, Furcifer, Savant, Interlocutor, Explorator and Adept. Each has eight special abilities, a capstone and starting equipment for three genres. Setting books can reskin these six or add new ones.], epigraph: [The noun of the character sentence.])
#columns(2, gutter: 2mm)[
#colbreak(weak: true)
== 1. Playbook Rules <pb-playbook-rules>
=== 1.1 What a Playbook Gives You <pb-what-playbook-gives-you>
#figure(
  [#table(
    columns: (17%, 83%),
    align: (auto,auto,),
    table.header([Element], [Detail],),
    table.hline(),
    [#strong[Base pools];], [Sōma / Mētis / Psychē / Pneuma, totalling 36. Add 4 points of your choice and +2 from your Descriptor],
    [#strong[Edge];], [3 points: the fixed Edge listed, plus 1 point from the listed choices],
    [#strong[Anchor skill];], [Must be rated +3 or +4 in your pyramid],
    [#strong[Suggested skills];], [A recommended pyramid; change it freely],
    [#strong[Playbook tags];], [Choose #strong[2] tags from the playbook\'s list],
    [#strong[XP trigger];], [One playbook behaviour that earns XP (Core Rules @core-earning-xp)],
    [#strong[Special abilities];], [1 free at creation, and up to 2 more at 1 Refresh each. A ★ Major costs 1 more (@pb-ability-notation)],
    [#strong[Starting equipment];], [Signature items (choose 1 of 2), playbook kit, and always-carried items],
    [#strong[BIG examples];], [Sample Beliefs, Goals, and Instincts],
    [#strong[Relationships];], [1 ally and 1 rival from the playbook\'s list],
  )]
  , kind: table
  )

=== 1.2 Ability Notation <pb-ability-notation>
- #strong[★ Major] --- costs #strong[1 extra Refresh] whenever you take it, so a ★ creation extra or veteran ability costs #strong[2 Refresh] in total.
- #strong[◆ Capstone] --- the playbook's final ability (Core Rules @core-spending-xp).
- #strong[Veteran abilities:] abilities from another playbook, available after 6 Advances (Core Rules @core-spending-xp).

#strong[Reading an ability.] Every ability uses four fields:
- #strong[Trigger:] when it applies, including any declaration timing. A passive ability names the circumstance it applies in; it needs no activation.
- #strong[Cost:] what you pay or accept to use it. "No additional cost" means only the normal costs of the action apply. The ★ Refresh cost of taking an ability is separate.
- #strong[Benefit:] exactly what it grants or changes.
- #strong[Limit:] its frequency, duration, scope, exclusions and caps. "No additional limit" means only the limits below apply.

#strong[Ability limits.] These apply to every ability in this chapter, so the entries don't repeat them:
- #strong[Free] waives only the listed cost. No ability grants an extra scripted turn or bypasses rotation, the action interaction or the declared stakes unless it says so. Automatic success replaces the roll for an otherwise permitted action (Core Rules @core-scripting-volleys).
- Extra Power, extra Disposition loss and extra status tiers are separate bonuses; each improves only the component it names (Core Rules @core-actions-effects).
- Protection, reduction and redirection don't reach shared Disposition loss or protected payments (accepted injuries, running-dry statuses, concession costs and costs an ability calls accepted payments) unless the ability names them (Core Rules @core-resistance-harm-recovery, @core-costs-failures-complications).
- A starting-Disposition bonus is a flat modifier: apply it before the minimum of 1 and Superiority, and don't reapply it when the same struggle changes conflict type (Core Rules @core-setup[§]--@core-superiority[]).
- A fact, Truth or flashback an ability declares can't contradict resolved events, and information doesn't recalculate Superiority after setup.

=== 1.3 Rules References Used in Abilities <pb-rules-references-used-abilities>
#figure(
  [#table(
    columns: (14%, 86%),
    align: (auto,auto,),
    table.header([Term], [Meaning (core section)],),
    table.hline(),
    [#strong[Power];], [Earned by meeting or beating the target: 1, +1 per full 3 points over; spent on Effects (@core-outcomes, @core-effects)],
    [#strong[Effort];], [Spend 3 − Edge (minimum 0) from a pool for a bonus die (before rolling) or +1 Power (after a success) (@core-bonus-dice-effort)],
    [#strong[Resist];], [Roll 2 + Edge d12 and pay pool points by the highest die (no Edge reduction); at negative Edge, roll 1d12 (cost +1 at Edge −2 or lower, maximum 3). Reduce a status by 2 tiers (@core-resistance-harm-recovery)],
    [#strong[Status];], [Personal state, tiers 1--6; tier 6 applies its scope and breaking-point rule, subject to explicit setting exceptions (@core-personal-statuses, @core-tier-6-scars)],
    [#strong[Situational Condition];], [External circumstance rated 1--6 that helps or hinders the roll; no Taken Out or Scar from its rating (@core-situational-conditions)],
    [#strong[Truth];], [Unrated scene, site, region or campaign fact that permits, prevents or requires; no modifier (@core-truths)],
    [#strong[Disposition];], [One shared total per side measuring its ability to pursue this conflict's objective, not individual health (@core-shared-disposition-participation)],
    [#strong[Injury trade];], [Once per character per conflict, accept a tier-2/3/4 injury to cancel 1/2/3 Disposition loss; at most one participant trades per Attack or Feint (@core-accepting-injury)],
    [#strong[Dying];], [Life-threatening tier-6 physical harm with lethal stakes: 3-segment clock; Medicine vs. Hard 18 stabilises (@core-dying-stabilisation)],
    [#strong[Checks / Grind];], [Players\' Turn currency and the hardship clock (Module B)],
  )]
  , kind: table
  )

#colbreak(weak: true)
== 2. Equipment Rules <pb-equipment-rules>
=== 2.1 Load <pb-load>
Before a mission, choose your #strong[load];. During play, declare items from your playbook kit as you need them and mark their load.

#figure(
  [#table(
    columns: (9%, 14%, 77%),
    align: (auto,auto,),
    table.header([Load], [Capacity], [Effect],),
    table.hline(),
    [#strong[Light];], [3], [You blend in; nothing obvious marks you as armed or burdened],
    [#strong[Normal];], [5], [You look ready for trouble],
    [#strong[Heavy];], [7], [You\'re #emph[encumbered];: Mētis Effort costs +1 and Stealth Difficulty is one step higher],
  )]
  , kind: table
  )

- #strong[Signature items] are chosen at creation and always count against load when carried (most are 1--2).
- #strong[Losing a signature item.] A signature item defines what the character can do, so losing it can matter in play, but you never buy the same character option again to get it back. When it's lost, broken or taken, the GM names a #strong[recovery route]: repair, rescue, a trade or a replacement. It may take a scene, a downtime endeavour or a journey, and needn't be quick. Ordinary kit items have no such guarantee.
- #strong[Always-carried items] (load 0) are always on you.
- Items marked #strong[(0)] cost no load.

=== 2.2 Gear as Tags <pb-gear-as-tags>
- Every item is a #strong[tag];: when it\'s relevant it supplies Power, e.g. #emph[crowbar] when you force a door with Athletics. Item tags count toward the #strong[+2 Tag Power cap]; and add nothing to the roll.
- #strong[Weapons] also give one or more #strong[conflict action tags] (Core Rules @core-conflict-gear-assets), e.g. #emph[+1 Attack] (1 Tag Power on Attack). Do not count an item's general tag and action tag twice for the same benefit on one action.
- #strong[Quality:] a fine or advanced item gives the one extra benefit its entry lists (it doesn't raise the cap). If you use the optional qualities in Core Rules @core-conflict-gear-assets, record each benefit once.
- #strong[Escalation:] some items carry the #emph[Escalation] tag (Core Rules @core-escalation). Carried openly into a scene, each gives the GM 1 Woe.

Declare active conflict equipment before scripting each exchange. Switching gear doesn't refresh a once-per-conflict quality, restore lost gear or change the script (Core Rules @core-conflict-gear-assets). Gear narration alone adds no status to an ordinary Attack.

=== 2.3 Armour and Shields <pb-armour-shields>
#figure(
  [#table(
    columns: (28%, 8%, 64%),
    align: (auto,auto,),
    table.header([Item], [Load], [Effect],),
    table.hline(),
    [#strong[Light armour];], [1], [#emph[Armour 1];: when you Resist physical harm, reduce it by 1 extra tier],
    // PLAYTEST: heavy armour and Heavy load Mētis Effort penalties don't stack.
    [#strong[Heavy armour];], [2], [#emph[Armour 2];: reduce by 2 extra tiers; Mētis Effort +1 while worn (doesn't stack with Heavy load)],
    [#strong[Shield / riot shield / energy barrier];], [1], [#emph[+1 Defend] in Fight conflicts; counts as cover outside conflicts],
  )]
  , kind: table
  )

Armour that absorbs a tier-4+ hit is #emph[damaged] (−1 Armour) until repaired during downtime. Armour never reduces Disposition loss or a protected payment (Core Rules @core-resistance-harm-recovery, @core-costs-failures-complications).

=== 2.4 Common Gear (any playbook) <pb-common-gear>
#figure(
  [#table(
    columns: (8.08%, 34.34%, 31.31%, 26.26%),
    align: (auto,auto,auto,auto,),
    table.header([Load], [Fantasy], [Modern], [Sci-Fi],),
    table.hline(),
    [(0)], [Belt knife, flint & steel, coin purse], [Phone, wallet, keys, pocketknife], [Comm unit, credchip, multitool],
    [1], [Rope (15 m), lantern & oil, trail rations (2 days)], [Flashlight, first-aid kit, water & snacks], [Glow rod, medpatch ×2, ration bars],
    [1], [Bedroll & blanket], [Duffel with spare clothes], [Thermal sheet & sleep sack],
    [1], [Crowbar or pry bar], [Crowbar or bolt cutters], [Hydraulic pry tool],
    [2], [Tent or tarp], [Tent or camping kit], [Pop-up shelter],
  )]
  , kind: table
  )
]
#pagebreak()
#include "chapter-5.3-bellator.typ"
#pagebreak()
#include "chapter-5.4-furcifer.typ"
#pagebreak()
#include "chapter-5.5-savant.typ"
#pagebreak()
#include "chapter-5.6-interlocutor.typ"
#pagebreak()
#include "chapter-5.7-explorator.typ"
#pagebreak()
#include "chapter-5.8-adept.typ"
#include "chapter-5.9-design-notes.typ"
