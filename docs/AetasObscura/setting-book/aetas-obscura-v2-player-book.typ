// =============================================================================
// AETAS OBSCURA — Player's Book for The 2d12 System, Version 2
// Player-facing edition: the Secret History and all GM material are removed.
// Built on the Mythographer 5e Typst template (vendored in this folder).
// Compile from this folder:
//   typst compile --root . --font-path <fonts> aetas-obscura-v2-player-book.typ
// Fonts: TeX Gyre Bonum, Gillius ADF No2 (see README.md).
// =============================================================================

#import "/lib.typ": *

// Stop TeX Gyre Bonum from setting "oe" as a ligature (Woe, does, Phoebe).
#show regex("[Oo]e"): it => text(ligatures: false, it)
// Let tables break across columns and pages.
#show figure: set block(breakable: true)

#show: dnd-template.with(
  default-config(lang: "en", title: "Aetas Obscura", subtitle: "The Darkening Age — Player's Book", author: "SkroxiousDM"),
)

// ---------- House helpers --------------------------------------------------
#let rule(title, body) = dnd-comment[#title][#body]
#let gm(body) = dnd-sidebar()[For the Game Master][#body]
#let pool(n) = smallcaps(n)
#let tbl(cols, ..cells) = figure(table(columns: cols, ..cells))

#let statblock(name, line, body) = dnd-item[
  = #name
  == #line

  #body
]

#title-page(
  title: text(40pt)[Aetas Obscura],
  subtitle: [#v(8mm) #text(16pt)[The Darkening Age · Player's Book] \ #v(2mm) A Setting for The 2d12 System, Version 2],
  authors: (
    (name: [SkroxiousDM], organization: [github.com/SkroxiousDM/2d12GameSystem]),
  ),
  date: [Player's Book · First Edition · Anno Domini 500],
)

#show-outline()

= #flex-heading[Prologue][Prologue]

== #flex-heading[Using This Book][Using This Book]

#columns(2)[
  #dnd-dropcap[T][he Western Empire is gone][ — but in the year 500 most people do not quite believe it yet. Roman roads still carry the post. Roman law is still cited in Gothic courts. The Senate still meets. Beneath that brittle surface a hidden world of wizards, blood-drinkers, faerie Queens and starving gods is fighting over the bones of an age. This is *Aetas Obscura*, the Darkening Age.]

  This is the *Player's Book*. It gives you the world as your characters know it, the hidden powers as an informed person hears of them, and the rules you need to play. It does not replace the core rules.

  === What You Need
  - *The 2d12 System, Version 2 — Core Rulebook.* Every rule here assumes it: the 2d12 roll, Difficulties, Power and Effects, statuses, Resistance, Momentum and Woe, Truths, and scripted conflicts.
  - *The core Descriptors, Playbooks and Focuses.* This book adds no new Playbooks or Focuses. The chapter *Characters of the Age* shows how to dress the core ones for the year 500.

  === How the Book Is Organised
  - *Part I — The Darkening Age* is the world: the premise, the map, what the learned teach about reality, the Concordat, the hidden powers, the magi of the age, famous places and the timeline.
  - *Part II — Rules of the Hidden World* is the rules you use: campaign Truths, skills, origins, magic, worship, the Seven Seals, horror and taint, the Veiled Sphere, the blood-drinkers, oaths, setting conflicts and Truths.
  - *Appendices* hold the glossary and a quick reference.

  === What This Book Doesn't Tell You
  Everything here is something a well-read, well-travelled character could know or has heard. Much of it is rumour, teaching and reputation, and some of it is wrong. What the hidden powers really are, what they really want, and how the world really works is the story you will find at the table. The GM has a separate *Setting Book*. Please don't read it.

  === Terminology
  This book uses the house names of the 2d12 System throughout.

  #tbl((0.8fr, 0.9fr, 1.7fr),
    table.header[Generic][House name][In the fiction],
    [Threat], [*Woe*], [The GM's pool; the weight of the world pressing back],
    [Fate], [*Tychē*], [Fortune; the favour of whatever is listening],
    [Momentum], [*Momentum*], [The party's shared advantage],
    [Vitality], [*Sōma*], [Body],
    [Alacrity], [*Akmē*], [Vigour and the peak of action],
    [Mind], [*Psychē*], [Mind and memory],
    [Spirit], [*Pneuma*], [Breath, will, and magical potential],
  )

  The pool names are not decoration in this setting. *Pneuma* is the breath and will a magus spends to name the world (see *The Art of Names*), and the thing a long vigil at the altar leaves you short of.

  === Notation
  - *Difficulties:* Easy 12, Standard 15, Hard 18, Formidable 21, Heroic 24.
  - *Statuses* are written _name-tier_: _shaken-2_, _nemesion-3_.
  - *Clocks* are written as segments: a 6-clock, a 4-clock.
  - *★* marks an ability that costs Refresh, as in the core rules.
  - *§* references point to the core rulebook unless they name this book.

  === Sources
  This book is the player-facing edition of the *Aetas Obscura Setting Book*, and follows the *Player Primer* in `docs/AetasObscura` for what characters know.
]

= #flex-heading[The Darkening Age][The Darkening Age]

== #flex-heading[The Premise][The Premise]

#columns(2)[
  #dnd-readaloud[
    "The world is ending. It has been ending for a hundred years. The legions are gone, the gods are starving, and beneath the cracks in Rome the older things stir. We Sealed Ones have a name for this age: _Aetas Obscura_, the Darkening Age. We tell our students that we work to hold back the night. We do not tell them that the night has already swallowed half the lamps."

    — attributed to Theognostos of Smyrna, Magister of the Inner Seal, c. 497
  ]

  It is the Year of the Consulship of Patricius and Hypatius — _Anno Diocletiani_ 217, _Anno Domini_ 500. The Western Empire died a generation ago. Constantinople rules a brittle East. Persia waits across the Euphrates. Goths, Franks and Burgundians scrabble over Roman bones. The old gods are dying — but they are not dead, and what is replacing them is not always Christ.

  The hidden world is *more visible* now than it will ever be again. Wizards walk into Senate halls. Vampires hold Roman magistracies. Faerie embassies attend imperial weddings. The Church has not yet finished its long campaign to scour magic from the world, and the Concord of the Seven Seals — the wizards' council of the age — still keeps its hidden library beneath a Bithynian fort.

  Beneath the political theatre, something far worse is stirring. The Outer Ones — _Hoi Exō_, "those from outside" — press against the cracks in reality. A black pharaoh's cult has woken after a thousand-year sleep. Deep Ones swim again in the Tyrrhenian. The Yithians, scholars of time, are recording the end of something.

  The Darkening Age is not a metaphor.

  === Design Pillars
  - *The gods are real.* Prayers sometimes work. Rites performed correctly produce results. Gods can be pleased, displeased, distracted and weakened. What they really are is a question your characters may one day answer.
  - *Politics over plumbing.* Every faction has factions inside it. Every great power has a successor scheming.
  - *Cosmic horror with stakes.* The Mythos is real and unwinnable on its own terms, but human-scale victories matter. You cannot save the world. You can save your village, your apprentice, your friend.
  - *Late antiquity as a character.* Real places, real polities, real religions, used as the bones of the setting — then twisted.

  === What the Characters Are
  The characters are people who have seen behind the curtain and cannot stop seeing. Typical parties include:
  - a *Concord cell* — an apprentice under the Sword of Damocles, a Stylite, a physician of the School of Alexandria, and a fixer who knows the Senate;
  - a *Court's retinue* — a mortal sworn to a faerie Queen, her bargained-for servants, and a priest who should not be keeping such company;
  - *hunters* — a Fellowship of the Lance veteran, a Marian widow whose prayers are answered, and a scholar who has read too much Hesiod;
  - *the compromised* — a Lamia's thrall who broke free, a Gnostic courier, a Deep One hybrid who has not yet begun to change.

  === Tone
  Play the year 500 as a world of *provisional* things. Every institution is still standing and every one of them is hollow. The characters can win the scene, the city, even the decade. They cannot make the dark go away. Horror lands hardest when the table cares about something small that the dark can take.

  === Campaign Frames
  #tbl((1fr, 2fr),
    table.header[Frame][What the characters do],
    [*Under the Seal*], [Concord agents on probation, sent where the Inner Seal will not go itself. Patron: Damaskios or Boetius.],
    [*The Knight's Road*], [The retinue of a Court's mortal Knight, collecting debts and keeping the Mantle from being stolen.],
    [*The Blue Mantle*], [Hunters caught in the war between Mormo's sects and the Marian hunters who wear the Madonna's blue.],
    [*The Long Watch*], [A cell hunting the Brotherhood of the Black Pharaoh before its patient work comes due.],
    [*Last Roman*], [Sub-Roman Britain with Ambrosius Aurelianus: Saxons, Strigoi, the druid-lord Drest, and Long Night's gates.],
    [*Ērānšahr*], [Persia under Kavad and the Mazdakites, among the fire-priests of the Mobedān.],
  )
]

== #flex-heading[The World in 500 AD][The World in 500 AD]

