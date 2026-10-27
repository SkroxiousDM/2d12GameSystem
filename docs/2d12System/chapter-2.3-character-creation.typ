#import "common.typ": *

== 3. Character Creation
  #columns(2, gutter: 6mm)[
=== 3.1 The Sentence
#quote(block: true)[
#strong[\"I am a \[Descriptor\] \[Playbook\] who \[Focus\].\"]

\"I am a #strong[Reckless] #strong[Furcifer] who #strong[Never Leaves Anyone Behind];.\"
]

#figure(
  [#table(
    columns: (20%, 15%, 65%),
    align: (auto,auto,auto,),
    table.header([Part], [Grammar], [What it gives you],),
    table.hline(),
    [#strong[Descriptor];], [Adjective], [+2 pool points to one pool, 1 power tag, 1 weakness tag, 1 suggested Instinct],
    [#strong[Playbook];], [Noun], [Starting pools and Edge, special abilities, XP trigger, load-out, an anchor skill],
    [#strong[Focus];], [Verb phrase], [A tag theme (2 power tags + 1 weakness), a Tier 1 Focus ability, and a link to another PC],
  )]
  , kind: table
  )

=== 3.2 Pools and Edge
Four pools, each roughly 6--14:

- #strong[Starting values:] the playbook sets the base (totals 36), plus 4 points to distribute and +2 from the Descriptor (42 total).
- #strong[Edge:] the playbook gives #strong[3 points of Edge];, maximum 2 in any one pool at creation. Edge reduces the cost of Effort from that pool and adds dice when you Resist with it (§6).
- Pools are spent on #strong[Effort] (§2.4) and #strong[Resistance] (§6). They are your stress tracks.
#figure(
  [#table(
    columns: (20%, 40%, 40%),
    align: (auto,auto,auto,),
    table.header([Pool], [Covers], [Resists],),
    table.hline(),
    [#strong[Sōma];], [Strength, endurance, toughness], [Wounds, poison, exhaustion, cold],
    [#strong[Akmē];], [Speed, precision, stealth, reflexes], [Traps, falls, being caught or grabbed],
    [#strong[Psychē];], [Intellect, perception, memory, cunning], [Confusion, illusion, deception, madness from knowledge],
    [#strong[Pneuma];], [Will, presence, faith, emotional core, the supernatural], [Fear, despair, possession, corruption, social pressure],
  )]
  , kind: table
  )


=== 3.3 Skill Pyramid
Ten rated skills from a list of 20:

#figure(
  [#table(
    columns: (66%, 34%),
    align: (auto,auto,),
    table.header([Rating], [Count],),
    table.hline(),
    [+4 Great], [1],
    [+3 Good], [2],
    [+2 Fair], [3],
    [+1 Average], [4],
  )]
  , kind: table
  )

The playbook\'s anchor skill must sit at +3 or +4. The pyramid rule (each tier must have at least as many skills as the tier above it) still applies when you advance.

#strong[Generic skill list by default pool:]

#figure(
  [#table(
    columns: (23%, 24%, 28%, 25%),
    align: (auto,auto,auto,auto,),
    table.header([Sōma], [Akmē], [Psychē], [Pneuma],),
    table.hline(),
    [Athletics], [Shoot], [Notice], [Will],
    [Brawl], [Stealth], [Investigate], [Persuade],
    [Fight], [Drive/Pilot], [Lore], [Intimidate],
    [Endure], [Craft], [Tech], [Empathy],
    [Survival], [], [Medicine], [Arcana\*],
    [], [], [Deceive], [],
  )]
  , kind: table
  )

\*Arcana is renamed per setting: Mysticism, Faith, Psionics, Weirdness, or removed entirely in mundane games.

The default pool pays for Effort and Resistance. The GM can allow another pool when the fiction supports it (Intimidate with Sōma = looming; with Pneuma = cold menace).
=== 3.4 Tags
Characters carry 6--8 #strong[character tags] from Descriptor, Focus, and Playbook:

- #strong[Power tags] (e.g. #emph[ex-navy marksman];, #emph[silver tongue];, #emph[grandfather\'s revolver];): +1 each when relevant, #strong[max +2 per roll];.
- #strong[Weakness tags] (e.g. #emph[owes the wrong people];, #emph[bad knee];): −1 when relevant, or compel for a Tychē Point (§4).
#colbreak()
- #strong[Any tag can be compelled.] A power tag can also cause trouble when its meaning creates a concrete complication. It keeps its normal benefits (§4).
- #strong[Burning a tag:] mark a power tag as burned to gain an automatic +1 Power on a success. It stays unusable until you recover it (a downtime action or a milestone). Burning ignores the +2 cap.

With a +2 cap, a third relevant tag is best used for burning or as Tychē Point invoke material.

=== 3.5 Beliefs, Instincts, Goals
- #strong[Belief] --- a moral stance or conviction. \"The law protects the powerful; I protect everyone else.\"
- #strong[Instinct] --- an if/then reflex. \"Always check the exits when entering a room.\" Acting on an Instinct lets you take that action without spending time.
- #strong[Goal] --- a concrete objective for this session or mission. \"Get Mara out of the precinct before dawn.\"

Goals are rewritten each session; Beliefs and Instincts can change at milestones.

=== 3.6 Starting Resources
- #strong[Tychē Points:] start each session with Tychē Points equal to your #strong[Refresh] (base 3; see §4.1).
- #strong[Load-out:] chosen during play from the playbook\'s gear list (Blades-style light/normal/heavy load), not bought in advance.
  ]