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
- #strong[Using one:] an action, usually with #strong[no roll];. The cypher generates #strong[Power equal to its tier];, spent only on its listed Effects. Some create a Truth instead. Fixed benefits, such as #emph[restore 3 Sōma], happen as written and aren't Power.
- #strong[Cypher Limit:] each PC can carry #strong[2] cyphers. A setting ability may raise this.
- #strong[Over the limit:] at the end of each scene, the GM gains 1 Woe per extra cypher and may trigger a #strong[Volatile] result (roll d12: 1--4 one cypher fires randomly; 5--8 one cypher is ruined; 9--12 nothing happens yet).
- #strong[Subtle cyphers] (setting option): instead of physical objects, cyphers are luck, insights, or favours (\"a contact owes you\", \"a flash of insight\"). They work the same way and fit low-magic or modern games.
- #strong[GM pacing:] give out 1--2 cyphers per PC per session. They should feel like loot that gets spent.

#strong[One Power budget.] Split the Power among the listed Effects; each Effect doesn't get the full budget. Create costs 2 Power per rank (Core Rules §5): a tier-2 Smoke charge buys rank-1 #emph[smoke cover];, and a tier-4 Firebomb that buys a rank-2 #emph[burning] Truth has nothing left for its Attack.

#strong[In a scripted conflict,] using a cypher still takes a scripted action, or a trigger the item states. \"No roll\" means automatic success on an action that's otherwise allowed: it doesn't rescue a trumped action, change the script or bypass rotation, and it can't be used while Taken Out (Core Rules §10.5). With no dice, there's no critical or complication.

#strong[Which action.] A cypher with Attack among its Effects is used on a scripted Attack or Feint; any other cypher is used on a Maneuver. The Ward token is the exception: use it when a status would be inflicted on you, with no action, once per scene.
// PLAYTEST: default cypher action mapping and Ward token reaction timing (optional modules pass 1, flag A1).

#strong[Harm and protection.] An ordinary Attack removes Disposition, not a status. A status-inflicting cypher inflicts its listed status and removes no Disposition unless it says so. The Ward token can't negate Disposition loss, running-dry statuses or other protected payments (Core Rules §10.7).

#strong[Healing.] Restore on a cypher follows the normal limit for lasting injuries: treatment removes at most 1 tier, unless the item says otherwise (Core Rules §6.6). Restoring Sōma or Pneuma doesn't clear statuses, refund injury trades, erase Scars or return a Taken Out ally to the conflict (Core Rules §6.4).

#strong[Area.] Words like grenade or blast don't create an area effect by themselves. An item with an explicit area effect uses Core Rules §10.17.

#strong[Cypher format:]

#quote(block: true)[
#strong[Flashbang] (Tier 3) --- #emph[Effects:] Attack (dazed), Weaken. #emph[Form:] palm-sized canister. #strong[Draught of Iron Skin] (Tier 2) --- #emph[Effects:] Enhance (armoured), Restore. Lasts one scene.
]

A complete entry also states its action or trigger, targets, duration, removal conditions and any area or conflict exceptions.

=== A.2 Artifacts
- #strong[What they are:] reusable items of real power --- a flaming sword, a psychic amplifier, a starship\'s AI core.
- #strong[Tags:] an artifact has 1--2 power tags (counting toward the +2 cap) and usually a special ability. Its item tag and conflict gear tag don't both count for the same benefit on one roll (Core Rules §10.10).
- #strong[Depletion:] each artifact has a depletion rating, e.g. #strong[1 in d12];. After each use, roll d12; on that number or lower, it is #strong[depleted] (broken, drained, or needs a downtime clock to restore).
- #strong[Attunement:] powerful artifacts (marked ★) must be attuned and #strong[cost 1 Refresh] while attuned (Core Rules §4.1). A PC can attune to a maximum of 2 artifacts.
- #strong[Artifact quirks:] each artifact has a weakness tag that can be compelled for Tychē Points (#emph[thirsts for blood];, #emph[talks too much];, #emph[draws the Hunters];).

Artifact abilities follow the same conflict limits as cyphers. Switching equipment doesn't refresh a once-per-conflict benefit or restore a depleted item, and Defend restores Disposition only.

#strong[Artifact format:]

#quote(block: true)[
#strong[★ Ember-Brand] (longsword) --- #emph[Tags:] blade of living flame, +1 Attack (conflict gear). #emph[Ability:] spend 1 Power to add #emph[burning] to any status you inflict. #emph[Depletion:] 1 in d12 (goes cold until bathed in a forge). #emph[Quirk:] #emph[cannot be hidden];.
]

Ember-Brand only adds #emph[burning] to a status something else inflicts. Its Attack tag doesn't inflict a status, and Disposition loss doesn't become #emph[burning];.
]
  