#import "common.typ": *

== Module D --- Downtime (Torchbearer, Imperium Maledictum) 
#columns(2, gutter: 4mm)[ 
Downtime is the stretch between expeditions when the party is safe enough to recover, prepare, build and answer to the people around them. It has three equal jobs: #strong[recover and prepare] (treat injuries, restore tags, restock), #strong[make and grow] (craft, research, adapt to loss) and #strong[connect] (tend allies, settle obligations, push on the wider world). Module D adds #strong[no new currency]. It runs on Checks, Power, clocks and Woe, all of which already exist.

=== D.1 When It Applies

- #strong[Haven.] Downtime begins when the party reaches a place with shelter, food and enough safety that nobody expects an attack tonight: a village, outpost, monastery, camp or home base. The GM decides.
- #strong[Field rests stay separate.] Core Rules §6.5 rests and Module B's night's rest and Grind recovery work as written, and give no Checks or endeavours. Reaching a haven isn't a reset: pools, statuses and Scars follow their own recovery rules.
- #strong[A stay ends] when the party leaves the haven or is forced out. Finished work stands; clocks keep their progress.
- #strong[Replaces Module B.4.] If you use Module D, the Players' Turn follows these rules.

=== D.2 The Stay 
  #strong[Length and intervals.] An #strong[interval] is one full week. Healing intervals (Core Rules §6.6) run alongside it. #emph[All numbers in this module are playtest values.]

#figure( [#table( columns: (22%, 44%, 34%), align: (auto,auto,auto,), table.header([Stay], [Length], [Free Checks per PC],), table.hline(), [#strong[Brief];], [Up to 3 days], [1], [#strong[Ordinary];], [About a week (1 interval)], [2], [#strong[Extended];], [Each further full week is another interval], [+1 per extra interval], )] , kind: table )

- #strong[Checks.] Free Checks are added to any Checks earned on the expedition (B.4: applying a weakness tag or Scar to your own roll). Spend #strong[1 Check] for one endeavour. Unspent Checks are lost when the stay ends. You may give a Check to another PC whose endeavour you join.
- #strong[Stay Woe.] The GM does not use expedition Woe in downtime. The stay starts with #strong[1 Woe per PC]. Woe gained from downtime rolls joins this pool, which pays for the stay's event, complications and danger clocks, then is discarded (Core Rules §9.2).
- #strong[Momentum] gained in downtime decays at the end of each scene and never leaves the stay (Core Rules §9.1). #strong[Tychē Points] do not refresh unless the downtime begins a new session (Core Rules §4.1); invokes, declares and compels work as normal.
- #strong[Goals.] At the end of the stay, each player writes one Goal for the next expedition (Core Rules §3.5).
- #strong[World Turn (Module E).] If Module E is in use, a stay contains #strong[one World Turn] (E.10). It uses no Checks and no Stay Woe.

=== D.3 Upkeep 
  Staying costs something. Instead of a currency, the stay carries an #strong[Upkeep clock of 6]. Settings may change its size or replace it with their own currency.

#figure( [#table( columns: (22%, 16%, 62%), align: (auto,auto,auto,), table.header([Standard], [Ticks / interval], [What it provides],), table.hline(), [#strong[Meagre];], [0], [Shelter and food. Truth: #emph[Poor Rest] (+1 step to Recuperate)], [#strong[Ordinary];], [1], [Reliable lodging and meals], [#strong[Comfortable];], [2], [Privacy and workspace. Truth: #emph[Well Appointed] (−1 step to Recuperate and Make)], [#strong[Hosted];], [0], [A host provides everything. Record an obligation (E.7): the service owed, its limits, notice, and what settles it.], )] , kind: table )

- #strong[If the clock fills:] the haven demands payment. The GM gains 2 Stay Woe, the party gains the Truth #emph[In Debt to the Haven] (removed when the debt is settled with a Sustain endeavour or agreed payment), and the clock resets to 2.
- #strong[Routine provisioning] (restock party Supplies to 4, ordinary repairs) needs no roll and ticks Upkeep by 1.
- #strong[Hospitality isn't free,] but a host creates an obligation only when the terms are agreed. A vague \"you owe me\" is an open negotiation (E.7).

=== D.4 Endeavours 
  An #strong[endeavour] is a stretch of focused effort during the stay.

