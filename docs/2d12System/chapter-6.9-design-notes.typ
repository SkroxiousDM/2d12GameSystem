#import "common.typ": *

== 9. Design Notes
#columns(2, gutter: 6mm)[
=== 9.1 Coverage by Playbook
#figure(
  [#table(
    columns: (19%, 81%),
    align: (auto,auto,),
    table.header([Playbook], [Strong fits],),
    table.hline(),
    [Bellator], [1, 2, 3, 4, 6, 16, 17, 19, 21],
    [Furcifer], [1, 3, 4, 5, 6, 7, 8, 11, 13, 14, 20],
    [Savant], [7, 9, 10, 11, 12, 15, 18, 21, 22],
    [Interlocutor], [2, 8, 10, 11, 13, 14, 15, 16],
    [Explorator], [1, 2, 3, 5, 6, 9, 12, 17, 18, 19, 20],
    [Adept], [7, 9, 10, 12, 21, 22, 23],
    [Any], [23, 24],
  )]
  , kind: table
  )

Off-type combinations are encouraged: an #emph[Interlocutor who Masters a Weapon] is a duellist-diplomat; an #emph[Adept who Was Born Behind the Wheel] is a witch with a haunted truck.

=== 9.2 Things to Watch in Playtest
- #strong[Tag-cap exceptions] (Masters a Weapon, Is More Than Human): #strong[resolved (v0.3)] --- both abilities now add #strong[+1 above the normal +2 cap (maximum +3 from tags)] instead of ignoring the cap outright. Re-test rolls at Formidable/Heroic Difficulty after this change to confirm it still feels earned rather than trivial.
- #strong[Once-per-session automatic successes] (One Shot, The Reveal, Not Here, Become Them, The Right Person) are deliberate spotlight moments, not unrestricted conflict wins. Use each entry's scope and Core Rules §10.5: automatic success replaces the roll for an otherwise permitted action, not a trumped action, an unsuitable approach or the whole conflict. It grants no extra turn, free script change or expanded stakes. No roll produces no dice-based critical or complication. If several players have them, a table-wide one-per-scene limit is a possible playtest variant, not an active restriction imposed by these notes.
- #strong[Overlap with playbook abilities:] a few Focus abilities echo playbook abilities (Beast Lore / Monster Lore, Trap Sense / Escape Artist). That\'s intended for off-type characters; for on-type characters, the two don\'t stack. Take the better one. This overlap guidance does not replace the core rule allowing explicit Create discounts to accumulate to the normal minimum cost (Core Rules §5).
- #strong[★ distribution:] every Focus has exactly one ★ option, and it\'s never the Tier 1 ability, so you can always reach Tier 3 at full Refresh.
- #strong[Timing and payments:] free or immediate wording must follow the ability's actual trigger and action requirements; it does not retroactively cancel independently resolving actions. Generic prevention, redirection and incidental clearing do not cancel injury-trade payments, running-dry statuses, agreed concession costs or other accepted payments (Core Rules §10.5, §10.7).
- #strong[Gaps for v0.3:] a dedicated faith/priest Focus (non-Weird reading: \"Keeps the Faith\"), a scholar-of-war Focus, a merchant/trader Focus, and a performer/artist Focus.
]
  
