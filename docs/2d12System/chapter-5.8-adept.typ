#import "common.typ": *


#pagebreak(weak: true)
== 8. Adept
#playbook-art-side("06-adept.jpg", "Adept playbook character art")[
#quote(block: true)[
Power from beyond the ordinary: magic, psionics, faith, or impossible technology. Mages, psychics, priests, hackers, gadgeteers.
]

#figure(
  [#table(
    columns: (24%, 76%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Mēt / Psy / Pne)];], [7 / 8 / 9 / 12],
    [#strong[Edge];], [Pneuma 2 (Arcana Adepts) or Psychē 2 (Tech Adepts), plus 1 in any other pool],
    [#strong[Anchor skill];], [Arcana (magic, faith, psionics) or Tech (hacking, gadgets)],
    [#strong[Suggested skills];], [+4 Arcana · +3 Lore, Will · +2 Notice, Medicine, Persuade · +1 Investigate, Empathy, Deceive, Tech],
    [#strong[XP trigger];], [Address a challenge with your powers or gadgets],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2):] #emph[touched by the Other] · #emph[disciplined mind] · #emph[sees what others can\'t] · #emph[blessed] · #emph[tinkerer\'s genius] · #emph[fluent in the old pacts]
]

=== 8.1 Core Feature --- Domain (free)
Every Adept has a #strong[Domain];: a broad power tag describing what they can do (#emph[fire];, #emph[healing];, #emph[telekinesis];, #emph[shadows];, #emph[machines];, #emph[networks];, #emph[the dead];, #emph[weather];).

- #strong[Workings:] within your Domain, you can attempt any effect with your anchor skill. The GM sets Difficulty by scope:

#figure(
  [#table(
    columns: (21.78%, 32.67%, 45.54%),
    align: (auto,auto,auto,),
    table.header([Scope], [Difficulty], [Example (Domain: fire)],),
    table.hline(),
    [Minor, personal], [Easy 12], [Light a candle, warm your hands],
    [Significant], [Standard 15], [Hurl a firebolt, melt a lock],
    [Dramatic], [Hard 18], [Wall of flame across a street],
    [Spectacular], [Formidable 21], [Set a ship ablaze],
    [World-shaking], [Heroic 24 (usually a Ritual)], [Call down a firestorm],
  )]
  , kind: table
  )

- #strong[Cost:] each working costs #strong[1 point] from Pneuma (Arcana) or Psychē (Tech), in addition to any Effort.
- #strong[Backlash:] doubles on a failure or cost cause a backlash. The GM picks a fitting status for you (#emph[burned-2], #emph[drained-2], #emph[glitched-2]) or a wild effect, in addition to the normal complication. Backlash still applies in conflicts.
- Your Domain counts as a power tag on workings (inside the +2 cap).

#strong[In a scripted conflict,] Domain scope decides only whether a working fits and what it can affect. The working uses a permitted scripted action and resolves normally (independent or versus); scope doesn't change the Difficulty or add a roll. It adds no status to an ordinary Attack (Core Rules §10.5--10.6). The Testament of Dust Occultist uses the same rule.

=== 8.2 Special Abilities
#figure(
  [#table(
    columns: (5%, 14%, 81%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Focused Channel];], [#ability(
      trigger: [You make a working inside your Domain without using Effort on that roll.],
      cost: [The working costs #strong[0 pool points].],
      benefit: [Waive the working cost.],
      limit: [This waives only the 1-point working cost; Backlash still applies.],
    )],
    [2], [#strong[Ward];], [#ability(
      trigger: [You create a protective status with Enhance, or a warded ally Resists supernatural or tech-based harm.],
      cost: [The normal Enhance cost.],
      benefit: [You can create protective statuses (#emph[warded-X]). While warded, an ally reduces supernatural or tech-based harm by #strong[+1 tier] when Resisting.],
      limit: [Only supernatural or tech-based harm, and only while warded.],
    )],
    [3], [#strong[Sense the Unseen];], [#ability(
      trigger: [You ask about #strong[hidden supernatural or technological forces] nearby, or such forces are used near you.],
      cost: [No additional cost.],
      benefit: [Ask a free Discover question about those forces. You always notice when such forces are used near you.],
      limit: [The free question is once per scene.],
    )],
    // PLAYTEST: Overchannel limited to once per roll.
    [4], [#strong[Overchannel];], [#ability(
      trigger: [You use Effort for Power on a working.],
      cost: [The normal Effort cost, and take #emph[strained-1] as an accepted payment.],
      benefit: [Gain #strong[+2 Power] instead of +1.],
      limit: [Once per roll. Once recorded, #emph[strained-1] recovers normally.],
    )],
    [5], [#strong[Ritual];], [#ability(
      trigger: [You have time, materials and a safe place for a working.],
      cost: [The time, materials and safe place. This ability adds no resource cost.],
      benefit: [Run the working as a #strong[progress clock] instead of a single roll (8 segments for Formidable, 12 for Heroic). Ritual results can create Site or Region Truths.],
      limit: [Only with time, materials and a safe place.],
    )],
    [6], [#strong[Bound Servant];], [#ability(
      trigger: [You send your servant (a minor spirit, construct or drone with one power tag and one weakness) to scout, carry messages or handle simple tasks.],
      cost: [No additional cost.],
      benefit: [It scouts (one free Discover per scene in places it can reach), carries messages or handles simple tasks.],
      limit: [One free Discover per scene. It can't fight: it's an asset, not a conflict participant (Core Rules §10.9).],
    )],
    [7], [#strong[★ Second Domain];], [#ability(
      trigger: [You make a working.],
      cost: [No additional cost.],
      benefit: [Gain a second Domain. Workings in it use the same rules.],
      limit: [No additional limit.],
    )],
    // PLAYTEST: Weary fallback (exhausted-2) for games without Module B.
    [8], [#strong[★ Unleash];], [#ability(
      trigger: [You make a working.],
      cost: [Afterwards, take #emph[Weary] (Module B; without it, #emph[exhausted-2] until a night's rest) or lose 3 points (paid in full) from your casting pool. Either is an accepted payment.],
      benefit: [The working hits #strong[every target] in an area or group, using #strong[Area Effects] (Core Rules §10.17). Explicit statuses apply at full tier to each target, and conflict Disposition loss follows the same procedure.],
      limit: [Once per scene.],
    )],
    [◆], [#strong[Ascendant];], [#ability(
      trigger: [You make a Heroic-scope working. In a conflict, declare it before the roll for your normal action.],
      cost: [No cost for the first use. If you use it again before your next downtime, gain a Pneuma or Psychē Scar.],
      benefit: [The working succeeds automatically with #strong[5 Power], no ritual required.],
      limit: [Once per session. A trumped action stays trumped. In a versus test it wins unless the other side also succeeds automatically, which makes a tie. No roll means no doubles.],
    )],
  )]
  , kind: table
  )