#columns(2)[
  A brief tour, west to east, of the map your players will move across.

  #tbl((0.9fr, 1.2fr, 1.2fr),
    table.header[Region][Mortal power][Hidden powers most active],
    [*Britannia*], [Sub-Roman warlords; rising Saxon kingdoms], [Court of Long Night; Strigoi allied with Picts; the druid-lord Drest],
    [*Gaul*], [Franks under Clovis (Catholic since 496); Burgundians; Visigoths], [Burning Crown; Concord chapter at Tolosa],
    [*Hispania*], [Visigothic kingdom (Arian)], [Hounds of Set raiding-trails; ancient Iberian Free Folk],
    [*Italy*], [Ostrogoths under Theodoric, ruling from Ravenna], [House of Lamia; Concord chapter at Rome; Mormo's catacomb cabals],
    [*North Africa*], [Vandals under Thrasamund (Arian; persecutes Catholics)], [Hounds of Set (seat at Carthage); Brotherhood in the deep desert],
    [*Balkans*], [Eastern provinces raided by Bulgars and Slavs], [Strigoi homeland in Dacia],
    [*Constantinople*], [Anastasius I, an old and careful man], [Concord's largest chapter; Lamia diaspora; the Inner Seal's eastern chancery],
    [*Anatolia and Syria*], [Chalcedonian and Miaphysite strife], [Concord and theurgic schools; Order of Dagon on the Lebanese coast],
    [*Egypt*], [Alexandria seething with religious violence], [The Concord's Old Seat; a heretical "Coptic" order in the Faiyum; Marian hunters],
    [*Persia*], [Sasanians under Kavad I and the Mazdakites], [The Mobedān; Hounds of Set across the southern border],
    [*Arabia and Yemen*], [Tribal confederations; Jewish Himyar], [Djinn of the deep desert; a Deep One enclave in the Gulf],
    [*The Steppe*], [Hephthalite "White Huns"], [Court of Jade Breath],
  )

  === The Mood
  Most people in 500 do not believe Rome has fallen. Latin is still the language of Theodoric's chancery. The consuls are still named each year. It is exactly the right moment for a hidden world in which the _old_ powers are losing their grip and the _new_ ones — Christ, the Outer Ones, whatever comes next — are not yet supreme. Everything is provisional. Everything is up for grabs.

  === Peoples and Tongues
  Characters come from one of the great cultural spheres of the age. Each has a language of learning and a language of the street.

  #tbl((1fr, 2fr),
    table.header[Sphere][Peoples and languages],
    [*Romanitas*], [Italians, Gallo-Romans, Romano-Britons, Africans. Latin; Greek among the learned.],
    [*Hellas and the East*], [Greeks, Anatolians, Syrians, Copts. Greek, Syriac, Coptic, Aramaic.],
    [*The Barbaricum*], [Goths, Franks, Vandals, Saxons, Huns. Gothic, Frankish, Old Saxon; Latin at court.],
    [*The Celtic Fringe*], [Britons, Irish, Picts. Brythonic, Goidelic; Latin among clergy.],
    [*Ērānšahr*], [Persians, Armenians, Sogdians. Middle Persian, Armenian, Sogdian.],
    [*The Deserts*], [Arabs, Berbers, Garamantes, Nubians. Arabic dialects, Berber tongues, Ge'ez.],
  )

  === Faith in the Year 500
  - *The Church* is split three ways: Catholic (Rome and Gaul), Chalcedonian Orthodox (Constantinople), and Miaphysite (Egypt and Syria). The Goths and Vandals are Arian. All of them burn heretics when they can.
  - *The old gods* survive in rural shrines, mystery cults, philosophical schools and Germanic war-bands. Their priesthoods are thinning; their pools are draining.
  - *Ahura Mazda* is the state faith of Persia, where the Mazdakites preach common property under Kavad's protection.
  - *Judaism* thrives from Himyar to Babylon.

  Every one of these faiths can point to answered prayers. Which of them is _right_ is a question the age is still fighting over.
]

== #flex-heading[What the Learned Teach][Cosmology]

#columns(2)[
  The supernatural is not a matter of debate in the year 500. The gods are real. Spirits walk beside the living. The question is never _whether_ — only _what kind_, and whose version of it is pointing at you. This is what theurgists, philosophers and the better-read clergy teach.

  === The Three Spheres

  ==== The Mortal Sphere (_Kosmos_)
  The world of flesh, iron and stone. Most of the action happens here.

  ==== The Veiled Sphere (_Apokryphon_)
  The spirit world: the Otherworld, the realm of the Fair Folk, the country beneath the hill, the land of the dead and the dreaming. It lies alongside the mortal world like another country, but its shape is not the same, and it is vast — perhaps infinite. The two Twilight Courts rule its nearer reaches. Theurgists and sorcerers walk in it. Time runs strangely there.

  The Veil touches the mortal world where the two share a _resonance_. If a place in the Veil is dark and dreadful, it touches a dark and dreadful place in the Kosmos. Five feet over, it might only be sad — and lead to a cemetery on the other side of the Empire.

  ==== The Outer Dark (_Exōthen_)
  What lies beyond the edges of the Veil, outside reality. The philosophers call it the Outer Dark; the frightened prefer not to name it. Those who travel there do not come back sane, if they come back. The oldest prohibitions exist to keep it shut.

  === The Outer Ones
  The Concord teaches that certain things press against reality from outside. It refuses them the word _theoi_, gods. They are _Hoi Exō_ ("those outside"), _Daimones Akosmoi_ ("the un-worlded ones"), or in Persian usage _Drujān_, "the Lies." Scholars know four by name, and do not say the names lightly.

  #tbl((1fr, 2fr),
    table.header[Designation][What is taught],
    [*The Throne at the Center*], [A blind, idiot vortex at the heart of the Outer Dark. Reality is the dream it does not know it is having.],
    [*The Gate and the Key*], [All times and places at once. The being one summons to _know_. To know it is to be unmade.],
    [*The Crawling Chaos*], [The one that speaks, walks and plays politics. It has a thousand masks.],
    [*The Black Goat of the Woods*], [A fertility-horror under many masks, worshipped in deep forests and rotting places.],
  )

  === Gods and Worship
  Priests work wonders with power their god lends them. A priest is only as strong as her god's favour, and gods can be displeased, distracted or weakened — often without warning. The old gods of Greece and Rome are plainly weaker than they were; the god of the Church is plainly stronger.

  Every faith also agrees that devotion costs something. A night's vigil, a festival, a sacrifice: the faithful come away tired in a way sleep alone explains. Priests call it the gift of the self. The rules call it the first Campaign Truth.

  === How Magic Works
  Magic is *the imposition of a name on reality*. To name a thing in its true tongue is to compel it. The recognised traditions are Theurgy, Goeteia, Magia, Hermetica and the priestly art of Hieratica, with the druids and the Hidden Faithful outside the Concord's schools. There is also a language older than the gods, which should never be spoken. See *The Art of Names*.

  The *Seven Seals of Solomon* are the Concord's absolute prohibitions. The Concord teaches that they are not laws in a mortal sense but *part of the structure of reality*: to break one weakens the walls between the Sphere and the Dark.

  Every tradition agrees that power is not free. When it seems to cost nothing, be suspicious.
]

== #flex-heading[The Concordat of Hidden Powers][The Concordat]

#columns(2)[
  In 287 BC, after a war between the Etruscan vampire-houses of Rome and the wizard-college of Alexandria nearly drowned Italy, a treaty was struck: the *Concordat of Hidden Powers* (_Concordia Potestatum Occultarum_). Long Night calls it the *Pact of the Long Night*, because its drafter was Morrigna.

  === The Clauses
  - *Hospitality.* A host must protect any signatory guest under their roof.
  - *Parley.* A truce under the white-and-black banner cannot be broken without forfeiting standing.
  - *Duels.* Disputes between signatories may be settled by champion-combat, often by the Courts' Knights.
  - *Weregild.* Blood-prices are codified for harm done to non-combatants.
  - *Outside-Threat.* All signatories must defend reality against the Outer Dark. The Brotherhood exists to undermine this clause.
  - *Mortal Sovereignty.* Hidden powers may _influence_ mortal kingdoms but may not openly rule them. Often violated; often punished.

  === Signatories in 500
  - The Concord of the Seven Seals
  - The Court of Long Night
  - The Court of the Burning Crown
  - The House of Lamia
  - The Hounds of Set (the *Houndmaster of Carthage* alone)
  - The Strigoi of Dacia (*Bessos the Undying* in person; *Anthousa Skoteine* speaks for the elder lineage)
  - The Yithian Archive (as Observer)
  - The Mobedān of Persia (since about 380)
  - *Ambrosius Aurelianus*, Freeholding Lord of Sub-Roman Britain

  === Known Non-Signatories
  - The Brotherhood of the Black Pharaoh (refused; in breach by definition)
  - The Esoteric Order of Dagon (signed about 800 BC; lapsed)
  - The Court of Jade Breath (will not deal with the West, but is treated as if it had signed)
  - The Church (forbidden to treat with "principalities of the air"; individual bishops do, deniably)

  The Concordat's clauses have rules weight; see *Oaths, Guest-Right and Parley*.
]

== #flex-heading[The Hidden Powers][The Hidden Powers]

