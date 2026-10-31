// RETIRED HISTORICAL DRAFT — not included in the active rulebook.
// Phase 1 decision §8 retired the Legacy subsystem; chapter-2.6.5-recovery.typ
// no longer includes this fragment. Do not insert it into §6.9 or add a Legacy
// currency row to the Quick Reference. The mechanics below are retained only
// as historical design text, not playable rules. Echo and other exceptions to
// Region/Campaign Truth creation remain deferred to playtesting.
// Historical playtest values: starting pool 2 + sessions + Belief bonus, cap 6.

=== 6.9 Legacy
When a character dies, something of them can outlast the death. The death itself is not softened: the Dying clock (§6.7) or an immediate death resolves as written, and nothing here stops it. Legacy only decides what the table keeps afterwards.

#strong[When it applies.] A Legacy Pool is created when a #strong[player character dies] (the third Dying segment is marked, or an immediate death is resolved). Retirement from a fourth Scar (§6.3) does not create one unless the group agrees. A named NPC ally the party cared about may leave a pool of 2, if the GM allows it.

#strong[Starting value.] Set the pool when the character dies:
- #strong[2 points], plus
- #strong[1 point] for every session the character appeared in, plus
- #strong[1 point] if the death advanced one of the character's Beliefs or Goals (the player and GM agree that it did).

The pool holds at most #strong[6 points]. Legacy points don't decay, and rest doesn't restore them. Once the pool is empty, the legacy is spent. Each dead character has their own pool. The player keeps the dead character's sheet at the table as a reference.

#strong[Who can spend.] A living PC may spend from a pool if their character is #strong[linked] to the dead one: the Focus link, an ally or rival prompt, a shared Belief, or a bond the group agrees to. The table may vote to extend this to others. A player may spend at most #strong[1 Legacy point per scene], from one pool.

#figure(table(columns: (24%, 10%, 66%),
  table.header([Spend], [Cost], [Effect]),
  [#strong[A Trick They Knew]], [1], [For one roll outside a conflict, use the dead character's rating in one of their skills if it is higher than yours. You may also use one of their power tags as if it were yours (it counts toward the +2 tag cap). Describe how they showed you.],
  [#strong[A Helping Hand]], [1], [When you act on one of the dead character's Beliefs or Goals, gain +1 bonus die on that roll (it counts toward the +2 bonus die maximum). It can't be used on a roll that contradicts that Belief or Goal.],
  [#strong[A Story They Told Me]], [1], [Make a free #emph[Discover] (as if you had spent 1 Power) about something the dead character knew or could plausibly have known. Give the answer as something they once said to you. The GM answers truthfully but may limit it to what they knew.],
  [#strong[Unfinished Business]], [0], [When the party completes or decisively advances something the dead character left undone, add #strong[1 point] to that pool (once per matter, up to the cap).],
))

#strong[Against the grain.] If you spend Legacy in a way that contradicts the dead character's Belief, the GM gains #strong[1 Woe]. The effect still works; the dead have opinions.

#strong[Keepsake (optional).] When a character dies, the player may choose one of their power tags to pass on. It becomes a #strong[Keepsake tag] on an object or a person the character left behind (a lucky charm, not the sword). The holder may burn it once for an automatic +1 Power on a success (§3.4). The tag is gone for good once burned. Keepsake tags don't count toward the holder's own tags until burned, and each death leaves at most one.

#strong[Echo (optional).] When the last point is spent, the group may name the dead character's legacy as a #strong[Region or Campaign Truth] (#emph[Mara's Ferry is trusted on the river]). The GM approves it and records its scope, rank and removal condition (§8). It has no clock, since the character paid for it.

#strong[In brief.]
- Character dies: pool = 2 + 1 per session appeared in + 1 if the death advanced a Belief or Goal (max 6).
- Linked PCs spend 1 point per scene: skill and tag, bonus die, or a free Discover.
- Finishing the dead character's business refills 1 point. Acting against their Belief gives the GM 1 Woe.
- The pool doesn't decay or rest-restore. At 0, it is spent.
