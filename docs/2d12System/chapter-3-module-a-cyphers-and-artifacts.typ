#import "common.typ": *

== Module A --- Cyphers & Artifacts (Cypher)
#columns(2, gutter: 6mm)[
Cyphers are frequent, disposable power-ups that encourage players to use them rather than hoard them. Artifacts are rare, reusable items that may run out.

=== A.1 Cyphers
  #strong[Sample cypher table (d12):]

#figure(
  [#table(
    columns: (6.06%, 28.28%, 8.08%, 57.58%),
    align: (auto,auto,auto,auto,),
    table.header([d12], [Cypher], [Tier], [Effects],),
    table.hline(),
    [1], [Healing salve / med-gel], [2], [Restore],
    [2], [Smoke charge], [2], [Create (#emph[smoke cover];)],
    [3], [Flashbang / thunderstone], [3], [Attack (dazed), Weaken],
    [4], [Truth serum / mind-read charm], [2], [Discover ×2],
    [5], [Adrenal shot], [3], [Enhance (surging), restore 3 Sōma],
    [6], [Lockbreaker], [3], [Advance (any lock or security clock)],
    [7], [Ward token], [3], [Negate one incoming status of tier 3 or less],
    [8], [Phase key], [4], [Create Truth (#emph[passage through the wall];) for one scene],
    [9], [Courage draught], [2], [Restore (fear), restore 2 Pneuma],
    [10], [Seeker], [2], [Discover (location of one person or object)],
    [11], [Firebomb], [4], [Attack (on fire), Create (#emph[burning];)],
    [12], [Wild card], [d6], [Player names a reasonable Effect; GM sets the form],
  )]
  , kind: table
  )
- #strong[What they are:] one-use items or effects --- potions, grenades, scrolls, nanite injectors, blessed relics, strange tech. Each has a #strong[tier (1--6)];.
- #strong[Using one:] an action, usually with #strong[no roll];. The cypher generates #strong[Power equal to its tier];, spent only on the Effects listed on the cypher. Some create a Truth or a story tag instead.
- #strong[Cypher Limit:] each PC can carry #strong[2] cyphers (some playbooks or Focuses grant 3).
- #strong[Over the limit:] at the end of each scene, the GM gains 1 Woe per extra cypher and may trigger a #strong[Volatile] result (roll d12: 1--4 one cypher fires randomly; 5--8 one cypher is ruined; 9--12 nothing happens yet).
- #strong[Subtle cyphers] (setting option): instead of physical objects, cyphers are luck, insights, or favours (\"a contact owes you\", \"a flash of insight\"). They work the same way and fit low-magic or modern games.
- #strong[GM pacing:] give out 1--2 cyphers per PC per session. They should feel like loot that gets spent.

#strong[Cypher format:]

#quote(block: true)[
#strong[Flashbang] (Tier 3) --- #emph[Effects:] Attack (dazed), Weaken. #emph[Form:] palm-sized canister. #strong[Draught of Iron Skin] (Tier 2) --- #emph[Effects:] Enhance (armoured), Restore. Lasts one scene.
]

=== A.2 Artifacts
- #strong[What they are:] reusable items of real power --- a flaming sword, a psychic amplifier, a starship\'s AI core.
- #strong[Tags:] an artifact has 1--2 power tags (counting toward the +2 cap) and usually a special ability.
- #strong[Depletion:] each artifact has a depletion rating, e.g. #strong[1 in d12];. After each use, roll d12; on that number or lower, it is #strong[depleted] (broken, drained, or needs a downtime clock to restore).
- #strong[Attunement:] powerful artifacts (marked ★) must be attuned and #strong[cost 1 Refresh] while attuned (§4.1). A PC can attune to a maximum of 2 artifacts.
- #strong[Artifact quirks:] each artifact has a weakness tag that can be compelled for Tychē Points (#emph[thirsts for blood];, #emph[talks too much];, #emph[draws the Hunters];).

#strong[Artifact format:]

#quote(block: true)[
#strong[★ Ember-Brand] (longsword) --- #emph[Tags:] blade of living flame, +1 Attack (conflict gear). #emph[Ability:] spend 1 Power to add #emph[burning] to any status you inflict. #emph[Depletion:] 1 in d12 (goes cold until bathed in a forge). #emph[Quirk:] #emph[cannot be hidden];.
]
]
  