#columns(2)[
  What follows is what a well-connected character knows or has heard: names, reputations, offices and folklore. It is not the whole truth about any of them. Where an entry says _it is said_, treat that literally.

  === The Concord of the Seven Seals
  The worldwide council of wizards (_Concordia Septem Sigillorum_). Its members appear in the world as scholars, physicians and court philosophers. It teaches that it was founded in the 3rd century BC by the philosopher-magus *Iamblichus the Elder* out of Alexandria's secret theurgic school. Its spiritual home, the *Old Seat*, lies beneath the ruined Serapeum. Its working library and its business have moved to the *Castrum of Drepanum* in Bithynia.

  #tbl((1fr, 2fr),
    table.header[Office][Holder],
    [*Magister Sigillorum*], [Theognostos of Smyrna, who casts the deciding vote],
    [*The Inner Seal*], [Seven eldest theurgists, among them Damaskios of Damaskos and Markos Drepanios of Thessalonike],
    [*Gatekeeper of the Outer Dark*], [Rashidun of Edessa, who screens those returning from the Veil],
    [*The Stylites*], [The ash-cloaked enforcers, captained by Loukia Theoktiste],
    [*The Concord at large*], [A few hundred recognised magoi worldwide],
  )

  ==== Robes and Stoles
  Apprentices wear undyed wool. Full members wear a *blue* stole; the Inner Seal *purple*; a century of service *red*. A silver braid marks a master of _Pharmakeia_ (alchemy), a gold caduceus a master of _Iatreia_ (healing), a copper chevron a doctorate from Alexandria, Athens, Edessa or Nisibis. Stylites wear *ash-grey* cloaks woven not to hold blood, and carry iron swords consecrated to cut through enchantment.

  ==== Fronts
  The *School of Alexandria* (medicine, astronomy), the *Academy of Athens* (philosophy), the *School of Nisibis* (theology and Syriac learning) and the *School of Toulouse*. Each is a real school with real students.

  ==== What People Say
  The Concord is cautious, bureaucratic and slow to trust — until it moves, and then it moves decisively. Stylites are rumoured to include an elite of blade-bearers whom no one names. Magi forbid themselves open rule: they may advise kings, never be kings. A magus who breaks a Seal is a *paranomos*, and the Concord's verdict is almost always the sword. The young are sometimes spared under the *Sword of Damocles*.

  ==== What You Might Need From Them
  Identification of threats, authentication of texts and relics, and — rarely — sanction for something their own rules forbid. What they want from you is deniability, speed, and someone to go where their robes can't.

  === The Four Sanguine Courts
  Four different kinds of being share the name "blood-drinker" (_haematopotēs_, _sanguisuga_). They despise being confused with one another. All four have some accommodation with mortal society, and that is exactly why you need to know their terms. Rules for them are in *The Blood-Drinkers*.

  ==== The Hounds of Set
  Powerful, eccentric nobles of the Vandal court at Carthage and the old towns of Egypt, said to descend from a corrupted cult of Set. They wear flesh-masks — _personae_ — over a true form folklore describes with jackal heads and folded wings. Their culture prizes *thirst-discipline*: status is the ability _not_ to feed. They keep addicted servants called *Cup-Slaves* (_calicarii_), and half-turned soldiers in bronze jackal masks, the *Jackal-Wardens*. Their master is the *Red Pharaoh*, believed by mortals to be a Vandal client-prince.

  Known nobles: *Geilamir the Pale*, _magister officiorum_ at Carthage; *Lady Cyria of Sabratha*, who passes as a Berber princess. They are said to be *paralysed by thresholds*: a blessed doorway can stop a duke. The Concord is fighting an undeclared war with them in Sicily, and the *Fellowship of the Lance*, a Roman-Berber militia, hunts them.

  ==== The House of Lamia
  The old patrician families of Rome, Ravenna and Constantinople — exactly who they appear to be, except that they feed on *emotion*. They own magistracies, ships, brothels, oil presses, theatre troupes and several Senate seats, and broker much of the silk and spice trade. They claim descent from the Libyan queen Lamia of Greek myth. Their court language is Etruscan. They are the most human-passing of the Courts, and they almost never fight openly.

  #tbl((0.9fr, 1.2fr, 1.2fr),
    table.header[Branch][Feeds on][Said to fear],
    [*Velthuri*], [Lust and intimacy], [Those who truly love and are loved; tokens of true love],
    [*Malvora*], [Fear], [Genuine courage],
    [*Scaeva*], [Despair], [Genuine hope],
  )

  The House is ruled in name by the *Domina Maxima*, who has lain powerless in Rome since a Concord witch, *Markella of Tarentum*, laid a curse on her. In practice her daughter *Larthia Velthuri* rules from the Aventine. Markella's son is *Markos Drepanios* of the Inner Seal, which makes for interesting family dinners.

  ==== The Strigoi of Dacia
  The walking dead of the Carpathians, who do not pretend to be alive. They were nearly wiped out three centuries ago by a hunting manual, _Peri Strigōn_, written by the physician *Hierokles of Thessalonike*. The survivors are old, paranoid and very cunning. *Bessos the Undying*, Lord of the Carpathian Halls, signed the Concordat in person. *Anthousa Skoteine*, "the Shadowed," lives in Constantinople and is said to work magic like a wizard. A band of Strigoi is a _scourge_.

  ==== The Court of Jade Breath
  Something from the far east, known mostly by the care people take to avoid it. It deals through Sogdian merchants who carry notes they will not read aloud. Survivors speak of a killing that comes from a distance, with no mark and no touch — a stolen breath. It never signed the Concordat, but everyone treats it as if it had.

  === The Two Twilight Courts
  Two Courts divide the deeper Veil. Each is ruled by three Queens — *Maiden*, *Queen* and *Crone* — turning through one throne like the seasons. Each names a *mortal Knight*, the only one of its people permitted to kill outside the Court; the Knight bears a *Mantle* of borrowed power. There is *no Faerie King*. The *Stone Throne* passes between the Courts at the solstices.

  *The Fair Folk do not lie.* This is not a virtue. They have become extraordinarily good at technical truth, flattering ambiguity, and omissions that lead you where they wanted. A favour accepted without clear terms is a debt without a ceiling.

  ==== The Court of Long Night
  The Winter Court: cold, precise and merciless. It claims descent from a polar people that fell before the first cities. Its fae are the _Brumales_. Its capital is *Arctistor*, a fortress of black glass in the northern Veil. *Morrigna*, Queen of Hoarfrost and the Slow Knife, drafted the Concordat; she is said to loathe inaccurate folktales about her people. The Maiden is her daughter *Niamh of the Pale Hand*. The Knight is *Edica the Wolf-Marked*, a broken Pannonian. Its sworn include the Cat Sith, the Leannan-Sidhe, Jenna of the Green Teeth, the Redcap and Rawhead.

  The Winter Court buys mortal debts, and its debt-collectors are the bargainers in lonely places the Church calls devils. Some say it is also part of the reason worse things have not yet eaten your village. It is weak to *cold iron* — iron worked by mortal smiths.

  ==== The Court of the Burning Crown
  The Summer Court: warm, beautiful, generous-seeming, and no less precise. It claims the bull-kings of Crete and the green ladies of Etruria among its ancestors. Its fae are the _Aestivales_. Its capital is the *Hall of Beaten Gold*. *Aigle*, Queen of Lions and Olives, is Morrigna's twin; she has never forgiven Markos Drepanios for the death of her daughter *Heliodora* in 497. The Maiden is *Hesperia*. The Knight is *Theodoros Sebennytos*, an Egyptian soldier. It touches mortals through dreams, harvests and Bacchic rites, and it hates the sea-covenant of Sidon with an old, hot hatred.

  ==== The Free Folk
  Fae of neither Court: satyrs, nymphs, the Erlking's Wild Hunt, Gwynn ap Nudd, the djinn, the kobolds of the mines, the _lares_ of every Roman house. Milk at the threshold, bread at the mine-mouth and silver at the crossroads are the terms of small, ancient contracts. Keep them.

  === The Brotherhood of the Black Pharaoh
  The one power that wants nothing you can bargain with. The Brotherhood is said to be a scattered fellowship of scholars, priests and sorcerers who believe the world should *end*, and who work patiently across generations to open a door and let in what comes after. It worships the Crawling Chaos under the mask of *Nephren-Ka*, a pharaoh whose name was struck from the temple lists. It works through respectable men — a learned priest, a rich patron, a scholar with an unusual library. In the Faiyum it is said to pose as a heretical Coptic order. It never signed the Concordat, and every signatory is bound to oppose it.

  ==== Signs of Presence
  - A respectable man with an inexplicable interest in sealed ruins and the oldest names.
  - A ritual site prepared with great care for no purpose that benefits anyone.
  - The sudden, quiet interest of the Stylites in a place you thought ordinary.
  - Scholars dying or vanishing along a line that points somewhere on a map.

  === The Esoteric Order of Dagon
  The sea-covenant of the Phoenician coast, above all ancient *Sidon*. An order of fishers, navigators and harbour-pilots who serve *Father Dagon* and *Mother Hydra*. Their boats don't sink and their nets don't fail. The older members of these families are known for wide, flat eyes, slick skin, a resistance to cold, and high collars. Coastal towns that host them prosper. Towns that resist have bad years. If people walk into the sea at night in a town that has been lucky for generations, ask when the luck began.

  === The Yithian Archive
  The wandering scholars. There are people who read too fast, sleep too little, tilt their heads at the same angle, and want only your _testimony_ of what it felt like to be present at something that mattered. Their embassy is a child: *Eudokia of Antioch*, nine years old, called *the Recorder*. She walks under the Concordat as an Observer, and even Morrigna treats her with deference. People are said to lose months or years to these scholars and come back dreaming of vast windowless libraries. Never make them a binding promise: they measure time in centuries.

  === The Gnostic Apokryphon
  The Hidden Faithful: a network of cells from Alexandria to Edessa to the Faiyum, hunted by the Church for four centuries and still here, barely. Their texts are buried in jars in the sand; their teachers meet in the back rooms of textile shops. One branch is said to have hidden inside the Church's own clergy. Their public teaching runs roughly thus: _the world is not as it appears; the power that demands exclusive worship is not what it claims to be; and the man the Church made a god was a mortal teacher who discovered something extraordinary._ They don't convert. They test, and if you fail, you never hear from them again. Being seen with one makes you a heretic. Their four workings are in *The Art of Names*.

  === The Cult of Mormo
  Something that wears the face of fertility. Mormo's cells grow inside kinder faiths — of motherhood, harvest and the female divine — and hollow them out, so the rite meant to bless the fields becomes something else while the worshippers think they are doing what their grandmothers did. The Concord files her as a mask of the Black Goat. She feeds on rot, plague and despair, and the fifth century has given her plenty. Her wandering priestesses travel as performers and beggars, hunting the grieving and the desperate. The eve of the vernal equinox is her *Day of Blood*.

  ==== Signs of Presence
  - Livestock with tumours and strange growths, especially in spring.
  - A fertility festival gone subtly _wrong_.
  - Wandering performers who stay a little too long.

  ==== The Marian Hunters
  Widows, consecrated virgins, ascetics and grieving mothers in the blue of the Madonna hunt Mormo's sects, region by region — and their prayers against her are _answered_. They are deadliest in Egypt, but they appear wherever the Church has gone.

  === The Mobedān
  The Zoroastrian magi of Persia, keepers of the fire temples and of _Magia_, the fire-and-word. They acceded to the Concordat around 380. They are old friends of the Winter Court, wary friends of the Concord, and enemies of _the Lie_ in all its forms.
]

== #flex-heading[Magi of the Age][Magi of the Age]

#columns(2)[
  Famous names, living and dead, that every magus of the age has heard.

  #tbl((1fr, 2fr),
    table.header[Figure][What is known],
    [*Solomon ben David*], [The First Sealer, who bound the demons of the Levant by ring and seal. The Seven Seals bear his name. His signet ring is said to lie in the Temple Mount rubble.],
    [*Iamblichos of Chalkis*], [Dead since 325. Divided the art into Cantrip, Operation and Theurgy. His _De Mysteriis_ is required reading at the Castrum.],
    [*Hypatia of Alexandria*], [The last Magistra of the Old Seat, murdered by a Christian mob in 415. Her ghost is said to walk the Old Seat's empty halls.],
    [*Damaskios of Damaskos*], [42, Inner Seal, head of the Athenian house and the Academy. Brilliant, prickly, fond of wine. Thinks the Magister a bureaucrat and says so.],
    [*Boetius of Ravenna*], [20, a junior Concord member at Theodoric's court and Damaskios's protégé. Idealistic, politically naive, and in a position to pay for help.],
    [*The Master of Tyana*], [Apollonios, dead 400 years: a wandering wonder-worker claimed by the Concord, the Gnostics and worse. His staff is said to lie in one of his shrines.],
    [*Simon of Sebaste*], [Simon Magus, who tried to buy the Holy Spirit and died, the Church says, in a flying duel with Peter. The Samaritans tell it differently.],
    [*Myrddin Emrys*], [7, a Brythonic boy taken east by Stylites in 497, now the Concord's ward at Drepanum. He speaks in his sleep.],
    [*Ambrosius Aurelianus*], [50, Concord-trained battle-mage and lord of Caer-Gloui, a signatory in his own right. Has not forgiven the Concord for taking Myrddin.],
    [*Mug Ruith*], [The blind Wheel-Druid of Valentia Island, outside every jurisdiction. Answers anyone who pays his toll. The price is never gold.],
    [*Bondos the Reformer*], [A Persian heresiarch two centuries dead, whose teaching the Mazdakites claim. Some say he still lives.],
    [*Kartīr of the Seven Heavens*], [The great high priest of the early Sasanians, who claimed to have ascended through the seven heavens.],
  )
]

