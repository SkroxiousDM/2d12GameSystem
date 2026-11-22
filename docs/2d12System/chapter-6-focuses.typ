#import "common.typ": *

// =====================================================================
//  CHAPTER — GENERIC FOCUSES
// =====================================================================
#chapter("Generic Focuses", [Twenty-four setting-neutral Focuses complete the sentence: "...who [Focus]." Each one has two fixed double-sided tags, a link to another player character, and tiered abilities with a choice at Tiers 2 and 3.], epigraph: [The verb of the character sentence.])


== 1. Focus Rules <foc-focus-rules>
#columns(2, gutter: 6mm)[
=== 1.1 What a Focus Gives You <foc-what-focus-gives-you>
#figure(
  [#table(
    columns: (25%, 75%),
    align: (auto,auto,),
    table.header([Element], [Detail],),
    table.hline(),
    [#strong[Tags];], [2 fixed double-sided tags (each can supply Power or be compelled for Tychē Points)],
    [#strong[PC link];], [A prompt that connects you to another player character],
    [#strong[Tier 1 ability];], [Fixed; gained at creation for free],
    [#strong[Tier 2 ability];], [#strong[Choose 1 of 2];; after 3 Advances, costs an Advance],
    [#strong[Tier 3 ability];], [#strong[Choose 1 of 2];; after 6 Advances, costs an Advance],
  )]
  , kind: table
  )

Each Focus grants both listed tags. Neither is a separate weakness: each can supply Power when it helps your action or be compelled when the same trait creates a meaningful complication (Core Rules @core-tags, @core-tyche-points). Both uses must follow naturally from the tag's wording and the established fiction. These two tags, your two Descriptor tags and your two chosen Playbook tags form your six starting identity tags; tags granted separately by abilities or equipment remain additional.

- #strong[The other option:] once you\'ve reached a tier, you may take its unchosen option later as a normal Advance.
- #strong[★ Major:] costs 1 extra Refresh when taken (Generic Playbooks @pb-ability-notation). Every Focus has exactly one ★ option, always at Tier 3, so you can always choose a path that keeps your Refresh.
- #strong[Any playbook can take any Focus.] The \"Suits\" line is a suggestion.
- #strong[Changing Focus:] at a major milestone, with GM approval, you can swap your Focus. You keep Tier 1 of the new one and rebuy higher tiers with Advances.

=== 1.2 Weird Focuses ◈ <foc-about-weird-focuses>
Focuses marked #strong[◈ Weird] assume the supernatural, impossible technology, or both. In mundane settings the GM removes them from the list. Every other Focus works in any genre.

#strong[Module requirements and benefits.] "Requires Module X" means the ability is unavailable without that module. "With Module X" introduces an additional benefit or procedure; the rest of the ability works without that module.

The generic Focuses are usable with the core rules except #strong[Lives Off the Land], which requires Module B. Module benefits do not grant additional actions or waive costs unless they explicitly say so.
// ART: A surgeon's kit unrolled on a field table beside a lantern.
#art-fill(min: 6cm)[A surgeon's kit unrolled on a field table beside a lantern.]
#colbreak()
=== 1.3 Ability Limits <foc-ability-limits>
Focus abilities use the same four fields (Trigger, Cost, Benefit, Limit) and follow the #strong[Ability limits] in Generic Playbooks @pb-ability-notation (free costs, no extra turns, separate bonuses, protected payments). In addition, so the entries don't repeat them:
- Free bonus dice still count toward the #strong[+2 bonus die maximum];.
- An ability that lets a tag exceed the tag cap adds at most #strong[+1 above it (maximum +3)];, and only for the tag it names.
- #strong[Cost reductions:] for Effects other than Create, only one reduction applies to a single Effect. #strong[Create is the exception:] each stated Create discount lowers the cost by 1 Power, to a minimum of 1 (Core Rules @core-effects).
- #strong[Bonus clock segments] advance only the clock they name.
- #strong[Difficulty reductions] apply only when a roll tests against a Difficulty, including an independent conflict test; they never modify totals in a versus test (Core Rules @core-scripting-volleys).
- #strong[Crews, packs and allies] that act in a conflict are one participant in your side's script and rotation, with no Disposition track or injury trade of their own. Free Help waives only the pool-point cost.
- #strong[Healing] treats existing statuses. Unless an ability explicitly states otherwise, it follows the ordinary treatment limits and does not erase Scars (Core Rules @core-treatment-healing). Healing does not restore Disposition or refresh an injury trade, and a Taken Out ally returns to an ongoing conflict only when an ability says so (Core Rules @core-being-taken-out).
]
  
== 2. Quick Reference <foc-quick-reference>
#figure(
  [#table(
    columns: (5%, 38%, 21%, 31%, 5%),
    align: (auto,auto,auto,auto,auto,),
    table.header([\#], [Focus], [Category], [Suits], [#diamond(size: 6pt, fill: paper)],),
    table.hline(),
    [1], [Never Leaves Anyone Behind], [Combat], [Bellator, Explorator, Furcifer], [],
    [2], [Leads From the Front], [Combat], [Interlocutor, Bellator, Explorator], [],
    [3], [Masters a Weapon], [Combat], [Bellator, Furcifer, Explorator], [],
    [4], [Fights Dirty], [Combat], [Bellator, Furcifer], [],
    [5], [Moves Like a Shadow], [Stealth & Precision], [Furcifer, Explorator], [],
    [6], [Never Misses], [Stealth & Precision], [Explorator, Furcifer, Bellator], [],
    [7], [Opens Every Lock], [Stealth & Precision], [Furcifer, Savant, Adept], [],
    [8], [Always Has an Escape Plan], [Stealth & Precision], [Furcifer, Interlocutor], [],
    [9], [Builds Impossible Things], [Knowledge], [Savant, Adept, Explorator], [],
    [10], [Heals the Broken], [Knowledge], [Savant, Adept, Interlocutor], [],
    [11], [Solves the Unsolvable], [Knowledge], [Savant, Interlocutor, Furcifer], [],
    [12], [Remembers What Was Forgotten], [Knowledge], [Savant, Adept, Explorator], [],
    [13], [Talks Their Way Out of Anything], [Social], [Interlocutor, Furcifer], [],
    [14], [Wears a Hundred Masks], [Social], [Interlocutor, Furcifer], [],
    [15], [Knows Everyone Worth Knowing], [Social], [Interlocutor, Savant], [],
    [16], [Carries the Weight of a Crown], [Social], [Interlocutor, Bellator], [],
    [17], [Runs With the Pack], [Wilderness & Travel], [Explorator, Bellator], [],
    [18], [Charts the Unknown], [Wilderness & Travel], [Explorator, Savant], [],
    [19], [Lives Off the Land], [Wilderness & Travel], [Explorator, Bellator], [B],
    [20], [Was Born Behind the Wheel], [Wilderness & Travel], [Explorator, Furcifer], [],
    [21], [Hunts the Things in the Dark], [Weird], [Savant, Adept, Bellator], [◈],
    [22], [Walks Between Worlds], [Weird], [Adept, Savant], [◈],
    [23], [Made a Bargain With Something Old], [Weird], [Any], [◈],
    [24], [Is More Than Human], [Weird], [Any], [◈],
  )]
  , kind: table
  )

// ART: A wall of portraits, each subject marked by a different craft: blade, quill, mask, map, ward.
#art-fill(min: 6cm)[A wall of portraits, each subject marked by a different craft: blade, quill, mask, map, ward.]
#include "chapter-6.3-combat-focuses.typ"

#include "chapter-6.4-stealth-and-precision-focuses.typ"

#include "chapter-6.5-knowledge-focuses.typ"

#include "chapter-6.6-social-focuses.typ"

#include "chapter-6.7-wilderness-focuses.typ"

#include "chapter-6.8-weird-focuses.typ"

#include "chapter-6.9-design-notes.typ"

