#import "tod-common.typ" : *

== 16. Frontier Adversaries
Use the core Adversaries chapter for Rank, Role, ordinary Human/Beast/Guardian packages, encounter preparation, shared Disposition, scripting, rotation, Boss Phases and the common Special procedures. This section supplies the Frontier-specific construction exceptions and entries relocated from core. It adds no new action, phase permission, discount or Special slot.

References to #emph[Core Adversaries] point to that chapter in The 2d12 System, not to a section of Frontier Rules. Last Stand and Fail-safe retain their separate core procedures (§§6.10--6.11); a deferred setting Special uses Core Adversaries §6.12 only when its entry explicitly says so.

=== 16.1 Vampire Construction Exceptions
Use the following values when constructing an ordinary vampire adversary with the core card. Ratings, Guard, Shrugs, Roles and Special limits still follow core Rank. These allowances relocate the vampire exceptions; they are not additional bonuses to apply on top of the card.

#figure(table(columns: (25%, 25%, 25%, 25%),
  table.header([Rank], [Grit = Threat], [Power / weakness tags], [Introduction Woe]),
  [Minor], [3], [3 / 1], [1],
  [Established], [5], [4 / 1], [3],
  [Great], [8], [5 / 2], [5],
  [Paramount], [12], [5 / 2], [8],
))

Vampire Grit already includes the Threat Rank Disposition bonus (+0 / +2 / +4 / +6) in Frontier Rules §5.1. Do not add it again. Grit contributes to the side's shared starting Disposition; it is not a personal track. Introduction Woe is paid once, the first time the vampire appears in the campaign, not again for each encounter or new source fragment.

The construction table makes the inherited Rank-based tag allowances explicit; it does not add tags beyond them. Frontier Rules §5.3 supplies tag examples and the Pride procedure. Apply that procedure, Blood Debt (§5.4), killing methods (§8.1) and Sunlight Syndrome (§7.1) only in their stated scopes.

=== 16.2 Vampire Kind Package
- #strong[Hard to Kill.] Physical statuses normally stop at tier 5 unless an eligible killing method or explicit creature-specific rule permits otherwise (Frontier Rules §5.2, §7.1). Tier 5 is normally broken (−2 on physical rolls); Sun-Sick 5 instead causes collapse and Taken Out. Full-day direct-sun exposure of a vampire at Sun-Sick 5 advances it to 6 and destroys it by an automatic killing strike, without a roll or Dying clock (§7.1).
- #strong[Blood Debt.] −1 to all ratings at 4 segments, −2 at 5. Being broken ticks the clock. Staked's restricted equivalence for sustained fire and subsequent killing-strike Difficulty does not count as becoming broken for Blood Debt or other ability triggers (§8.1).
- #strong[Pride, Sun-Sick and killing methods] all apply.
- #strong[Killing strike.] A vampire side at 0 shared Disposition is defeated, not automatically wounded or destroyed. Name an eligible vampire and follow Frontier Rules §5.2, within the established lethal stakes; shared Disposition loss grants no physical status. Complete independent actions, determine victory or mutual defeat, resolve any permitted finishing procedure, then settle compromise (Core Rules §10.12).
- #strong[Introduction Woe,] paid once, the first time it appears in the campaign: Minor 1, Established 3, Great 5, Paramount 8.
- #strong[Woe Spends] (Presence, Uncanny Speed, Summon the Household) are open to every vampire and do not count against Specials.

#figure(table(columns: (22%, 8%, 70%),
  table.header([Special], [Woe], [Effect]),
  [Feed], [1], [After it wins a versus Attack in melee against a PC, record one deferred Bled-2 application against that PC (Core Adversaries §6.12). Outside conflicts, Bled-2 on the hit. It recovers 1 tier of physical status when used, not at deferred settlement.],
  [Unnatural Strength], [1], [+1 Power on a successful Attack. Outside conflicts, +2 tiers.],
  [Terrible Patience], [1], [Ignore one status or Blood Debt penalty for one roll.],
  [Fade], [2], [Create the Truth Deep Shadows. It may be gone when the light returns.],
  [Blood Price], [3], [Paramount only. Tick the campaign danger clock by 1 and restore 3 of its side's shared Disposition (up to the side's starting value).],
))

=== 16.3 Retainer-Clan Options
A retainer-clan adversary uses the core Human package and may select the following Specials within its normal Rank limit. These options do not replace Human Morale or grant Fanatic for free. A designated phased boss still follows the core phase-allocation and availability rules.

#figure(table(columns: (22%, 8%, 70%),
  table.header([Special], [Woe], [Effect]),
  [Shadow-meld], [0], [Retainer clan, once per scene. Step between shadows. May swap one revealed action for a Maneuver.],
  [Beast Form], [1], [Retainer clan. Attack becomes Best for the scene, and it gains the Beast package.],
))

Shadow-meld expressly permits changing a revealed action but does not permit actor reassignment, undoing resolved effects or cancelling independent actions retroactively. Beast Form retains its listed 1-Woe cost, scene duration and Beast package; the core fixed-category Desperate bonus does not move merely because this Special changes a rating.

=== 16.4 Using the Core Templates on the Frontier
The core Knife in the Dark can represent a retainer-clan human; its listed Dirty Trick, ratings, Grit and other mechanics do not change. Select additional clan options only through normal construction, not as free additions to the template. The Bounty Veteran's reputation tag may be described as #emph[a name the Kept know] on the Frontier; this reskins its listed reputation tag rather than adding another tag or bonus.