== #flex-heading[Places of Power][Places of Power]

#columns(2)[
  #dnd-area[
    = Seats of the Concord
    == The Old Seat, Alexandria
    Pillared halls beneath the demolished Serapeum, warded so that "only a being of godhead may pass." Mostly empty now, and said to be haunted.

    == The Castrum of Drepanum, Bithynia
    A Roman coastal fort fronted by a small school. Beneath it, the Concord's library, laboratories, the Hall of the Inner Seal, and the chamber where paranomoi are judged.

    == The Four Schools
    Alexandria, Athens, Nisibis and Toulouse. Real schools, with real students and doors that most students never find.

    = The Veiled Sphere
    == Arctistor
    The Winter Court's fortress of black glass and bone-white pillars. Its gates are said to lie in Iceland, the Carpathians and the high Caucasus.

    == The Hall of Beaten Gold
    The Summer Court's sunlit palace of gold and olive-wood on a mountain that does not exist. Gates in Crete, Etruria and the Lebanon.

    == The Cottage
    Folklore tells of a hut deep in the Veil where two old women spin, one with black thread and one with gold. Those who go looking for it rarely find it. Those who find it wish they hadn't.

    = Places of Rumour
    == Sarra
    A temple-city said to lie buried under the sand of the deep Sahara, and to wake in long cycles.

    == The Drowned Library, off Sidon
    Something older than the Phoenicians lies under the water near Sidon. The sea-covenant guards it.

    == Karanis, the Faiyum
    A sleepy Egyptian town above something that is not sleepy at all.
  ]
]

== #flex-heading[Timeline][Timeline]

#columns(2)[
  As the Concord teaches it.

  === Antiquity
  - *c. 1500 BC* — Pharaoh Nephren-Ka rules Egypt. His name is struck from the lists.
  - *c. 950 BC* — Solomon binds the demons of the Levant by ring and seal.
  - *287 BC* — The Concordat of Hidden Powers is sealed after a war between the vampire-houses of Rome and the wizards of Alexandria.
  - *c. 250 BC* — Iamblichus the Elder founds the Concord at Alexandria.
  - *47 BC* — The Library of Alexandria burns the first time.
  - *c. 30–33* — The ministry and death of Jesus of Nazareth.
  - *c. 96* — Death of Apollonios of Tyana.

  === The Imperial Era
  - *c. 300* — Hierokles' _Peri Strigōn_ all but ends the Strigoi.
  - *325* — Death of Iamblichos of Chalkis.
  - *c. 380* — The Mobedān accede to the Concordat.
  - *391* — The Serapeum is destroyed; the Old Seat is sealed.
  - *415* — Hypatia is murdered in Alexandria.
  - *431* — The Council of Ephesus proclaims Mary _Theotokos_, Mother of God.

  === Living Memory
  - *476* — The last Western emperor is deposed.
  - *488* — Theodoric invades Italy.
  - *493* — Theodoric kills Odoacer.
  - *496* — Clovis is baptised.
  - *497* — Heliodora, Maiden of the Summer Court, dies at Arctistor; Markos Drepanios is blamed. The Stylites take the boy Myrddin from Dyfed.
  - *498* — Kavad is restored to the Persian throne and embraces the Mazdakites.
  - *500* — *Play begins.*
]

= #flex-heading[Rules of the Hidden World][Rules of the Hidden World]

== #flex-heading[Campaign Truths][Campaign Truths]

#columns(2)[
  Every 2d12 setting starts with *Campaign Truths*: facts that are always true and that the rules lean on. Aetas Obscura has five.

  #rule[1 · Devotion Has a Cost][
    Worship takes something from those who take part. When a character joins a real rite — a Mass, a sacrifice, a festival, a sincere prayer at an altar — they lose *1 Pneuma*, which returns at their next rest. Belief changes nothing; attendance does. See *Worship and Hieratica*.
  ]
  #rule[2 · Names Have Power][
    Magic is the imposition of a name on reality. A *true name* learned through Discover, a text or a bargain counts as a *power tag* on every roll against its bearer, and some workings cannot be attempted without one.
  ]
  #rule[3 · The Seals Are Walls][
    The Seven Seals are part of reality's architecture. Breaking one has a cost whether or not anyone sees. The GM keeps track of how thin the walls have grown. See *The Seven Seals*.
  ]
  #rule[4 · Thresholds and Oaths Hold][
    A blessed threshold, a guest-right, a parley banner and a sworn oath are _forces_, not customs. The hidden world obeys them, and breaking them is a wound. See *Oaths, Guest-Right and Parley*.
  ]
  #rule[5 · The Dark Is Patient][
    Exposure to the Outer Dark leaves _nemesion_, a taint that does not heal with rest. The Outer Ones are unwinnable on their own terms. Human-scale victories still count. See *Dread and Nemesion*.
  ]

  === Setting Dials
  Choose one setting for each dial at Session Zero.

  #tbl((1fr, 2fr),
    table.header[Dial][Settings],
    [*Visibility*], [_Open_ (wizards in the Senate, faerie embassies at weddings — the default) · _Veiled_ (rumours only) · _Buried_ (the hidden world is truly hidden)],
    [*Horror*], [_Pulp_ (Dread costs reduced by 1 tier) · _Dark_ (default) · _Bleak_ (nemesion cannot be cleansed below tier 1)],
    [*The Church*], [_Divided_ (default) · _Militant_ (heresy accusations are a Woe spend at 1 instead of 2) · _Tolerant_],
  )
]

== #flex-heading[Skills of the Age][Skills of the Age]

#columns(2)[
  The core skill list is renamed for the year 500. Ratings, the pyramid and default pools are unchanged.

  #tbl((1fr, 1fr, 1fr, 1fr),
    table.header[Sōma][Akmē][Psychē][Pneuma],
    [Athletics], [Shoot], [Notice], [Will],
    [Brawl], [Stealth], [Investigate], [Persuade],
    [Fight], [*Ride*], [*Letters*], [Intimidate],
    [Endure], [Craft], [*Mechanica*], [Empathy],
    [*Wayfaring*], [], [Medicine], [*Mysteria*],
    [], [], [Deceive], [],
  )

  #tbl((1fr, 1fr, 2fr),
    table.header[Core][Becomes][Covers],
    [Survival], [*Wayfaring*], [Roads, deserts, forests, weather, foraging, tracking, the sea by coast-light],
    [Drive/Pilot], [*Ride*], [Horses, mules, camels, chariots, carts, and small boats],
    [Lore], [*Letters*], [Law, history, theology, philosophy, languages, heraldry, the Classics, tactics],
    [Tech], [*Mechanica*], [Siegecraft, locks, aqueducts, Hero's automata, Greek fire, astrolabes],
    [Arcana], [*Mysteria*], [Magic of every tradition, ritual, spirits, the Veil, and priestly rites],
  )

  ==== Notes
  - *Letters* is the tactics skill for *Battle* conflicts, as Lore is in the core.
  - *Mysteria* is the anchor for the *Adept*. A priest of Hieratica uses Mysteria too; the rite is the same skill whether the hand behind it is a god or the magus himself.
  - *Mechanica* is rare. In the year 500, a character with Mechanica +3 is a famous engineer.
  - *Literacy* is not a skill. Characters of the *Lettered* and *Honoured* stations read; others read only if they have Letters +1 or more.
]

== #flex-heading[Characters of the Age][Characters of the Age]