- #strong[Routine.] If failure would add nothing and the outcome is certain, no roll is needed. It generates no Power and no Momentum (Core Rules §6.6).
- #strong[Uncertain.] If the result matters, roll the listed skill against #strong[Standard 15], adjusted by Truths. Spend Power on Effects (Core Rules §5). Unspent Power becomes Momentum, which decays.
- #strong[Success at a Cost:] the GM adds a consequence, or the stay pool gains 1 Woe (player's choice, Core Rules §2.5). #strong[Failure:] the effort doesn't take, the stay pool gains 1 Woe, and the GM announces any consequence before another attempt.
- #strong[Light or Strenuous.] A character with a lasting injury who takes a Strenuous endeavour does not progress that injury's healing interval this interval (Core Rules §6.6).

#strong[Scenes that become conflicts.] A consequential, actively opposed struggle may need a scripted conflict instead of one endeavour roll (Core Rules §10.1). Then use the conflict rules (Core Rules §10.5--10.7), not the Standard 15 and Effect menu above. Checks and Help grant no extra scripted turn, and a shared endeavour doesn't give each contributor their own Disposition.

#strong[Shared endeavours.] A shared endeavour has one goal for the party or a subgroup. It costs #strong[2 Checks, paid from the participants' pooled Checks].

- Choose a lead. Each participant describes their contribution.
- The lead rolls. Participants add Help as in Core Rules §2.4, within the +2 bonus-die cap.
- Spend Power as usual. The result benefits all participants.
- Participants need not pay equally. Non-participants pay nothing.

#figure( [#table( columns: (19%, 15%, 22%, 44%), align: (auto,auto,auto,auto,), table.header([Endeavour], [Tag], [Skill], [Typical Effects],), table.hline(), [#strong[Recuperate];], [Light], [Medicine, Empathy, Craft], [Restore; restore a burned tag; mark an injury #emph[treated] (−1 tier)], [#strong[Prepare];], [Strenuous], [Survival, Persuade, Drive/Pilot], [Create a Truth (#emph[Provisioned];, #emph[Passage Arranged];); Discover], [#strong[Make and Mend];], [Strenuous], [Craft, Tech], [Advance a project clock; Create; restore a depleted artifact], [#strong[Investigate];], [Light], [Investigate, Lore, Notice], [Discover; confirm a rumour (C.4)], [#strong[Develop];], [Light], [Varies], [Advance a Scar or loss-adaptation clock (D.5)], [#strong[Connect];], [Light], [Persuade, Empathy, Intimidate], [Create a contact Truth (D.6a); subtle cypher (A.1); Advance a faction clock only if the affected project is established (E.10)], [#strong[Sustain];], [Strenuous], [Craft, Persuade, Lore], [Remove Upkeep segments], )] , kind: table )

For an unlisted activity, the GM names a skill, a Light or Strenuous tag and the nearest Effects.

- #strong[Recuperate] counts as appropriate care (Core Rules §6.6) but doesn't change treatment limits: at most 1 tier per lasting injury, then #emph[treated] until a healing interval removes a tier. It restores #strong[one] burned tag (Core Rules §3.4). It can't remove a Scar, refill pools or clear an affliction beyond what its source allows, and it doesn't return a Taken Out participant to a conflict (Core Rules §6.4).
- #strong[Prepare] can supply Superiority (Core Rules §10.3) only against #strong[named opposition declared beforehand], only one category per stay, and only if the preparation is concrete. The cap of 3 per conflict still applies, and one preparation can't be renamed into several categories.

=== D.5 Projects 
  A #strong[project] is any goal too big for one endeavour. Use an #strong[8- or 12-segment clock] (Core Rules §7), ticked by Advance. Each roll toward it costs 1 Check.

#figure( [#table( columns: (62%, 10%, 28%), align: (auto,auto,auto,), table.header([Project], [Size], [Notes],), table.hline(), [Crafting a notable item, restoring a workshop], [8], [Needs access and materials], [Restoring a depleted artifact (A.2)], [8], [Needs fitting tools], [Adapting to permanent harm (Core Rules §6.8): prosthesis, retraining, workaround], [8], [Does not remove a Scar], [Changing a Scar (Core Rules §6.3)], [12], [Completing the clock counts as the milestone], [Changing a site (C.6)], [8], [A Site Truth], [Changing a region (C.6)], [12], [A Region Truth], )] , kind: table )

- #strong[Milestones.] For long projects, the GM names 2--3 milestones along the clock, such as #emph[secure the premises];, #emph[obtain equipment];, #emph[complete the work];.
- #strong[Minimum time.] A project cannot finish faster than the fiction allows, whatever the Checks.
- #strong[Unfinished projects] keep their progress until the next stay.
- #strong[Optional: Study Toward an Advance.] Off by default. A 6-segment clock, ticked in Develop endeavours. When it fills, the character gains #strong[1 XP]. Use it only if your table wants training to feed advancement directly (Core Rules §12 has no training rule).

