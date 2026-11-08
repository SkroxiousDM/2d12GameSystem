#import "common.typ": *

// =====================================================================
//  CHAPTER — GENERIC FOCUSES
// =====================================================================
#chapter("Generic Focuses", [Twenty-four setting-neutral Focuses complete the sentence: "...who [Focus]." Each one has two power tags, a weakness, a link to another player character, and tiered abilities with a choice at Tiers 2 and 3.], epigraph: [The verb of the character sentence.])


== 1. Focus Rules
#columns(2, gutter: 6mm)[
=== 1.1 What a Focus Gives You
#figure(
  [#table(
    columns: (25%, 75%),
    align: (auto,auto,),
    table.header([Element], [Detail],),
    table.hline(),
    [#strong[Power tags];], [2],
    [#strong[Weakness tag];], [1 (can be compelled for Tychē Points)],
    [#strong[PC link];], [A prompt that connects you to another player character],
    [#strong[Tier 1 ability];], [Fixed; gained at creation for free],
    [#strong[Tier 2 ability];], [#strong[Choose 1 of 2];; after 3 Advances, costs an Advance],
    [#strong[Tier 3 ability];], [#strong[Choose 1 of 2];; after 6 Advances, costs an Advance],
  )]
  , kind: table
  )

- #strong[The other option:] once you\'ve reached a tier, you may take its unchosen option later as a normal Advance.
- #strong[★ Major:] costs 1 Refresh when taken (Core Rules §4.1). Every Focus has exactly one ★ option, always at Tier 3, so you can always choose a path that keeps your Refresh.
- #strong[Any playbook can take any Focus.] The \"Suits\" line is a suggestion.
#colbreak()
- #strong[Changing Focus:] at a major milestone, with GM approval, you can swap your Focus. You keep Tier 1 of the new one and rebuy higher tiers with Advances.

=== 1.2 Weird Focuses ◈
Focuses marked #strong[◈ Weird] assume the supernatural, impossible technology, or both. In mundane settings the GM removes them from the list. Every other Focus works in any genre.

=== 1.3 Shared Rules Reminders
- Free bonus dice from Focuses still count toward the #strong[+2 bonus die maximum];. Free waives only the stated resource cost, not action requirements, rotation or participation limits.
- Abilities that add bonus above the tag cap only do so for the tag they name, and are limited to #strong[+1 above the normal +2 cap (maximum +3)] unless stated otherwise.
- #strong[Cost reductions:] for Effects other than Create, only one cost reduction applies to a single Effect unless an explicit rule says otherwise. #strong[Create is an explicit exception:] each stated Create discount reduces its cost by 1 Power, to a minimum of 1, from the baseline 2 Power per Truth rank (Core Rules §5). Relevance alone supplies no discount.
- #strong[Automatic success:] use the ability's listed Power for an otherwise permitted action under Core Rules §10.5. It does not rescue a trumped action, grant an extra turn, change the script or win the whole conflict by itself. No roll produces no dice-based critical or complication.
- #strong[Separate benefits:] additional Power, Disposition loss and status tiers affect only their stated component. Ordinary conflict Attacks and Feints inflict no status or pool loss without explicit permission (§10.6). A general Effect reference does not settle the open supplementary action-permission list (§5).
- #strong[Healing and payments:] Restore-cost discounts do not lift the ordinary 1-tier lasting-injury treatment limit (§6.6). Generic prevention, redirection, Resistance and incidental clearing cannot cancel protected payments (§10.7). Later healing does not restore Disposition, refresh an injury trade or erase a Scar, and returning a Taken Out ally to an ongoing conflict requires explicit permission (§6.4).
]
  
== 2. Quick Reference
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
    [19], [Lives Off the Land], [Wilderness & Travel], [Explorator, Bellator], [],
    [20], [Was Born Behind the Wheel], [Wilderness & Travel], [Explorator, Furcifer], [],
    [21], [Hunts the Things in the Dark], [Weird], [Savant, Adept, Bellator], [◈],
    [22], [Walks Between Worlds], [Weird], [Adept, Savant], [◈],
    [23], [Made a Bargain With Something Old], [Weird], [Any], [◈],
    [24], [Is More Than Human], [Weird], [Any], [◈],
  )]
  , kind: table
  )

#include "chapter-6.3-combat-focuses.typ"

#include "chapter-6.4-stealth-and-precision-focuses.typ"

#include "chapter-6.5-knowledge-focuses.typ"

#include "chapter-6.6-social-focuses.typ"

#include "chapter-6.7-wilderness-focuses.typ"

#include "chapter-6.8-weird-focuses.typ"

#include "chapter-6.9-design-notes.typ"