#columns(2)[
  Make characters with the core rules: a *Descriptor*, a *Playbook* and a *Focus*. This chapter adds an *Origin* (culture and station) and an optional *Allegiance*, and shows how the core options look in the year 500.

  #dnd-readaloud[
    I am a _Haunted_ _Savant_ who _Remembers What Was Forgotten_ — a Syriac-speaking freedman of Edessa, indebted to the Concord.
  ]

  === Origin
  Choose a *cultural sphere* (see *The World in 500 AD*) and a *station*. Then write one *Origin tag* that combines them: _Alexandrian physician's daughter_, _Gothic spear-oath man_, _runaway colonus from the Lucanian estates_.

  - The Origin tag *replaces one of the two tags your Playbook gives*. Your tag count doesn't change.
  - You speak your sphere's street language and any languages your station gives.
  - Your station gives a *trait* and a *burden*. The burden works like a weakness tag the GM can compel.

  === Stations
  Roman law divides people into _honestiores_, the honoured, and _humiliores_, the humble. The humble can be beaten, tortured for testimony and sent to the mines. Barbarian and Persian law draw the same line in other words.

  ==== Outcast
  Beggar, bandit, heretic, runaway, actor, gravedigger.
  - _Languages:_ the street tongue only.
  - *Trait — Beneath Notice.* Once per scene in a crowd, Create the Truth _Nobody Looks at Beggars_ without paying for it.
  - *Burden — Without Law.* No court will hear you. Persuading anyone in authority is one step harder.

  ==== Servile
  Slave, freedman, _colonus_ bound to an estate, household servant.
  - _Languages:_ your own, and your master's.
  - *Trait — Below Stairs.* Once per session, take a free bonus die on a roll to learn something from servants, slaves or a household.
  - *Burden — A Claim on You.* Someone — a master, a patron, an estate — has a legal claim on you, and may press it.

  ==== Common
  Craftsman, soldier, sailor, farmer, shopkeeper, guard.
  - _Languages:_ your own, and one trade tongue.
  - *Trait — Common Cause.* Among working people, Persuade starts at Standard even when a stranger would face Hard. Once per session, their help gives the party 1 Momentum.
  - *Burden — Humilior.* The law may beat or torture you. In a dispute with your betters, you lose.

  ==== Lettered
  Merchant, scribe, notary, clergy, town councillor (_curialis_), physician.
  - _Languages:_ your own, Latin or Greek, and one more. You read and write.
  - *Trait — Letters of Introduction.* Once per session, produce a document or a name that gets you through a door: Create the Truth _Expected and Admitted_ for the scene.
  - *Burden — Obligations.* Taxes, tithes, guild dues or a bishop's orders follow you everywhere.

  ==== Honoured
  Senator, Gothic or Frankish noble, Persian _āzād_, bishop of a great see.
  - _Languages:_ your own, Latin or Greek, and two more. You read and write.
  - *Trait — Dignitas.* You cannot lawfully be tortured. Once per session, demand an audience with anyone short of a king and receive it. A household retinue counts as gear that takes no Load.
  - *Burden — Honour and Rivals.* Insults must be answered. Scandal follows you, and your enemies sit at court.

  === Allegiance (optional)
  Name one faction your character is tied to, and how.

  #tbl((1fr, 2fr),
    table.header[Tie][What it means],
    [*Sworn*], [A member: a Concord apprentice, a Court's servant, a Stylite, an initiate. You get a *Contact* in the faction and access to its places.],
    [*Indebted*], [You owe it. You get one favour now, recorded as a Debt (see *The Veiled Sphere*).],
    [*Hunted*], [It wants you. Start with a 4-clock _They Close In_ the GM ticks with Woe.],
  )

  *The Call.* Once per session, the GM may have your faction call on you. Answer at real cost and gain *1 Tychē*. Refuse and the tie frays: Sworn becomes Indebted, Indebted becomes Hunted.

  === Playbooks of the Age
  #tbl((1fr, 2fr),
    table.header[Core playbook][In the year 500],
    [*Bellator*], [Legionary veteran, _bucellarius_, Gothic warrior, gladiator, Fellowship of the Lance hunter, Stylite, a Court's Knight],
    [*Furcifer*], [Tomb robber, spy of the _agentes in rebus_, cutpurse, assassin, smuggler, Lamia-house thief],
    [*Savant*], [Philosopher, physician of Alexandria, Concord scholar, astrologer, lawyer, engineer, Mobedān scribe],
    [*Interlocutor*], [Rhetor, envoy, merchant of the Silk Road, courtier, bishop's secretary, con-man],
    [*Explorator*], [Hunter, horse-archer, sailor, caravan guide, Saxon raider, desert scout],
    [*Adept*], [Magus of a tradition: theurge, goēs, Mobed, Hermeticist, druí, priest of Hieratica, Gnostic initiate],
  )

  ==== Renamed Equipment
  Use the *Fantasy* options wherever the core lists genres. The Adept's _conduit_ is a staff, wand or ring of Solomon's pattern; the _faith made solid_ talisman is a phylactery, an Isis-knot or a relic fragment.

  ==== Descriptors and Focuses That Fit
  All core Descriptors work. Some Focuses read differently in the year 500.

  #tbl((1fr, 2fr),
    table.header[Focus][Suits],
    [_Hunts the Things in the Dark_ ◈], [Stylites, Fellowship hunters, Marian widows],
    [_Walks Between Worlds_ ◈], [Fae-touched, Veil-wanderers, the Recorder's escorts],
    [_Made a Bargain With Something Old_ ◈], [Knights, Lamia thralls, anyone with a Debt],
    [_Is More Than Human_ ◈], [fae-blooded changelings, half-turned Jackal-Wardens, sea-covenant children before the change],
    [_Remembers What Was Forgotten_], [Concord scholars, Gnostic couriers],
    [_Carries the Weight of a Crown_], [Gothic and Frankish nobles, Ambrosius's captains],
    [_Was Born Behind the Wheel_], [Rename it _Was Born in the Saddle_: horse-archers, charioteers of the Hippodrome],
    [_Knows Everyone Worth Knowing_], [Senators, bishops' secretaries, Lamia clients],
  )

  === Setting Gear
  These gear tags join the core lists.

  #tbl((1fr, 0.45fr, 2fr),
    table.header[Item][Load][Tag and effect],
    [*Cold-iron blade*], [1], [_cold iron_. Harms Long Night fae normally even when they are Hard to Kill; counts as a killing method against some.],
    [*Phylactery or amulet*], [0], [_warded_. Once per session, reduce one supernatural harm by +1 tier when you Resist.],
    [*Blessed salt, holy water*], [0], [_consecrated (patron)_. Draw a threshold line; Hounds and Strigoi must pay 1 Woe to cross it.],
    [*Lead curse tablet*], [0], [_defixio_. A Goeteia focus: +1 to curse workings against a named target.],
    [*Papyrus grimoire*], [1], [_text of power_. Lets a Scholar use Letters for workings (see *The Art of Names*).],
    [*Kyphi and censer*], [1], [_the fragrant smoke_. +1 segment on the first roll of any Rite.],
    [*Relic fragment*], [0], [_steeped in worship_. Strigoi weakness; may count as a killing method; a Hieratica priest gains +1 Favour once.],
    [*Stylite ash-cloak*], [0], [_does not hold blood_. Armour 0; +1 to Intimidate against those who know what it means.],
    [*Seal-ring*], [0], [_Solomon's pattern_. +1 Power on workings that bind or banish.],
  )
]

== #flex-heading[The Art of Names][The Art of Names]

#columns(2)[
  #dnd-dropcap[T][o name a thing in its true tongue][ is to compel it. Every magus of the age — theurge, goēs, Mobed or druí — works by that law. What differs is the tongue, the price, and which Seal it puts at risk.]

  This chapter builds on the *Adept* playbook. The Adept's Domain, scope Difficulties, working cost, backlash and Ritual ability all apply as written. A tradition adds *where the power comes from*, *what it is good at*, and *what it costs*.

  === Who Works Magic
  - *Adepts* are magi. Choose a *tradition* and a *path* when you take the playbook. Your Domain must be one your tradition teaches.
  - *Anyone else* can be a *Dabbler* (see Paths), or perform a *Rite* they have been taught or have read.
  - *Priests* of any playbook can work *Hieratica* if they hold Favour with a patron (see *Worship and Hieratica*).

  === The Three Tiers
  Iamblichos divided the art into three tiers. They match the core scopes.

  #tbl((0.8fr, 1.2fr, 1.6fr),
    table.header[Tier][Scope][In play],
    [*Cantrip*], [Minor, personal (Easy 12)], [Light a lamp, warm water, sense a lie in a room. Often no roll.],
    [*Operation*], [Significant to Spectacular (15–21)], [A single working: a roll of Mysteria, 1 Pneuma.],
    [*Theurgy*], [World-shaking (Heroic 24)], [Always a *Rite* run as a progress clock.],
  )

  === Paths
  How you learned shapes how you work.

  ==== Initiate
  Taught by a master in a lineage. The default for Adepts.
  - You may learn the tradition's Rites from your teacher without a text.
  - Your lineage protects you: once per session, reduce a backlash status by 2 tiers.
  - You have a master. The master has expectations.

  ==== Scholar
  Self-taught from texts: the Greek Magical Papyri, a Hermetic codex, a stolen Concord notebook.
  - With a _text of power_ in hand, you may roll *Letters* instead of Mysteria for workings and Rites.
  - You can learn a second Domain from a text instead of taking ★ *Second Domain* — but only for workings done with that text in hand.
  - No one taught you the safeguards. Your backlash statuses are *+1 tier*.

  ==== Dabbler
  Any non-Adept with a charm, a curse-tablet, a grandmother's song.
  - Write a narrow *Charm* tag: _the evil eye_, _knot-magic for fair winds_, _a love-spell from the papyri_.
  - You can attempt Cantrips and Significant workings within the Charm. Roll Mysteria (or Letters with a text).
  - Each working costs *2 Pneuma*, and *any* doubles cause backlash, success or not.
  - You can perform Rites you are taught (see Rites).

  === The Traditions
  Each entry gives the tradition's *Domains*, its *Strength*, its *Price*, and the *Seals it endangers*.

  #dnd-item[
    = Theurgy
    == The Concord's tradition · Neoplatonic ascent

    _Domains:_ light, warding, the soul and its ascent, the spheres and stars, healing, divination, banishing.

    *Strength — The Safe Way.* Theurgy is slow, ceremonial and safe. When you take backlash from a Theurgy working, reduce it by 1 tier.

    *Price — Ceremony.* An Operation needs a minute of invocation. In a scripted conflict, a Theurgy working can't be your first action in an exchange.

    *Seals at risk:* rarely any. That is the point.
  ]

  #dnd-item[
    = Goeteia
    == Name-binding sorcery · the Greek Magical Papyri

    _Domains:_ binding, curses, compulsion, the dead and the chthonic, love and hate, summoning daimones.

    *Strength — The Name Is the Leash.* With a true name, Goeteia workings against its bearer get *+1 Power*.

    *Price — Chthonic Powers.* Goeteia borrows from below. Whenever you use Effort on a Goeteia working, the GM gains *1 Woe*.

    *Seals at risk:* III (the Mind), IV (Bondage), V (the Border). Goeteia breaks Seals easily.
  ]

  #dnd-item[
    = Magia
    == The fire-and-word of the Mobedān

    _Domains:_ fire, truth and the Lie, purity and purification, exposure of the dead, driving out _daēvas_ and _drujān_.

    *Strength — Against the Lie.* Magia workings against Outer-touched beings, false gods in masquerade, or anyone who has just lied get *+1 Power*.

    *Price — Purity.* After touching a corpse, spilled blood or the Outer taint, you cannot work Magia until you spend a scene purifying yourself with fire, water and prayer.

    *Seals at risk:* rarely. Magia is distinct from the Concord but respected by it.
  ]

  #dnd-item[
    = Hermetica
    == The science of correspondences

    _Domains:_ alchemy (_pharmakeia_), astrology, correspondences and sympathy, transmutation, automata, talismans.

    *Strength — Preparations.* In downtime, store one working in a potion, talisman or star-chart. Make the roll then; release it later as a free action with no further roll. You may hold as many as your Mysteria rating.

    *Price — Few Survive.* Anyone literate can dabble. Hermetic backlash is *+1 tier*, and a Scholar's adds another.

    *Seals at risk:* II (Shaping), VI (the River).
  ]

  #dnd-item[
    = Druidry and the Northern Arts
    == The druí, the seiðkona, the galdr-singer

    _Domains:_ weather, beasts, shapeshifting by spirit-help, prophecy, battle-fury, the dead, the land.

    *Strength — Spirit Allies.* You may work through a spirit of the place. Once per scene, a working done with the help of a local spirit costs *0 Pneuma*.

    *Price — Geis.* Write a _geis_ weakness tag (never eat the flesh of a hound; never refuse a guest). Break it and you cannot work magic until you atone, and the GM gains 2 Woe.

    *Seals at risk:* II (Shaping), V (the Border).

    In the year 500, druidic and Saxon magic are, in practice, the same art in different tongues. Christian Britons call both devilry.
  ]

  #dnd-item[
    = Gnostic Praxis
    == The Hidden Faithful's working · the Apokryphon

    _Domains:_ only four, and they are fixed.
    - *Anabasis* — the ascent through the archons, naming and refusing each. The most dangerous working: a failed Anabasis Rite kills the initiate in their sleep.
    - *Lytrosis* — liberation. Frees a bound or enchanted soul: clears _enthralled_ and Lamia thrall-bonds, and weakens Brotherhood bindings.
    - *Apokalypsis* — unveiling. Reveals a god in masquerade, a Lamia feeding, a magister mid-rite. Cheap, and easy to detect.
    - *Sigesis* — silencing. Hides you from the notice of gods for hours or weeks. Painful.

    *Strength — Praxis, Not Patron.* Gnostic workings never draw on a god. They can't be detected by Hieratica, and are immune to the patron effects in *Worship and Hieratica*.

    *Price — No Sword.* The Apokryphon has no combat magic. Attack effects from Gnostic workings are one step harder. You must learn Sigesis first.

    *Seals at risk:* none — but a church that burns heretics.
  ]

  #dnd-item[
    = The Black Speech
    == The language of the Outer Ones · never chosen

    No one takes the Black Speech as a tradition. It is learned by accident and kept by temptation.

    Once you know even a syllable, you may *speak it into any working*: gain *+2 Power*, and take _nemesion-1_ that cannot be Resisted. Speaking it in a Rite thins the walls (see *Breaking a Seal*).

    *Seal broken:* VII (the Outer Dark), every time.
  ]

  === Reaching Beyond Your Domain
  You may attempt a working outside your Domain if it fits your tradition. It is *one step harder*, costs *2 Pneuma*, and *any* doubles cause backlash.

  === Rites
  A Rite is magic run as a *progress clock*: 6 segments for Hard, 8 for Formidable, 12 for Heroic. Adepts with the *Ritual* ability can run any working as a Rite. Anyone else can perform a specific Rite they have been taught or have read.

  - *Each roll* takes an hour, a night, or a day, as the Rite demands. Success fills segments equal to Power. Failure fills none and advances a danger clock the GM names.
  - *Untrained:* a character without the Ritual ability adds *+4 segments* to the clock, and any doubles cause backlash.
  - *Assistants:* each trained assistant can Help (core rules). Untrained assistants just hold the candles — but they still pay the cost of devotion.
  - *Place:* in a _Thin Place_ or on ground holy to the power invoked, remove 2 segments.
  - *Results* can create Site or Region Truths, as the core Ritual ability allows.

  ==== Requirements
  Every Rite names its *requirements*: a time (dawn, a new moon, the solstice), a place, materials, and an *offering*. Missing one makes the Rite one step harder or impossible, as the GM rules.

  ==== Offerings and Sacrifice
  #tbl((1fr, 2fr),
    table.header[Offering][Effect],
    [*Incense, wine, bread*], [The ordinary price. No bonus.],
    [*Your own blood*], [Lose 2 Sōma. +1 bonus die on one Rite roll.],
    [*An animal*], [+1 segment on every successful roll. The GM gains 1 Woe.],
    [*A willing human life*], [+3 segments at once. Breaks the *First Seal*. Every participant takes _nemesion-1_.],
    [*An unwilling human life*], [+4 segments at once. Breaks the *First* and *Fourth Seals*. Every participant takes _nemesion-2_. The GM gains 3 Woe.],
  )

  === Backlash
  On backlash the GM chooses a fitting status — _burned-2_, _drained-2_, _hollow-2_ — or rolls on this table.

  #tbl((auto, 1fr),
    table.header[d12][Backlash],
    [1], [*The lamps gutter.* Every flame, water-clock and fine mechanism nearby fails for the scene.],
    [2], [*Ink runs.* Your text of power is damaged: _blotted_ until mended.],
    [3], [*Drained.* Lose 2 more Pneuma.],
    [4], [*Nosebleed.* _Bleeding-2_ (Sōma).],
    [5], [*Wrong target.* The effect lands on the nearest wrong person.],
    [6], [*Echo.* The working repeats at the worst moment later in the session.],
    [7], [*Witnessed.* Something in the Veil saw. The GM gains 2 Woe.],
    [8], [*The mark.* A visible sign — frost on the skin, a smell of myrrh — for a day.],
    [9], [*Voices.* _Shaken-2_ (Pneuma).],
    [10], [*Lost time.* An hour passes that you don't remember.],
    [11], [*A door ajar.* The walls between Sphere and Dark grow a little thinner.],
    [12], [*Something answers.* A spirit, a fae or worse takes an interest. Name it.],
  )

  #rule[Broken Clocks][
    Magi "disrupt fine craftsmanship over time": oil lamps gutter, water-clocks stop, ink runs. A magus's household is full of broken clocks and candles. Others notice.
  ]
]

