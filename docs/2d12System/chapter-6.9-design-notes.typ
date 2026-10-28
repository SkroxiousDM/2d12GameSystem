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
- #strong[Once-per-session \"auto-wins\"] (One Shot, The Reveal, Not Here, Become Them, The Right Person): these are deliberate spotlight moments. If several players have them, the GM may limit the table to one per scene.
- #strong[Overlap with playbook abilities:] a few Focus abilities echo playbook abilities (Beast Lore / Monster Lore, Trap Sense / Escape Artist). That\'s intended for off-type characters; for on-type characters, the two don\'t stack. Take the better one.
- #strong[★ distribution:] every Focus has exactly one ★ option, and it\'s never the Tier 1 ability, so you can always reach Tier 3 at full Refresh.
- #strong[Gaps for v0.3:] a dedicated faith/priest Focus (non-Weird reading: \"Keeps the Faith\"), a scholar-of-war Focus, a merchant/trader Focus, and a performer/artist Focus.
]
  