=== 8.3 Starting Equipment
#strong[Signature focus (choose 1)]

#figure(
  [#table(
    columns: (10%, 37%, 53%),
    align: (auto,auto,auto,),
    table.header([Genre], [Option A], [Option B],),
    table.hline(),
    [Fantasy], [#strong[Staff or wand] (1) --- #emph[conduit];; +1 to workings, #emph[+1 Defend] (staff)], [#strong[Holy symbol or ancestral talisman] (0) --- #emph[faith made solid];; Resist supernatural harm with Edge +1],
    [Modern], [#strong[Occult focus] (ring, chalk, athame) (0) --- #emph[conduit];], [#strong[Custom cyberdeck / laptop] (1) --- #emph[my rig];; +1 to Tech workings],
    [Sci-Fi], [#strong[Psi-amp headset] (1) --- #emph[amplifier];; +1 to psionic workings], [#strong[Neural jack & cyberdeck] (1) --- #emph[direct interface];; +1 to Tech workings],
  )]
  , kind: table
  )

#strong[Playbook kit]

#figure(
  [#table(
    columns: (7.92%, 34.65%, 28.71%, 28.71%),
    align: (auto,auto,auto,auto,),
    table.header([Load], [Fantasy], [Modern], [Sci-Fi],),
    table.hline(),
    [1], [Grimoire or prayer book], [Occult library on a tablet], [Encrypted data archive],
    [1], [Spell components pouch], [Salt, chalk, candles & herbs], [Spare power cells & focus crystals],
    [1], [Ritual dagger --- #emph[+1 Attack];], [Pistol --- #emph[+1 Attack];], [Sidearm blaster --- #emph[+1 Attack];],
    [1], [Warding charms ×2 (0-Power #emph[warded-1] once each)], [Talismans ×2 (same)], [Firewall chips ×2 (same)],
    [1], [Robes of the order (light armour, #emph[marks my calling];)], [Long coat with hidden pockets (light armour)], [Insulated bodysuit (light armour)],
    [1], [Scrying bowl or crystal], [Drone with camera], [Micro-drone swarm (Bound Servant gear)],
  )]
  , kind: table
  )

#strong[Always carried (0):] Fantasy: a small familiar token, incense. Modern: tarot deck, phone. Sci-Fi: diagnostic implant, data spike.

=== 8.4 BIG Examples
- #strong[Belief:] \"Power is a debt, and I always pay my debts.\" / \"Knowledge should be free; locks are an insult.\"
- #strong[Goal:] \"Seal the rift before the new moon.\" / \"Crack the corporation\'s archive.\"
- #strong[Instinct:] \"Always ward the room before I sleep.\" / \"Never use my power in front of the authorities.\"

#strong[Relationships:] Ally --- your teacher, a fellow initiate, an entity you\'ve bargained with. Rival --- a rival practitioner, a hunter of your kind, the order that cast you out.