== #flex-heading[The Seven Seals][The Seven Seals]

#columns(2)[
  The Concord teaches that reality is a sealed vessel and magi are its glaziers. Every great violation weakens the glass.

  #tbl((1fr, 2fr),
    table.header[Seal][Prohibition and examples],
    [*I · Of Slaying*], [Thou shalt not kill a man by the art. A killing working; a human sacrifice.],
    [*II · Of Shaping*], [Thou shalt not unmake the shape a thing was born in. Turning a man into a beast; flesh-crafting.],
    [*III · Of the Mind*], [Thou shalt not enter the mind of another and take what is not given. Mind-reading against the will; memory theft.],
    [*IV · Of Bondage*], [Thou shalt not bind the will of another to thy own. Compulsion; thralldom; love-spells.],
    [*V · Of the Border*], [Thou shalt not call back the dead, nor reach across the river. Necromancy; raising shades.],
    [*VI · Of the River*], [Thou shalt not swim against the river of time. Changing what has happened; prophecy that alters its own end.],
    [*VII · Of the Outer Dark*], [Thou shalt not seek what lies beyond the Outer Gates, nor open them, nor call through them. The Black Speech; summoning an Outer thing.],
  )

  === Breaking a Seal
  When a character breaks a Seal — by working, Rite or the Black Speech — four things happen, whether or not anyone sees:
  + The GM gains *2 Woe*.
  + The walls between Sphere and Dark grow thinner (the Seventh Seal: much thinner).
  + The character takes _nemesion-1_ (the Seventh Seal: _nemesion-2_).
  + If a Concord magus is within a day's ride, or the working is divined, the party's *Stylites* clock ticks.

  Spirits, gods and the Courts are not bound by the Seals. Mortal magi are.

  === Thinning Walls
  The GM keeps a secret measure of how thin the walls between Sphere and Dark have grown where you play. You will see the signs: sick animals, shared dreams, Thin Places where none were. Great Rites and Solomonic relics can seal them again.

  === The Stylites Clock
  When the party's magic draws Concord attention, tick a 6-clock _The Stylites Come_. At 6, they arrive with a warrant. A magus caught breaking a Seal is a *paranomos* and goes to trial. The verdict is almost always death by the sword.

  ==== The Sword of Damocles
  A first-time offender — especially a young one — may be placed under the *Sword of Damocles*: probation under a sponsoring master. While under the Sword:
  - you have access to Concord libraries and help, through your sponsor;
  - your sponsor may call on you at any time (an Allegiance Call you cannot refuse);
  - *any* further Seal violation is death, and your sponsor must carry it out.

  The Sword is the classic young-wizard hook. Start an Adept under it if the player agrees.
]

== #flex-heading[Worship and Hieratica][Worship and Hieratica]

#columns(2)[
  #dnd-dropcap[B][elief is irrelevant][. A cynical priest in good standing with a strong god can work wonders that a sincere outsider cannot. Hieratica is _borrowed_ power, lent by a patron to those who serve it.]

  === Patrons and Their Pools
  Every patron has a *pool state* that reflects how strong it is at present. The GM knows each patron's state; priests learn it from how their prayers are answered.

  #tbl((1fr, 2fr),
    table.header[State][Effect on Hieratica],
    [*Starving*], [Workings one step harder. Favour refreshes by 1 per session at most. The patron is desperate and will ask terrible things.],
    [*Waning*], [Workings normal. Favour refreshes by 1 per session.],
    [*Steady*], [Workings normal. Favour refreshes to 3 each session.],
    [*Waxing*], [+1 Power on workings. Favour refreshes to 3 each session.],
    [*Bloated*], [+1 Power on workings and Favour refreshes to 5 — but on any doubles, *no one answers*: the working fails and the Favour is spent.],
  )

  === Favour
  A priest tracks *Favour* with one patron, from 0 to 5. A starting priest-character has *2*.
  - *Spend 1 Favour* to power a Hieratica working instead of paying Pneuma. The patron's state applies.
  - *Gain Favour* by serving: a significant service (+1), a great festival or a new congregation (+2), recovering a relic (+1).
  - *Lose Favour* by offending the patron, serving a rival, or failing a duty it set.
  - *At 0 Favour*, you can still pray. Nothing answers.

  Hieratica workings use *Mysteria* and the patron's portfolio as the Domain. Priests who aren't Adepts use the Dabbler limits but pay with Favour.

  === The Cost of Devotion
  The first Campaign Truth says joining a rite costs 1 Pneuma. Remember it when you go to worship to keep a cover and need that Pneuma tonight. A great festival can cost everyone inside 2.

  === Relics and Consecration
  An object steeped in long devotion to a patron is _consecrated (patron)_. Any god's consecrated object troubles Strigoi and Hounds, because each has been soaked in worship they cannot abide. A Mithraic token works as well as a cross.

]

== #flex-heading[Dread and Nemesion][Dread and Nemesion]

