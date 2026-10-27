// Module D — Downtime (Torchbearer, Imperium Maledictum)
// Include after Module C, outside any columns block.
// Replaces Module B.4 and the Players' Turn when used.
// Playtest values throughout; not compiler-validated.
== Module D --- Downtime (Torchbearer, Imperium Maledictum)
#columns(2, gutter: 6mm)[
Downtime is the stretch between expeditions when the party is safe enough to recover, prepare, build, and answer to the people around them. It has three jobs: *recover and prepare* (treat injuries, restore tags, restock), *make and grow* (craft, research, adapt to loss), and *connect* (tend allies, settle obligations, push on the wider world). It adds no new currency; it runs on Checks, Power, clocks, and Woe.

=== D.1 When It Applies
- *Haven:* downtime begins when the party reaches a place with shelter, food, and enough safety that nobody expects an attack tonight. The GM decides.
- *Field rests stay separate:* Core Rules §6.5 rests and Module B's night's rest and Grind-condition recovery work as written. They give no Checks or endeavours.
- *A stay ends* when the party leaves or is forced out. Finished work stands; clocks keep their progress.
- *Replaces B.4:* with Module D, the Players' Turn follows these rules.

=== D.2 The Stay
An *interval* is one full week. Healing intervals (Core Rules §6.6) run alongside it.

#table(columns: (20%, 46%, 34%),
  table.header([Stay], [Length], [Free Checks per PC]),
  [*Brief*], [Up to 3 days], [1],
  [*Ordinary*], [About a week (1 interval)], [2],
  [*Extended*], [Each further full week is another interval], [+1 per extra interval],
)

- *Checks:* free Checks add to any earned on the expedition (B.4). Spend 1 Check per endeavour. Unspent Checks are lost when the stay ends. You may give a Check to a PC whose endeavour you join.
- *Stay Woe:* the stay starts with 1 Woe per PC, replacing expedition Woe. Woe from downtime rolls joins this pool, which pays for the stay's event, complications, and danger clocks, then is discarded (§9.2).
- *Momentum* decays at the end of each scene and never leaves the stay (§9.1). *Tychē Points* refresh only if downtime begins a new session (§4.1); invokes, declares, and compels work as normal.
- *Goals:* at the end of the stay, each player writes one Goal for the next expedition (§3.5).

=== D.3 Upkeep
Staying costs something. The stay carries an *Upkeep clock of 6*; a setting may resize it or replace it with its own currency.

#table(columns: (22%, 16%, 62%),
  table.header([Standard], [Ticks / interval], [What it provides]),
  [*Meagre*], [0], [Shelter and food. Truth: _Poor Rest_ (+1 step to Recuperate)],
  [*Ordinary*], [1], [Reliable lodging and meals],
  [*Comfortable*], [2], [Privacy and workspace. Truth: _Well Appointed_ (−1 step to Recuperate and Make)],
  [*Hosted*], [0], [A host provides everything. Truth: _Obligation_ to the host],
)

- *If the clock fills:* the haven demands payment. The GM gains 2 Stay Woe, a Debt complication appears, and the clock resets to 2.
- *Routine provisioning* (restock Supplies to 4, ordinary repairs) needs no roll and ticks Upkeep by 1.

=== D.4 Endeavours
An *endeavour* is a stretch of focused effort during the stay.

- *Routine:* if failure would add nothing and the outcome is certain, no roll. It generates no Power or Momentum (§6.6).
- *Uncertain:* roll the listed skill against Standard 15, adjusted by Truths, and spend Power on Effects (§5). Unspent Power becomes Momentum, which decays.
- *Success at a Cost:* the GM adds a consequence, or the stay pool gains 1 Woe (player's choice, §2.5).
- *Failure:* the effort does not take. The GM announces any consequence before another attempt, and the stay pool gains 1 Woe.
- *Light or Strenuous:* a character with a lasting injury who takes a Strenuous endeavour does not progress that injury's healing interval this interval (§6.6).

*Shared endeavours* have one goal for the party or a subgroup and cost 2 Checks from the participants' pooled Checks. Choose a lead, who rolls. Participants Help as in §2.4, within the +2 bonus-die cap. The result benefits all participants, who need not pay equally.

#table(columns: (18%, 11%, 22%, 49%),
  table.header([Endeavour], [Tag], [Skill], [Typical Effects]),
  [*Recuperate*], [Light], [Medicine, Empathy, Craft], [Restore; restore a burned tag; mark an injury _treated_ (−1 tier)],
  [*Prepare*], [Strenuous], [Survival, Persuade, Drive/Pilot], [Create a Truth (_Provisioned_, _Passage Arranged_); Discover],
  [*Make and Mend*], [Strenuous], [Craft, Tech], [Advance a project clock; Create; restore a depleted artifact (A.2)],
  [*Investigate*], [Light], [Investigate, Lore, Notice], [Discover; confirm a rumour (C.4)],
  [*Develop*], [Light], [Varies], [Advance a Scar or loss-adaptation clock (D.5)],
  [*Connect*], [Light], [Persuade, Empathy, Intimidate], [Create a contact Truth; subtle cypher (A.1); Advance a faction clock],
  [*Sustain*], [Strenuous], [Craft, Persuade, Lore], [Remove Upkeep segments],
)