=== D.6 Between-Adventure Events 
  Roll d12 once at the start of an ordinary stay, #strong[before] endeavours are declared, or choose a result that fits the fiction. In an Extended stay, roll again every second interval after the first. An event should offer a choice, not remove the stay.

#figure( [#table( columns: (auto, auto, 1fr, 1.15fr, 0.95fr), align: (auto,auto,auto,auto,auto,), table.header([d12], [Family], [What changed], [Offer], [If ignored],), table.hline(), [1--2], [#strong[Quiet];], [Nothing disturbs the party], [Plans proceed], [---], [3], [#strong[Opportunity];], [A specialist passes through], [One endeavour gets −1 step Difficulty (#emph[Expert Help];)], [They leave], [4], [#strong[Opportunity];], [A bargain on supplies], [Routine provisioning ticks no Upkeep], [The chance passes], [5], [#strong[Relationship];], [An ally is in trouble], [A shared endeavour helps them; create a favour Truth], [Their clock ticks], [6], [#strong[Relationship];], [A rival or old acquaintance arrives], [Compel a tag or Belief; Connect or Intimidate to change the relationship], [They act against the party], [7], [#strong[Obligation];], [A past promise comes due], [1 Check discharges it if it is within the agreed terms (E.7). Refusing it follows E.7 (one Standing).], [The creditor presses the claim], [8], [#strong[Obligation];], [Costs rise], [+1 Upkeep tick; Sustain is −1 step this stay], [Debt grows], [9], [#strong[Settlement];], [A service is short-handed], [Truth #emph[Short-Handed];: +1 step to Recuperate and Make], [Services stay limited], [10], [#strong[Settlement];], [A dispute, festival or quarantine], [Connect gets −1 step; arrival or departure may be restricted], [The mood hardens], [#box[11--12]], [#strong[Consequence];], [A faction's plan shows], [Reveal the result of that faction's latest declared project action (E.10). This is not an extra tick.], [It is harder to answer next stay], )] , kind: table )

=== D.6a Reputation in Downtime
Downtime does not create reputation by itself. Distinguish the following:

- #strong[Standing] (E.3) changes only through consequential deeds a faction learns of and attributes to the party.
- A #strong[reputation tag] records what a character is known for. It comes from character growth or setting rules, not from a Connect endeavour, and counts toward the tag cap unless an ability says otherwise.
- An ability may make a reputation a #strong[Campaign Truth], like the Bellator capstone #emph[Legend of the Field] (Generic Playbooks §3.1).
- A #strong[contact Truth] (D.4 Connect) names a relationship with a person and what it makes possible. It isn't a reputation tag and doesn't change Standing.

Momentum, Woe and scene-scale Create can't buy reputation (E.11). A relationship Truth (E.3) shifts Difficulty and a reputation tag adds to the roll; both can apply.

=== D.7 The Stay in Order

- #strong[Establish.] The GM names the haven, its services and the stay length.
- #strong[Show deadlines.] Reveal known changes, clocks and obligations.
- #strong[Set Upkeep.] Choose a standard (D.3).
- #strong[Event.] Roll or choose (D.6).
- #strong[Declare.] Players declare individual and shared endeavours and spend Checks.
- #strong[Resolve.] Play out only the consequential scenes. Healing intervals run alongside.
- #strong[World update.] Take the World Turn here, after endeavours resolve, so the stay's results (Standing changes, evidence Truths, completed favours) are part of E.10 step 1. Without Module E, tick only clocks tied to established plans or deadlines. The GM may spend Stay Woe to tick danger clocks, but never to advance a faction project (E.10).
- #strong[Close.] Discard leftover Checks and Stay Woe. Record unfinished projects, write a Goal, prepare to depart.

#strong[Example.] The party spends an ordinary week (2 free Checks each) at a river outpost. Ysolde has a tier-3 injury; Brannock needs a new tool kit. The event is d12 = 9: the outpost is short-handed (#emph[Short-Handed];). They choose Ordinary upkeep (1 tick). Ysolde spends 1 Check on Recuperate (Light): routine care, no roll, and the injury is marked #emph[treated] (tier 3 to tier 2). She does nothing Strenuous, so her healing interval continues (Core Rules §6.6). Brannock and an uninjured companion pool 2 Checks for a shared Make and Mend push on an 8-segment kit project. Brannock rolls Craft, the companion Helps within the normal bonus-dice cap, and 3 Power Advances 3 segments. Ysolde does not join that Strenuous endeavour. At the close the project clock keeps its progress, and each player writes a Goal. ]