#columns(2)[
  The hidden world wounds the mind in two ways. *Dread* is what horror does to you now. *Nemesion* is what the Outer Dark leaves behind.

  === Dread
  When a character meets something the mind was not made for, the GM names an incoming status and its tier. Resist it with the core rules.

  - *Fear and revulsion* — a risen corpse, a Hound's true face, a sacrifice — inflict _shaken_. Resist with *Pneuma*.
  - *Forbidden knowledge* — a page of the Drowned Library, a geometry that should not close — inflicts _unmoored_. Resist with *Psychē*.

  #tbl((1fr, 0.45fr, 2fr),
    table.header[Exposure][Tier][Examples],
    [*Unsettling*], [1], [A fresh corpse in a sacred place; a Lamia's eyes in lamplight],
    [*Horrifying*], [2], [A Hound unmasked; a Strigoi rising; a Reborn goat-thing],
    [*Appalling*], [3], [A Deep One hybrid mid-change; a human sacrifice; a page of Black Speech],
    [*Mind-breaking*], [4], [A Shoggoth-Born; a god's true shape; a Yithian mind-swap remembered],
    [*Beyond*], [5], [The land beyond the Outer Gates; a Seal broken before your eyes],
    [*Outer*], [6], [An Outer One manifest. Resisting can't reduce this below tier 3.],
  )

  ==== Familiar Horrors
  Once you have Resisted a particular horror — _Hounds_, _the risen dead_, _Deep Ones_ — the same kind costs *1 tier less* next time. Familiarity is its own kind of damage. Note it as a tag: _seen Hounds unmasked_.

  ==== Madness
  At tier 6, _shaken_ or _unmoored_ Takes you Out as the core rules describe, and the Scar it brings is a *Madness*. Roll or choose.

  #tbl((auto, 1fr),
    table.header[d12][Madness],
    [1], [*Fugue.* You wake far away, days later.],
    [2], [*Hysteria.* Laughter or weeping you cannot stop when the horror returns.],
    [3], [*Phobia.* Of the thing, or something near it: water, mirrors, goats.],
    [4], [*Paranoia.* One ally is lying. You're sure.],
    [5], [*Mania.* You must _understand_. You keep the page.],
    [6], [*Catatonia.* When it returns, you freeze for a volley.],
    [7], [*Voices.* Someone speaks only to you. Sometimes usefully.],
    [8], [*Obsession.* A single goal now outranks your Belief.],
    [9], [*Compulsive rite.* Salt lines, counted prayers, washing.],
    [10], [*Amnesia.* A day, a name, a face — gone.],
    [11], [*Watched.* You feel eyes from the Veil, always.],
    [12], [*Revelation.* You learned something true. Gain one true name and _nemesion-1_.],
  )

  Each Madness becomes a *weakness tag*. It can be rewritten into a power tag with Advancement, as the core allows.

  === Nemesion
  _Nemesion_ is the Outer taint. It is a lasting harmful status, tiers 1–6.
  - It *does not recover with rest*. It stacks normally.
  - It cannot be Resisted when you choose it (the Black Speech, a Mormo rite, a Brotherhood pact).
  - It hinders nothing directly — at first.

  ==== Sources
  Breaking a Seal; speaking the Black Speech; taking part in a sacrifice; feeding an Outer thing; walking beyond the Outer Gates; long contact with the Outer-touched.

  ==== What It Does
  #tbl((auto, 1fr),
    table.header[Tier][Effect],
    [*1*], [Dreams of a starless sky. Nothing visible.],
    [*2*], [A *mark*: an ache in old wounds, a smell of wet stone, eyes that catch the light. Write it as a weakness tag.],
    [*3*], [Animals shun you. The Gatekeeper's tests and Magia's fire reveal you.],
    [*4*], [Outer things know you. The GM may spend 2 Woe to have the Dark act _through_ you for one action.],
    [*5*], [The change begins: the gills, the horns, the sores, the hunger. You are Hard to Kill — and hunted.],
    [*6*], [*Lost.* The character belongs to the Dark and becomes an NPC.],
  )

  ==== The Temptation
  At _nemesion-2_ or more, you may *lean on the Dark* for any working or Rite roll: gain +1 Power and +1 tier of nemesion. The Brotherhood recruits with exactly this.

  ==== Cleansing
  Nemesion is removed only by:
  - a *Lytrosis* working (Gnostic) or a *Magia* purification by fire, each removing 1 tier per successful working, at a Difficulty of 12 + 3 per tier;
  - a great Rite at a holy place (2 tiers);
  - a bargain with the Court of Long Night, which is said to know the Dark better than anyone (any number of tiers, at a price).

]

== #flex-heading[The Veiled Sphere][The Veiled Sphere]

#columns(2)[
  === Crossing Over
  There are three ways in:
  - *A gate* — a known door: Arctistor's gates in Iceland, the Carpathians and the Caucasus; the Hall of Beaten Gold's in Crete, Etruria and the Lebanon; a hidden door in each Concord school. No roll, if you have the key or the right.
  - *A Thin Place* — where the Spheres share a resonance. A Mysteria roll at Standard (Hard without the Truth _Thin Place_).
  - *A working* — opening the Veil yourself is a Dramatic working (Hard 18) for an Adept whose Domain touches spirits, travel or the Veil.

  === Travelling by Resonance
  The Veil is not mapped by distance but by *feeling*. To reach a place, describe what it _feels_ like and roll *Mysteria* or *Empathy*. Success brings you to a door that touches your goal. Failure brings you somewhere that feels the same: the sad place you meant, five feet over, leads to a cemetery on the other side of the Empire.

  === Time Runs Strangely
  When the party returns to the Kosmos, the GM rolls 1d12, or spends Woe to choose.

  #tbl((auto, 1fr),
    table.header[d12][Time in the Kosmos],
    [1], [You return _before_ you left. Avoid yourself.],
    [2–4], [The same hour.],
    [5–7], [A day for every hour.],
    [8–9], [A week has passed.],
    [10], [A season.],
    [11], [A year and a day.],
    [12], [Seven years. Your name is on a tomb.],
  )

  Spend *1 Momentum* to shift the result one row toward 2–4. The GM may spend *2 Woe* to shift it one row down.

  === Debts
  The hidden world runs on favours owed. When a fae, a god or a Court grants you something, record a *Debt*: the creditor, and a weight from 1 to 3.

  #tbl((auto, 1fr),
    table.header[Weight][Typical favour],
    [*1*], [Directions, a meal, a night's safety, a small truth],
    [*2*], [A healing, a passage through the Veil, a lie told on your behalf],
    [*3*], [A life saved, a curse broken, a true name],
  )

  - *Calling a Debt.* The creditor names a task. Do it and the Debt is cleared. Refuse and take _forsworn-X_ (Pneuma), where X is twice the weight — and the creditor may do as it likes with you under the Concordat.
  - *Debts are property.* They can be sold, traded and bought. Morrigna buys them from lesser fae to bring promising mortals under her hand.
  - *Hidden Debts.* Eating faerie food, accepting a gift, or entering the Cottage may create a Debt you did not know you took. The GM records it.

  === Knights and Mantles
  A character may become a Court's *Knight*. The Mantle is a gift of borrowed power:
  - one *power tag* fitting the Court (_winter's edge_, _summer's wrath_);
  - the right to *kill* where the Queen cannot;
  - once per session, one Court gift: *Glamour* (Create a Truth of illusion), *Winter's Edge* or *Summer's Wrath* (+1 Power on one attack), or *Step Sideways* (into the Veil);
  - and a permanent weight-3 Debt the Queen may call once per session.

  When the Knight dies, the Mantle goes home. Those who try to steal it in between are the Knight's real enemies.

  === Thresholds and Iron
  - A *home's threshold* is a ward. Fae, Hounds and Strigoi need to be invited, or must pay *2 Woe* to cross, and lose their Specials while inside unless invited. Lamiae cross freely but lose their Hunger-powers inside.
  - *Cold iron* — iron worked by mortal smiths — is a weakness of the Court of Long Night. A cold-iron weapon is a killing method against its fae, and binds them where it is driven into the ground.
  - The Burning Crown's weakness varies by sidhe. Make it something found: a midwinter ash, a frozen lake, a word.

  === The Free Folk at Home
  A household can keep Free Folk — _lares_, kobolds, sprites — for regular offerings of milk, honeyed barley-bread and silver. Treat the household as a *Bound Servant* (core Adept ability) that any character can keep, but only in that home. Miss three offerings and it turns.
]

== #flex-heading[The Blood-Drinkers][The Blood-Drinkers]

#columns(2)[
  Four species, one name, no love lost. What follows is what hunters know of each.

  === Common Rules
  - *Hard to Kill.* Physical harm stops at tier 5 unless a *killing method* is used. At tier 5 the blood-drinker is broken (−2 on physical rolls).
  - *Feeding* restores the blood-drinker: 1 tier of physical harm per feed.
  - *The Masquerade.* All four Courts pass as human (except the Strigoi, who do not try). Unveiling one is a Discover at Hard, or automatic with *Apokalypsis*.

  ==== Enthralled
  _Enthralled_ is a Pneuma status inflicted by feeding or by saliva. While enthralled, acting against the master is one step harder per two tiers. At tier 6 you are a thrall: Taken Out, and an NPC until freed. *Lytrosis* and _Vinculum Fractum_ clear it.

  === The Hounds of Set
  - *Feed on:* blood. Their *saliva* is a narcotic: a bite inflicts _enthralled-2_ alongside harm. Cup-Slaves are tier 4 or more.
  - *Thirst-discipline.* A Hound may refuse to feed when offered: compelling its hunger (1 Tychē) makes it lose face before its juniors.
  - *Thresholds paralyse them.* A blessed doorway stops a duke.
  - *Killing methods:* beheading; fire; a relic-blade; sunlight for the young.
  - *True face* is a Horrifying exposure.

  === The House of Lamia
  - *Feed on:* emotion, by Branch. Feeding inflicts _hollowed_ (Pneuma); sustained feeding kills. Velthuri feeding also inflicts _enthralled_.
  - *Branch weaknesses* (see the faction entry) are real: a Velthuri cannot touch one truly loved and loving; a Malvora is harmed by courage (+1 tier to any harm from a character who just Resisted fear); a Scaeva sickens before hope.
  - *Thresholds* don't stop them, but inside a home they lose their Hunger-powers.
  - *Killing methods:* any lethal means once unveiled — they are the most mortal of the Courts.

  === The Strigoi of Dacia
  - *Feed on:* blood, with the strength of ten men.
  - *Weaknesses:* sunlight (deadly to the young, weakening to the old); garlic; any consecrated object; they *cannot cross thresholds* uninvited; they must sleep in native earth.
  - *Killing methods:* stake, behead and burn — all three, as _Peri Strigōn_ teaches.
  - *Servants:* thralls and darkhounds.

  === The Court of Jade Breath
  - *Feed on:* breath, at the width of a courtyard. A feeding inflicts _breathless_ (Sōma) at range, no touch needed.
  - *Mien.* An insult is a Debt of weight 3, and they always call it.
  - *Killing methods:* unknown in the West. Let the players earn one.
]

