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
- #strong[Using one:] an action, usually with #strong[no roll];. The cypher generates #strong[Power equal to its tier];, spent only on the Effects listed on the cypher. Some create a Truth instead. Listed fixed benefits follow their own text; do not turn them into additional unrestricted Power.
- #strong[Cypher Limit:] each PC can carry #strong[2] cyphers (some playbooks or Focuses grant 3).
- #strong[Over the limit:] at the end of each scene, the GM gains 1 Woe per extra cypher and may trigger a #strong[Volatile] result (roll d12: 1--4 one cypher fires randomly; 5--8 one cypher is ruined; 9--12 nothing happens yet).
- #strong[Subtle cyphers] (setting option): instead of physical objects, cyphers are luck, insights, or favours (\"a contact owes you\", \"a flash of insight\"). They work the same way and fit low-magic or modern games.
- #strong[GM pacing:] give out 1--2 cyphers per PC per session. They should feel like loot that gets spent.

#strong[One Power budget.] Divide the cypher's generated Power among its listed Effects; a list of Effects does not grant the full budget to each. Create costs 2 Power per Truth rank before explicit discounts (Core Rules §5). For example, a tier-2 Smoke charge can spend its 2 Power on rank-1 smoke cover; a tier-4 Firebomb that spends all 4 Power on a rank-2 burning Truth has none left for its listed Attack. A harmful status, a Truth and shared Disposition loss are different components, not interchangeable descriptions of the same purchase.

#strong[Use in scripted conflicts.] No roll does not mean no action. An item entry must identify the scripted action or explicit triggered exception that permits its use. Apply automatic success only to an otherwise permitted action under Core Rules §10.5: it does not rescue a trumped action, change the script, reassign an actor, bypass rotation or allow use while Taken Out. No roll produces no dice-based critical or complication. A cypher's listed Effects permit those Effects within its stated use; they do not add them to every ordinary Maneuver or Defend.

#strong[Open mappings.] The short sample entries do not fully specify scripted action categories, versus interactions or immediate-use timing for every cypher. In particular, the Ward token's reaction timing and the scripted mapping of status-inflicting cyphers need explicit item text or a separate ruling. This pass does not supply those missing exceptions. Set them before resolution rather than inferring a free interrupt from the item's name or no-roll use.

#strong[Harm and protection.] An ordinary conflict Attack removes shared Disposition, not a harmful status. Status-inflicting cyphers use their explicitly listed harm component; they do not also remove Disposition unless the item expressly grants both. The Ward token and other generic prevention cannot negate ordinary Disposition loss, injury-trade payments, running-dry statuses, agreed concession costs or other protected payments (Core Rules §10.7).

#strong[Healing.] A cypher that merely lists Restore follows the normal limits for lasting injuries: ordinary treatment removes at most 1 tier, then marks the injury treated until a healing interval removes a tier (Core Rules §6.6). Its tier is a Power budget, not an explicit promise to heal that many injury tiers. An item expressly healing a stated number of tiers follows its own text. Restoring Sōma or Pneuma does not clear a status, refund an injury trade or erase a Scar; healing does not itself return a Taken Out ally to an ongoing conflict (§6.4).

#strong[Area.] A grenade, blast or spreading-fire description alone does not supply an unstated area mechanic. When an item explicitly has an area effect, establish everyone it can reach and use Core Rules §10.17: full listed or purchased status tier with separate Resistance or NPC reduction, or ordinary shared Disposition loss once plus 1 per additional opposing participant affected. Apply both layers only when expressly granted. A group represented by one rules entry counts as one participant, and allies are not automatically excluded.

#strong[Cypher format:]

#quote(block: true)[
#strong[Flashbang] (Tier 3) --- #emph[Effects:] Attack (dazed), Weaken. #emph[Form:] palm-sized canister. #strong[Draught of Iron Skin] (Tier 2) --- #emph[Effects:] Enhance (armoured), Restore. Lasts one scene.
]

For a complete playable entry, also state its action or trigger, targets, duration, removal conditions and any area or conflict exceptions. The short formats above are effect summaries, not complete timing specifications.

=== A.2 Artifacts
- #strong[What they are:] reusable items of real power --- a flaming sword, a psychic amplifier, a starship\'s AI core.
- #strong[Tags:] an artifact has 1--2 power tags (counting toward the +2 cap) and usually a special ability. Do not count its general item tag and conflict action tag twice for the same benefit on one roll (Core Rules §10.10).
- #strong[Depletion:] each artifact has a depletion rating, e.g. #strong[1 in d12];. After each use, roll d12; on that number or lower, it is #strong[depleted] (broken, drained, or needs a downtime clock to restore).
- #strong[Attunement:] powerful artifacts (marked ★) must be attuned and #strong[cost 1 Refresh] while attuned (§4.1). A PC can attune to a maximum of 2 artifacts.
- #strong[Artifact quirks:] each artifact has a weakness tag that can be compelled for Tychē Points (#emph[thirsts for blood];, #emph[talks too much];, #emph[draws the Hunters];).

An artifact's ability obeys its stated action requirements and the same conflict boundaries as a cypher. Switching equipment does not refresh a once-per-conflict benefit or restore a depleted item. Defend restores shared Disposition, not artifact charges or lost equipment, unless an explicit rule provides that additional effect.

#strong[Artifact format:]

#quote(block: true)[
#strong[★ Ember-Brand] (longsword) --- #emph[Tags:] blade of living flame, +1 Attack (conflict gear). #emph[Ability:] spend 1 Power to add #emph[burning] to any status you inflict. #emph[Depletion:] 1 in d12 (goes cold until bathed in a forge). #emph[Quirk:] #emph[cannot be hidden];.
]

Ember-Brand modifies a status that another permitted effect actually inflicts. Its ordinary conflict Attack tag does not itself inflict a status, and the ability does not turn Disposition loss into burning harm. Establish any status's tier, scope and removal condition under the normal status rules; do not infer a second free status or damage layer from the name.
]
  