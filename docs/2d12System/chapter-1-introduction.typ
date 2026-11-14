#import "common.typ": *
//
//  CHAPTER I — INTRODUCTION
// =====================================================================
#counter(page).update(1)
#chapter("Introduction",
  [The 2d12 System is a setting-neutral engine for tabletop roleplaying. This chapter explains what this book contains, how its rules are named and how settings build on it.],
  epigraph: [Roll 2d12 + Skill + Modifiers vs. Difficulty.])

#columns(2, gutter: 5mm)[
== About This Book

This core rulebook holds the complete, setting-neutral rules of the 2d12 System: the engine, six optional modules, and generic Descriptors, Playbooks and Focuses that work in any genre.

#figure(table(columns: (10%, 20%, 70%),
  table.header([Ch.], [Chapter], [Contents]),
  [I], [Introduction], [Terminology, renamed stats, notation, settings],
  [II], [Core Rules], [The 2d12 roll, character creation, Tychē Points, Effects, Resistance and recovery, clocks, Truths, Momentum and Woe, the conflict system, playbooks, advancement],
  [III], [Optional Modules], [Module A Cyphers & Artifacts · Module B The Grind & Travel · Module C Truth-Driven Sandbox · Module D Downtime · Module E Factions · Module F Inquiry & Revelation],
  [IV], [Adversaries], [GM rules for adversaries and opposition],
  [V], [Generic Descriptors], [Descriptor rules and 24 setting-neutral Descriptors, six per pool],
  [VI], [Generic Playbooks], [Playbook and equipment rules; Bellator, Furcifer, Savant, Interlocutor, Explorator, Adept],
  [VII], [Generic Focuses], [Focus rules and 24 setting-neutral Focuses],
  [App.], [Quick Reference], [The roll, Difficulty, outcomes, bonus dice, recovery and the four currencies at a glance],
))

When a rule here mentions another chapter, it uses that chapter's name and section number. For example, *Core Rules §4.1* means Chapter II, section 4.1. A bare reference such as *§6* points to a section in the same chapter. Setting books use the same chapter names when they refer back to this book.
== Notation

- *★ Major.* An ability that costs *1 Refresh* when you take it, at creation or through advancement. Taken as a creation extra, it costs *2 Refresh total*, including the extra ability's 1-Refresh price (Generic Playbooks §1.1–1.2).
- *◆ Capstone.* Unlocked after *12 Advances* if you have at least 4 abilities from that playbook. Take it as an Advance; it costs no Refresh, and each character can have one.
- *◈ Weird.* A Focus that assumes the supernatural, strange technology or other weird elements. Each setting decides which ◈ Focuses it allows and how its world reacts to them.
- *Tags* are written in _italics_, such as _scarred knuckles_. *Statuses* add a tier, such as _wounded-2_.
- *Difficulty* is written by name and target, such as *Standard 15* or *Hard 18*.

#sidebar("Settings")[
  The 2d12 System has no setting of its own. A setting book adds Campaign Truths, a skill list, its own Descriptors, Playbooks and Focuses, and special rules for its creatures and dangers. Where a setting rule and a general rule conflict, the setting rule wins.
]

== Terminology 

#figure(table(columns: (22%, 54%),
  table.header([House name], [What it is]),
  [*Woe*], [The GM's pool: complications and escalation],
  [*Momentum*], [The party's shared pool of surplus Power ],
  [*Tychē* / *Tychē Points*], [Each PC's narrative currency: invoke tags, accept compels; set by Refresh],
  [*Sōma*], [Pool: strength, endurance, toughness, vitality. Resists wounds, poison, exhaustion, cold],
  [*Mētis*], [Pool: alacrity, speed, precision, stealth, reflexes. Resists traps, falls, being caught],
  [*Psychē*], [Pool: mind, intellect, perception, memory, cunning. Resists confusion, illusion, deception],
  [*Pneuma*], [Pool: spirit, will, presence, faith, the supernatural. Resists fear, despair, possession, corruption],
))

#figure(table(columns: (22%, 54%),
  table.header([House name], [Generic core playbook]),
  [*Bellator*], [Front-line muscle; anchor Fight or Brawl],
  [*Furcifer*], [Infiltrator, scout, thief; anchor Stealth],
  [*Savant*], [Scholar, detective, scientist; anchor Lore or Investigate],
  [*Interlocutor*], [Diplomat, con artist, leader; anchor Persuade],
  [*Explorator*], [Ranger, pilot, explorer; anchor Survival],
  [*Adept*], [Mage, psychic, hacker; anchor Arcana or Tech],
))

- *Pool shorthand.* Playbook stat blocks list base pools as *Sōm / Mēt / Psy / Pne* (Sōma / Mētis / Psychē / Pneuma).
- *Scars* take the name of the pool most tied to the condition that caused them: a *Pneuma Scar*, a *Psychē Scar* (Core Rules §6.3).
]
