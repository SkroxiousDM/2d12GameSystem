#import "tod-common.typ" : *
// =====================================================================
//  CHAPTER — FRONTIER PLAYBOOKS
// =====================================================================
#chapter("Frontier Playbooks", [Nine ways to earn a living hunting the things that hunt humanity. Six reskin the generic playbooks; the Mutant, the Cyborg Hunter and the Warden are new to the Frontier.], epigraph: [Sellsword · Stalker · Frontier Doctor · Broker · Rider · Occultist · Mutant · Cyborg Hunter · Warden])

== Playbook Overview
#figure(
  [#table(
    columns: (4.95%, 13.86%, 10.89%, 12.87%, 22.77%, 34.65%),
    align: (auto,auto,auto,auto,auto,auto,),
    table.header([\#], [Playbook], [Reskin of], [Anchor], [Base pools (Sōm / Mēt / Psy / Pne)], [Role],),
    table.hline(),
    [1], [Sellsword], [Bellator], [Fight or Brawl], [12 / 10 / 6 / 8], [Front-line Hunter, bodyguard, stake-driver],
    [2], [Stalker], [Furcifer], [Stealth], [8 / 12 / 8 / 8], [Estate thief, assassin, day-hunter of sleeping vampires],
    [3], [Frontier Doctor], [Savant], [Medicine or Old Lore], [7 / 8 / 13 / 8], [Healer, scholar, treats the bled],
    [4], [Broker], [Interlocutor], [Persuade], [7 / 9 / 9 / 11], [Bounty broker, gambler, village elder, negotiator],
    [5], [Rider], [Explorator], [Frontier], [11 / 11 / 7 / 7], [Tracker, scout, marksman, horse-master],
    [6], [Occultist], [Adept], [Occult or Science], [7 / 8 / 9 / 12], [Psychic, curse-witch, old-world scavenger],
    [7], [Mutant], [New], [Athletics or Stealth], [11 / 11 / 6 / 8], [Monster-blooded fighter and infiltrator],
    [8], [Cyborg Hunter], [New], [Shoot or Fight], [12 / 9 / 9 / 6], [Rebuilt killer with implants],
    [9], [Warden], [New], [Craft], [10 / 9 / 9 / 8], [Village defender, trap-maker, siege leader],
  )]
  , kind: table
  )

#strong[Dhampirs] are not a playbook. Any playbook can take the Focus #emph[Carries Her Mother\'s Blood] (#emph[Frontier Focuses];).

#strong[Skill names] follow #emph[Frontier Rules] §3 (Ride, Frontier, Old Lore, Science, Occult).

#pagebreak()
#include "tod-playbooks-sellsword.typ"
#pagebreak(weak: true)
#include "tod-playbooks-stalker.typ"
#pagebreak(weak: true)
#include "tod-playbooks-frontier-doctor.typ"
#pagebreak(weak: true)
#include "tod-playbooks-broker.typ"
#pagebreak(weak: true)
#include "tod-playbooks-rider.typ"
#pagebreak(weak: true)
#include "tod-playbooks-occultist.typ"
#pagebreak(weak: true)
#include "tod-playbooks-mutant.typ"
#pagebreak(weak: true)
#include "tod-playbooks-cyborg-hunter.typ"
#pagebreak(weak: true)
#include "tod-playbooks-warden.typ"
#pagebreak()
== 10. Design Notes
=== 10.1 Balance Targets
#figure(
  [#table(
    columns: (14%, 21%, 24%, 26%, 15%),
    align: (auto,auto,auto,auto,auto,),
    table.header([Playbook], [Main pool], [Conflict role], [Exploration role], [Social role],),
    table.hline(),
    [Sellsword], [Sōma], [Attack / Defend, killing strikes], [Forcing obstacles], [Intimidation],
    [Stalker], [Mētis], [Feint / Maneuver], [Estates by day, security], [Deception],
    [Frontier Doctor], [Psychē], [Maneuver (Discover), Restore], [Investigation, healing, the bled], [Expertise, trust],
    [Broker], [Pneuma], [Negotiation and Argument lead], [Rumours, contacts], [Persuasion, contracts],
    [Rider], [Sōma/Mētis], [Ranged Attack, Chase, Hunt], [Travel, Grind, tracking], [Local knowledge],
    [Occultist], [Pneuma/Psychē], [Flexible (Domain), Duel of Wills], [Supernatural and old-world access], [Varies by Domain],
    [Mutant], [Sōma/Mētis], [Attack / Maneuver], [Climbing, hiding, wastelands], [Monsters and servants],
    [Cyborg Hunter], [Sōma], [Ranged Attack, heavy firepower], [Old-world machines, estates], [Intimidation],
    [Warden], [Sōma/Psychē], [Siege of the Night, Defend], [Preparation, fortification], [Villagers, local law],
  )]
  , kind: table
  )

=== 10.2 Things to Watch in Playtest
- #strong[Mutant and Cyborg core features] each grant two tagged abilities for free, more than other playbooks. They\'re balanced by #emph[Feared and Despised] (Mutant) and glitches and a low Pneuma pool (Cyborg). If they outshine others, drop to 1 free Mutation or Implant.
- #strong[Hard to Kill vs. More Machine Than Man:] the Cyborg capstone is strong by design at 12 Advances. Watch that it doesn\'t end the threat of mundane harm entirely.
- #strong[Warden] is strongest in sieges and weaker on estate raids. Make sure the campaign has both, or let the Warden\'s traps travel (Trapmaker works anywhere).
- #strong[Free bonus dice] (Stake Driver, Horse-Bond, Targeting eye, Combat Mode, Full Transformation) still count toward the +2 bonus die maximum.
- #strong[★ count:] each playbook has two Major abilities and a free capstone, as in #emph[Generic Playbooks];.
- #strong[Hex] gives the Occultist a ninth ability. It costs a Tychē Point and the GM can buy it off for 2 Woe, so it trades one problem for another rather than winning a fight. Watch whether it lands on every boss roll.