For an unlisted activity, the GM names a skill, a Light or Strenuous tag, and the nearest Effects.

- *Recuperate* counts as appropriate care (§6.6). Limit: 1 tier per lasting injury, then _treated_ until a healing interval removes a tier. It restores one burned tag (§3.4). It cannot remove a Scar, refill pools, or clear an affliction beyond what its source allows.
- *Prepare* supplies Superiority (§10.3) only against a named opposition declared beforehand, one category per stay, and only if the preparation is concrete. The cap of 3 per conflict still applies.

=== D.5 Projects
A *project* is a goal too big for one endeavour: an 8- or 12-segment clock (§7) ticked by Advance. Each roll toward it costs 1 Check.

#table(columns: (62%, 10%, 28%),
  table.header([Project], [Size], [Notes]),
  [Crafting a notable item, restoring a workshop], [8], [Needs access and materials],
  [Restoring a depleted artifact (A.2)], [8], [Needs fitting tools],
  [Adapting to permanent harm (§6.8): prosthesis, retraining, workaround], [8], [Does not remove a Scar],
  [Changing a Scar (§6.3)], [12], [Completing the clock counts as the milestone],
  [Changing a site (C.6)], [8], [A Site Truth],
  [Changing a region (C.6)], [12], [A Region Truth],
)

- *Milestones:* for long projects the GM names 2--3 (_secure the premises_, _obtain equipment_, _complete the work_).
- *Minimum time:* a project cannot finish faster than the fiction allows.
- *Unfinished projects* keep their progress until the next stay.
- *Optional: Study Toward an Advance* (off by default). A 6-segment clock ticked in Develop endeavours; when it fills, the character gains 1 XP. Use it only if training should feed advancement (§12 has no training rule).

=== D.6 Between-Adventure Events
Roll d12 once at the start of an ordinary stay, before endeavours are declared, or choose a fitting result. In an Extended stay, roll again every second interval after the first. An event offers a choice; it never removes the stay.

#table(columns: (7%, 14%, 24%, 33%, 22%),
  table.header([d12], [Family], [What changed], [Offer], [If ignored]),
  [1--2], [*Quiet*], [Nothing disturbs the party], [Plans proceed], [---],
  [3], [*Opportunity*], [A specialist passes through], [One endeavour gets −1 step Difficulty (_Expert Help_)], [They leave],
  [4], [*Opportunity*], [A bargain on supplies], [Routine provisioning ticks no Upkeep], [The chance passes],
  [5], [*Relationship*], [An ally is in trouble], [A shared endeavour helps them; create a favour Truth], [Their clock ticks],
  [6], [*Relationship*], [A rival or old acquaintance arrives], [Compel a tag or Belief; Connect or Intimidate to change the relationship], [They act against the party],
  [7], [*Obligation*], [A past promise comes due], [1 Check discharges it; refusing adds a weakness tag (_Owes X_)], [The GM may compel it],
  [8], [*Obligation*], [Costs rise], [+1 Upkeep tick; Sustain is −1 step this stay], [Debt grows],
  [9], [*Settlement*], [A service is short-handed], [Truth _Short-Handed_: +1 step to Recuperate and Make], [Services stay limited],
  [10], [*Settlement*], [A dispute, festival, or quarantine], [Connect gets −1 step; arrival or departure may be restricted], [The mood hardens],
  [11], [*Consequence*], [Word of the last expedition arrives], [A reputation Truth (good or bad)], [It spreads],
  [12], [*Consequence*], [A faction advances its plan], [Tick a faction or danger clock by 1 and reveal it], [It ticks again at the stay's end],
)

=== D.7 The Stay in Order
+ *Establish:* the GM names the haven, its services, and the stay length.
+ *Show deadlines:* reveal known changes, clocks, and obligations.
+ *Set Upkeep:* choose a standard (D.3).
+ *Event:* roll or choose (D.6).
+ *Declare:* players declare individual and shared endeavours and spend Checks.
+ *Resolve:* play out only the consequential scenes. Healing intervals run alongside.
+ *World update:* tick only clocks tied to established plans or deadlines. The GM may spend Stay Woe to tick danger clocks.
+ *Close:* discard leftover Checks and Stay Woe, record unfinished projects, write a Goal, and prepare to depart.

*Example.* The party spends an ordinary week (2 free Checks each) at a river outpost. Ysolde has a tier-3 injury; Brannock needs a new tool kit. The event is d12 = 9: the outpost is _Short-Handed_. They choose Ordinary upkeep (1 tick). Ysolde takes Recuperate (Light): routine care, no roll, and the injury is marked _treated_ (tier 3 to tier 2). She does nothing Strenuous, so her healing interval continues. Brannock starts an 8-segment kit project; he and Ysolde pool 2 Checks for a shared Make and Mend push. Brannock rolls Craft, Ysolde Helps, and 3 Power Advances 3 segments. At the close the clock keeps its progress and each player writes a Goal.
]