== #flex-heading[Oaths, Guest-Right and Parley][Oaths and Parley]

#columns(2)[
  The Concordat's clauses are not etiquette. In play they are Truths with teeth.

  #tbl((1fr, 2fr),
    table.header[Clause][At the table],
    [*Hospitality*], [Create the Truth _Under My Roof_. A host must protect any signatory guest; a guest must not harm the host.],
    [*Parley*], [Raise the white-and-black banner: Create the Truth _Banner of Parley_. No violence until it is lowered.],
    [*Duel*], [Signatories may settle a dispute by champion. Run a Fight between champions; the result binds both sides as an agreed outcome.],
    [*Weregild*], [Harm to non-combatants carries a price: a Debt of weight 1–3 owed to the injured party's faction.],
    [*Outside-Threat*], [Any signatory may demand any other's help against the Outer Dark. Refusing makes the refuser _forsworn_.],
    [*Mortal Sovereignty*], [Ruling openly is a breach. The other signatories may act against the breaker without Weregild.],
  )

  === Forsworn
  Breaking guest-right, parley or a sworn oath inflicts _forsworn-3_ (Pneuma), and the oath-breaker's faction loses standing. While forsworn:
  - other signatories owe you nothing under the Concordat;
  - Fae and Courts may compel you once per scene as if they held your Debt;
  - the status clears only when Weregild is paid, or a Queen forgives it.

  === Swearing an Oath
  When a character swears a true oath — by a Seal, a Court, or a patron — write it as a power tag for as long as they keep it. Breaking it costs the tag, inflicts _forsworn-3_, and gives the GM 2 Woe.
]

== #flex-heading[Conflicts of the Age][Conflicts of the Age]

Scripted conflicts work as in the core rules. This setting renames some core types, removes *Hack / Netwar*, and adds five of its own.

  #tbl((1.3fr, 1.2fr, 1.4fr, 1.2fr, 0.8fr, 1.2fr),
    table.header[Type][Disp.][Attack][Defend][Feint][Maneuver],
    [*Fight*], [Fight / Brawl], [Fight / Brawl / Shoot], [Athletics / Endure], [Deceive], [Notice / Stealth],
    [*Chase*], [Athletics / Ride], [Athletics / Ride], [Athletics / Ride], [Stealth], [Notice / Wayfaring],
    [*Argument*], [Persuade], [Persuade], [Will], [Deceive], [Empathy],
    [*Negotiation*], [Persuade], [Persuade], [Empathy], [Deceive], [Investigate],
    [*Infiltration*], [Stealth], [Stealth / Mechanica], [Deceive], [Craft], [Investigate],
    [*Battle*], [Letters], [Fight], [Endure], [Deceive], [Letters],
    [*Survive the Wild*], [Wayfaring], [Wayfaring], [Endure], [—], [Notice],
    [*Disputation*], [Letters], [Letters / Persuade], [Will], [Deceive], [Empathy],
    [*Contest of Names*], [Mysteria], [Mysteria], [Will], [Deceive], [Letters],
    [*Bargain*], [Persuade], [Persuade], [Will], [Deceive], [Empathy],
    [*Rite Against Rite*], [Mysteria], [Mysteria], [Endure], [Deceive], [Letters],
    [*Intrigue*], [Deceive / Persuade], [Persuade / Intimidate], [Empathy], [Deceive], [Investigate],
  )

#columns(2)[

  === Disputation
  A formal debate before an audience — a council of bishops, the Academy, a Gothic king's hall. Its stakes are what the audience _believes_ when it ends. Losing a Disputation before a church council can make you a heretic.

  === Contest of Names
  This setting's *Spirit Duel*: two magi or a magus and a spirit, each trying to name and compel the other. Knowing the opponent's true name gives +1 on every action. The loser's compromise is usually _enthralled_, _shaken_ or a Debt.

  === Bargain
  Negotiation with something that does not need you: a fae lord, a god, a Lamia matron. The side that loses its Disposition *owes a Debt* (weight 1–3, set by the compromise) as well as the normal outcome.

  === Rite Against Rite
  Two Rites working against each other — a binding and a release, a ward and a summoning. Each side's Disposition is its Rite's clock: Attack removes the opponent's segments, Defend holds your own. When one side's clock empties, its Rite fails and the other completes.

  === Intrigue
  Court politics run over days or weeks: each exchange is a week, a feast, a session of the Senate. Use the core rules for long conflicts. The prize is an office, a marriage, a verdict or a ruin.
]

== #flex-heading[Scene Truths][Scene Truths]

#columns(2)[
  These Truths join the core list. Create them with Momentum, Woe or Effects as the core rules allow.

  #tbl((1fr, 2fr),
    table.header[Truth][Effect],
    [*Holy Ground (patron)*], [Hieratica of that patron +1 Power. Blood-drinkers who enter take _shaken-2_.],
    [*Threshold*], [See *Thresholds and Iron*. The uninvited must pay 2 Woe to cross.],
    [*Thin Place*], [Crossing into the Veil is Standard. Rites here need 2 fewer segments. Dread +1 tier.],
    [*Cold Iron Present*], [Long Night fae can't use Specials within reach of it.],
    [*Solstice Tide*], [The Stone Throne turns. The Court that holds it gains +1 on all rolls in the Veil.],
    [*Day of Blood*], [The eve of the vernal equinox. Mormo's rites need half the segments.],
    [*Witnessed by the Faithful*], [Magic in public is one step harder, and the Church hears of it.],
    [*Plague-Rot*], [Endure rolls are one step harder. Mormo's servants are +1 here.],
    [*Under My Roof*], [Guest-right. Harming host or guest makes the attacker _forsworn-3_.],
    [*Banner of Parley*], [No Attack actions. Breaking it makes the breaker _forsworn-3_.],
    [*The Lamps Gutter*], [Too much magic in one place. Mechanica rolls fail on doubles.],
    [*Veil-Fog*], [Sight is one step harder; resonance travel is Standard.],
    [*Drowned Shore*], [The Order of Dagon's ground. Hybrids +1; the sea is listening.],
    [*Marked by the Sign*], [The Yellow Sign is drawn here. Brotherhood workings +1 Power; Dread +1 tier.],
    [*Sigesis*], [A Gnostic silence. Hieratica can't detect anyone here; prayers go unheard.],
    [*Uneasy Nights*], [Region Truth where the walls grow thin. Shared dreams; rest restores 1 less in each pool.],
  )
]


= #flex-heading[Appendices][Appendices]

== #flex-heading[Glossary][Glossary]

#columns(2)[
  - *Akosmoi, Daimones* — "the un-worlded ones"; the Outer Ones.
  - *Anabasis* — the Gnostic ascent through the archons.
  - *Apokryphon* — (1) the Veiled Sphere; (2) the Gnostic Apokryphon.
  - *Concord, the* — the Concord of the Seven Seals; the wizards' council.
  - *Concordat, the* — the treaty among hidden powers, sealed 287 BC.
  - *Debt* — a favour owed to a hidden power, weight 1–3.
  - *Drujān* — "the Lies"; Persian name for the Outer Ones.
  - *Enthralled* — the status of a blood-drinker's or sorcerer's thrall.
  - *Exōthen* — the Outer Dark.
  - *Favour* — a priest's standing with a patron; spent on Hieratica.
  - *Forsworn* — the status of an oath-breaker.
  - *Free Folk* — fae of neither Court.
  - *Goeteia* — fast, name-binding sorcery of the papyri.
  - *Hieratica* — priestly magic: power borrowed from a patron.
  - *Honestiores, humiliores* — the honoured and the humble under Roman law.
  - *Hoi Exō* — "those outside"; the Outer Ones.
  - *Kosmos* — the mortal sphere.
  - *Magia* — the fire-and-word of the Mobedān.
  - *Mobedān* — the Zoroastrian magi of Persia.
  - *Mysteria* — the skill of magic and rite.
  - *Nemesion* — the Outer taint.
  - *Paranomos* — a lawbreaker magus.
  - *Pneuma* — breath and will; magical potential.
  - *Sigesis* — the Gnostic silence that hides one from the gods.
  - *Stylite* — an ash-cloaked enforcer of the Concord.
  - *Sword of Damocles* — probation for a first-time Seal-breaker.
  - *Theurgy* — Neoplatonic ritual magic; the Concord's art.
  - *Twilight Courts* — Long Night and the Burning Crown.
  - *Veiled Sphere* — the spirit world.
  - *Woe* — the GM's pool.
]

== #flex-heading[Quick Reference][Quick Reference]

#columns(2)[
  === Five Campaign Truths
  Devotion Has a Cost · Names Have Power · The Seals Are Walls · Thresholds and Oaths Hold · The Dark Is Patient.

  === Breaking a Seal
  GM +2 Woe · the walls thin · _nemesion-1_ (VII: _-2_) · Stylites clock ticks if noticed.

  === Workings
  Cantrip 12 · Operation 15–21 · Theurgy 24 as a Rite. 1 Pneuma (Dabbler 2). Outside Domain: one step harder, 2 Pneuma, any doubles backlash.

  === Rites
  Clock 6 / 8 / 12. Untrained +4 segments. Thin Place −2. Kyphi +1 on the first roll.

  === Offerings
  Own blood: −2 Sōma, +1 die · Animal: +1 segment per success, +1 Woe · Willing life: +3, Seal I, _nemesion-1_ · Unwilling life: +4, Seals I and IV, _nemesion-2_, +3 Woe.

  === Patron States
  Starving (one step harder) · Waning · Steady · Waxing (+1 Power) · Bloated (+1 Power; doubles: no answer).

  === Dread
  _Shaken_ (Pneuma) for fear · _unmoored_ (Psychē) for knowledge. Tiers 1–6 by exposure. Familiar horror −1 tier.

  === Debts
  Weight 1–3. Refuse a called Debt: _forsworn_ at twice the weight.

  === Stations
  Outcast · Servile · Common · Lettered · Honoured.
]

