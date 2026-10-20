// =============================================================================
// AETAS OBSCURA — Setting Book for The 2d12 System, Version 2
// Built on the Mythographer 5e Typst template (vendored in this folder).
// Compile from this folder:
//   typst compile --root . --font-path <fonts> aetas-obscura-v2-setting-book.typ
// Fonts: TeX Gyre Bonum, Gillius ADF No2 (see README.md).
// =============================================================================

#import "/lib.typ": *

// Stop TeX Gyre Bonum from setting "oe" as a ligature (Woe, does, Phoebe).
#show regex("[Oo]e"): it => text(ligatures: false, it)
// Let tables break across columns and pages.
#show figure: set block(breakable: true)

#show: dnd-template.with(
  default-config(lang: "en", title: "Aetas Obscura", subtitle: "The Darkening Age", author: "SkroxiousDM"),
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
  subtitle: [#v(8mm) #text(16pt)[The Darkening Age] \ #v(2mm) A Setting for The 2d12 System, Version 2],
  authors: (
    (name: [SkroxiousDM], organization: [github.com/SkroxiousDM/2d12GameSystem]),
  ),
  date: [Setting Book · First Edition · Anno Domini 500],
)

#show-outline()

= #flex-heading[Prologue][Prologue]

== #flex-heading[Using This Book][Using This Book]

#columns(2)[
  #dnd-dropcap[T][he Western Empire is gone][ — but in the year 500 most people do not quite believe it yet. Roman roads still carry the post. Roman law is still cited in Gothic courts. The Senate still meets. Beneath that brittle surface a hidden world of wizards, blood-drinkers, faerie Queens and starving gods is fighting over the bones of an age. This is *Aetas Obscura*, the Darkening Age.]

  This book is a *setting book*. It gives you the world, its factions, and the rules that make the world behave like itself at the table. It does not replace the core rules.

  === What You Need
  - *The 2d12 System, Version 2 — Core Rulebook.* Every rule here assumes it: the 2d12 roll, Difficulties, Power and Effects, statuses, Resistance, Momentum and Woe, Truths, and scripted conflicts.
  - *The core Descriptors, Playbooks and Focuses.* This book adds no new Playbooks or Focuses. The chapter *Characters of the Age* shows how to dress the core ones for the year 500.

  === How the Book Is Organised
  - *Part I — The Darkening Age* is the world: the premise, the map, the cosmology, the Concordat, the factions, the magi of the age, key places and the timeline.
  - *Part II — Rules of the Hidden World* is the setting's rules: campaign Truths, skills, origins, magic, worship, the Seven Seals, horror and taint, the Veiled Sphere, the blood-drinkers, setting conflicts and Truths, Woe spends and opposition.
  - *Appendices* hold the glossary and a quick reference.

  === Secrets
  Material marked *For the Game Master* is not for players. The largest secret in the setting, the *Secret History* (in *Cosmology*), is printed in full so the GM can decide how much of it is true in their campaign — and how much of it the characters will ever learn.

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
    [Spirit], [*Pneuma*], [Breath, will, and the magical potential gods harvest],
  )

  The pool names are not decoration in this setting. *Pneuma* is the literal substance the Nephilim harvest from worship, and the substance a magus spends to name the world (see *The Art of Names*).

  === Notation
  - *Difficulties:* Easy 12, Standard 15, Hard 18, Formidable 21, Heroic 24.
  - *Statuses* are written _name-tier_: _shaken-2_, _nemesion-3_.
  - *Clocks* are written as segments: a 6-clock, a 4-clock.
  - *★* marks an ability that costs Refresh, as in the core rules.
  - *§* references point to the core rulebook unless they name this book.

  === Sources
  The canon for this book is the *Aetas Obscura Setting Bible* and the faction references in `docs/AetasObscura`. The archived *2d12 Version 1* drafts (cultures, social class, backgrounds, ritual magic and sanity) were used as inspiration and rebuilt for Version 2. Design notes close the book.
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
  - *Worship as fuel.* Every named god is a real, active, dangerous being that lives on the worship of mortals. Belief does nothing by itself. Ritual _harvests_ a sliver of each worshipper's own magical potential — their Pneuma — which the being behind the altar uses to extend its life and lends back to its priests. No creed is The Truth; they are all feeding-arrangements dressed as revelation.
  - *Politics over plumbing.* Every faction has factions inside it. Every great power has a successor scheming.
  - *Cosmic horror with stakes.* The Mythos is real and unwinnable on its own terms, but human-scale victories matter. You cannot save the world. You can save your village, your apprentice, your friend.
  - *Late antiquity as a character.* Real places, real polities, real religions, used as the bones of the setting — then twisted.

  === What the Characters Are
  The characters are people who have seen behind the curtain and cannot stop seeing. Typical parties include:
  - a *Concord cell* — an apprentice under the Sword of Damocles, a Stylite, a physician of the School of Alexandria, and a fixer who knows the Senate;
  - a *Court's retinue* — a mortal sworn to a faerie Queen, her bargained-for servants, and a priest who should not be keeping such company;
  - *hunters* — a Fellowship of the Lance veteran, a Marian widow who does not know what answers her prayers, and a scholar who has read too much Hesiod;
  - *the compromised* — a Lamia's thrall who broke free, a Gnostic courier, a Deep One hybrid who has not yet begun to change.

  === Tone
  Play the year 500 as a world of *provisional* things. Every institution is still standing and every one of them is hollow. The characters can win the scene, the city, even the decade. They cannot make the dark go away. Horror lands hardest when the table cares about something small that the dark can take.

  === Campaign Frames
  #tbl((1fr, 2fr),
    table.header[Frame][What the characters do],
    [*Under the Seal*], [Concord agents on probation, sent where the Inner Seal will not go itself. Patron: Damaskios or Boetius.],
    [*The Knight's Road*], [The retinue of a Court's mortal Knight, collecting debts and keeping the Mantle from being stolen.],
    [*Two Mothers*], [Hunters caught in the war between Mormo's sects and the Marian hunters of Isis.],
    [*The Long Watch*], [A cell racing the Brotherhood of the Black Pharaoh toward the end of Sarra's 333-year cycle in 502.],
    [*Last Roman*], [Sub-Roman Britain with Ambrosius Aurelianus: Saxons, Strigoi, the druid-lord Drest, and Long Night's gates.],
    [*Ērānšahr*], [Persia under Kavad and the Mazdakites, with Bondos as patron and a dead high priest giving orders.],
  )
]

== #flex-heading[The World in 500 AD][The World in 500 AD]

#columns(2)[
  A brief tour, west to east, of the map your players will move across.

  #tbl((0.9fr, 1.2fr, 1.2fr),
    table.header[Region][Mortal power][Hidden powers most active],
    [*Britannia*], [Sub-Roman warlords; rising Saxon kingdoms], [Court of Long Night; Strigoi allied with Picts; Drest],
    [*Gaul*], [Franks under Clovis (Catholic since 496); Burgundians; Visigoths], [Burning Crown; Concord chapter at Tolosa],
    [*Hispania*], [Visigothic kingdom (Arian)], [Hounds of Set raiding-trails; ancient Iberian Free Folk],
    [*Italy*], [Ostrogoths under Theodoric, ruling from Ravenna], [House of Lamia; Concord chapter at Rome; Mormo's catacomb cabals],
    [*North Africa*], [Vandals under Thrasamund (Arian; persecutes Catholics)], [Hounds of Set (seat at Carthage); Brotherhood in the deep desert],
    [*Balkans*], [Eastern provinces raided by Bulgars and Slavs], [Strigoi homeland in Dacia; Yithian relay at Sirmium],
    [*Constantinople*], [Anastasius I, an old and careful man], [Concord's largest chapter; Lamia diaspora; the Inner Seal's eastern chancery],
    [*Anatolia and Syria*], [Chalcedonian and Miaphysite strife], [Concord and theurgic schools; Order of Dagon on the Lebanese coast],
    [*Egypt*], [Alexandria seething with religious violence], [The Concord's Old Seat; Brotherhood temples in the Faiyum; Marian hunters],
    [*Persia*], [Sasanians under Kavad I and the Mazdakites], [The Mobedān; Hounds of Set across the southern border],
    [*Arabia and Yemen*], [Tribal confederations; Jewish Himyar], [Djinn of the deep desert; a Deep One enclave in the Gulf],
    [*The Steppe*], [Hephthalite "White Huns"], [Court of Jade Breath; the buried Yithian archive at Pnakotus],
  )

  === The Mood
  Most people in 500 do not believe Rome has fallen. Latin is still the language of Theodoric's chancery. The consuls are still named each year. It is exactly the right moment for a hidden world in which the _old_ powers are losing their grip and the _new_ ones — Christ, the Outer Ones, the faith not yet born in Arabia — are not yet supreme. Everything is provisional. Everything is up for grabs.

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
  - *Judaism* thrives from Himyar to Babylon, quietly aware that the god of the Temple has been very busy elsewhere.

  #gm[
    None of these creeds is _true_. Each is a feeding-arrangement for something that drinks Pneuma. That is the engine of the setting. See *Cosmology* and *Worship and Hieratica*.
  ]
]

== #flex-heading[Cosmology][Cosmology]

#columns(2)[
  === The Three Spheres
  The hidden world divides reality into three spheres.

  ==== The Mortal Sphere (_Kosmos_)
  The world of flesh, iron and stone. Most of the action happens here.

  ==== The Veiled Sphere (_Apokryphon_)
  The spirit world. It lies alongside the mortal world like another country, but its shape is not the same. It is vast — much, much larger than the mortal world, perhaps infinite. The Sidhe of the two Twilight Courts rule the reaches nearest to us. Later traditions will call it the Astral, the Dreamlands and the Otherworld. Theurgists and sorcerers walk in it. Time runs strangely there.

  The Veiled Sphere touches the mortal world where the two share a _resonance_. If a place in the Veil is dark and dreadful, it touches a dark and dreadful place in the Kosmos. Five feet over, it might only be sad — and lead to a cemetery on the other side of the Empire.

  ==== The Outer Dark (_Exōthen_)
  What lies beyond the edges of the Veil, outside reality. The home of the Outer Ones. Travel there destroys minds. Beyond the Outer Gates it is physically a land of dust, mud and loose shale, cut by gullies, lit by a sourceless light under an enormous black sky without a single star. The plants there poke, scratch and sting. The Court of Long Night keeps the seals on the Outer Gates.

  === The Outer Ones
  These are not gods; the Concord refuses them the word _theoi_. They are _Hoi Exō_ ("those outside"), _Daimones Akosmoi_ ("the un-worlded ones"), or in Persian usage _Drujān_, "the Lies."

  #tbl((1fr, 2fr),
    table.header[Designation][Nature],
    [*The Throne at the Center* (Azathoth)], [A blind, idiot vortex at the heart of the Outer Dark. Reality is the dream it does not know it is having.],
    [*The Gate and the Key* (Yog-Sothoth)], [All times and places at once. The being one summons to _know_. To know it is to be unmade.],
    [*The Crawling Chaos* (Nyarlathotep)], [The one that speaks, walks and plays politics. A thousand masks; the Brotherhood worships one.],
    [*The Black Goat of the Woods* (Shub-Niggurath)], [A fertility-horror under many masks. Her Mediterranean near-aspect is Mormo.],
  )

  #rule[A Note on Cthulhu][
    Cthulhu is not listed among the Outer Ones. He was a *Watcher* — the first of his order to touch the Outer Dark, and changed by it forever. Through the breach he made, *Mormo* slipped into the world. He is imprisoned beneath the waves in sunken *R'lyeh*. *Father Dagon* is a mask of Cthulhu; *Mother Hydra* is a mask of Mormo.
  ]

  === The Worship-Harvest
  A person who prays, sacrifices or performs a rite gives up a thin filament of their own Pneuma. The being addressed siphons it off and keeps it. The donor never notices: the loss is small and returns by the next day. Multiplied across thousands of worshippers, the daily yield is enormous.

  The being spends the harvest on two things: *extending its own life*, and *lending portions back to its priests* as the power they call holy. A god with no worshippers harvests nothing, and starves.

  === How Magic Works
  Magic is *the imposition of a name on reality*. To name a thing in its true tongue is to compel it. The recognised traditions are Theurgy, Goeteia, Magia, Hermetica, Hieratica and — never to be learned — the Black Speech. Each has its own rules; see *The Art of Names*.

  The *Seven Seals of Solomon* are the Concord's absolute prohibitions. They are not laws in a mortal sense. They are *architectural features of reality*: to break one weakens the walls between the Sphere and the Dark.

  #gm[
    Everything from here to the end of the chapter is the *Secret History*. The Concord teaches a sanitised version (the Three Spheres, the Outer Ones, the founding by Iamblichus the Elder). The truth is known in full only to the Inner Seal, and in fragments to the Gnostics, the Mobedān, the Twilight Queens and the Yithian Recorder.
  ]

  === The Secret History

  ==== The Watchers and the Nephilim
  In the ages before history, two hundred *Watchers* (_Egrēgoroi_) descended onto Mount Hermon. They took mortal women and fathered the giant-blooded *Nephilim*. They taught humanity metallurgy, weaponry, cosmetics and — fatally — sorcery. That gift was not charity: teaching mortals to reach toward the supernatural made them *harvestable*.

  The Nephilim are not the Outer Ones and not truly demonic. They are long-lived, beautiful, able to work sorcery without any Seal's protection, and *hungry for the harvest*. From that hunger comes the entire pagan pantheon. Every god with a priesthood and a few thousand worshippers is — or was — a Nephil wearing a mask: Marduk and Ishtar, Osiris, Isis, Thoth and Hathor, Baal and Astarte, Zeus, Hera, Hermes and Hekate, Mars and Janus, Odin, Thor and Loki, Perun and Veles, Mithras and the Magna Mater.

  ==== The War Between Fathers and Children
  The Watchers expected the harvest of the new cities to flow up to _them_. Their embodied, touchable children intercepted it. The war that followed — the *First Great Defection* — ended with the Watchers destroyed, banished, or bound "in the valleys beneath the earth in chains of iron." The Inner Seal believes those chains still hold.

  The victors built their cults on the telling of it, so every pantheon remembers the same war with the names changed: the Titanomachy, the slaying of Ymir, Marduk and Tiamat, Kumarbi and Teshub, the Ennead displacing the Ogdoad, the Devas and the Asuras. The Mobedān alone teach it openly: the _daēvas_ are the Nephilim; the _ahuras_ were the Watchers, and Ahura Mazda is the last of them still aligned with the Light.

  ==== The Watchers Who Remain
  *Set*, *Ahura Mazda*, *Yahweh* (Yaldabaoth) and *Cthulhu* are all Watchers who stayed active in the mortal Sphere by very different means. Older traditions call Watchers of great age and power *Great Old Ones* — a term the Concord uses carefully, because it blurs Watchers with the truly alien Outer Ones.

  ==== The Flood and the Sorcerer-Kings
  From about 3500 to 1500 BC, terrestrial politics were a war between Nephil sorcerer-kings for worship-pools. The Sumerian _Lugal_, "big man," once meant _Nephil-on-the-throne_. The Flood was real, and it _ended_ the Titanomachy: a coalition of Nephilim, Enki among them, drowned the worst battlefields rather than keep slaughtering the population that fed them.

  ==== The Eridu Breach
  About 2300 BC, seven Sumerian Nephilim tried to open a permanent portal to the Outer Dark. Something enormous began to push through, at a point that corresponds to a marsh near buried *Eridu*. The Court of Long Night closed it by main force and wove a *standing seal* of fae-flesh and oath across the gap. It has held for forty-three centuries. *It still bleeds.* The seven Nephilim are sealed inside the wall, mad and screaming, used as load-bearing material.

  This is why Long Night is cruel: every soul Morrigna binds and every debt she buys *feeds the wall*. Every rite worked to Mormo presses a feather's weight more on it.

  ==== Atlantis, Hyperborea and the Fomorians
  Long Night is the cold heir of drowned *Hyperborea*. The Burning Crown is the warm heir of *Atlantis*, drowned about 12,000 BC. The part of Atlantis that reached for the Outer Dark to survive became the *corrupted Atlanteans* — Menes in Egypt and Drest in Britain. Between 2000 and 1000 BC the Esoteric Order of Dagon planted Deep One colonies off Ireland, remembered as the *Fomorians*; the Burning Crown broke them at the Second Battle of Mag Tuired, about 1100 BC.

  ==== The Hunger and the House of Lamia
  About 700 BC, the Etruscan Nephil-king *Larth Caisra* of Caere reached into the Dark for a bargain and found *the Hunger* (_Hē Peina_), a fragment of Shub-Niggurath's devouring aspect. It wore him like a coat. His daughter, *Lamia Prima*, bound it to his soul — and during the rite the bound thing raped her. Every Lamia descends from the child she bore. Larth Caisra's body still lies cataleptic beneath the Aventine. If he dies, every Lamia dies. If the binding breaks, the Hunger walks.

  ==== Yaldabaoth and the Galilean
  The Inner Seal holds under triple oath that *Yeshua of Nazareth* was a mortal Gnostic Magus — perhaps the most gifted theurge in history — whose ministry was a public campaign against *Yahweh*. He lost, and was killed through the Temple priesthood. Over three centuries Yahweh _stole him_: the canon, the creeds and the Trinity redirected Yeshua's following into Yahweh's pool. In 500 that pool is the only one in the Empire that is growing, and Yaldabaoth is *bloated* on it — too swollen to watch everything happening on earth.

  Other Nephilim have noticed. *Isis* now feeds in secret behind the mask of *Mary Theotokos*. Others ride lesser Saints. A bloated Yaldabaoth who one day notices parasites in his own house is a scenario with no good outcomes.

  ==== Who Knows What
  #tbl((1fr, 2fr),
    table.header[Faction][Knowledge],
    [Inner Seal], [All of it. Sworn never to publish.],
    [Concord at large], [The Nephilim doctrine in outline. Not Eridu, not Lamia, not the bound Watchers.],
    [Twilight Queens], [Everything but the Lamia origin; Morrigna suspects.],
    [House of Lamia], [The Domina Maxima knows. Larthia Velthuri does not — yet.],
    [Mobedān], [The Nephilim and the war; taught openly as _ahura_ against _daēva_.],
    [Brotherhood], [The Nephilim and Eridu. *They want the breach reopened.*],
    [Gnostics], [That Yaldabaoth is the enemy; not Eridu or Lamia.],
    [Yithian Recorder], [Logged, with citations.],
    [Ordinary mortals], [Nothing. They sing hymns to gods who are dying.],
  )
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

== #flex-heading[The Factions][The Factions]

#columns(2)[
  Each entry gives an overview, the people who matter, what the faction wants, and how to use it. *Tags* are suggested power and weakness tags for statting its members (see *Opposition of the Hidden World*).

  === The Concord of the Seven Seals
  The worldwide council of wizards (_Concordia Septem Sigillorum_), founded in the 3rd century BC by the philosopher-magus *Iamblichus the Elder* out of Alexandria's secret theurgic school. Its spiritual home, the *Old Seat*, lies beneath the ruined Serapeum. Its working library and its business moved to the *Castrum of Drepanum* in Bithynia.

  #tbl((1fr, 2fr),
    table.header[Office][Holder],
    [*Magister Sigillorum*], [Theognostos of Smyrna, a bureaucrat with a deciding vote],
    [*The Inner Seal*], [Seven eldest theurgists, among them Damaskios of Damaskos and Markos Drepanios],
    [*Gatekeeper of the Outer Dark*], [Rashidun of Edessa; screens returning emissaries for taint],
    [*The Black Wand*], [Unofficial. Licensed to break the Seals to save the Concord. Old Eberezdes of the Cyrenaican mountains.],
    [*Stylites*], [The ash-cloaked enforcers, captained by Loukia Theoktiste],
    [*The Edged Seal*], [Nine relic-blade bearers; eight seats filled],
  )

  ==== Robes and Stoles
  Apprentices wear undyed wool. Full members wear a *blue* stole; the Inner Seal *purple*; a century of service *red*. A silver braid marks a master of _Pharmakeia_ (alchemy), a gold caduceus a master of _Iatreia_ (healing), a copper chevron a doctorate from Alexandria, Athens, Edessa or Nisibis. Stylites wear *ash-grey* cloaks woven not to hold blood.

  ==== Fronts
  The *School of Alexandria* (medicine, astronomy), the *Academy of Athens* (philosophy), the *School of Nisibis* (theology and Syriac learning) and the *School of Toulouse*. Each is a real school with real students, and each hides a door into the Veil.

  ==== The Edged Seal
  After the Eridu-wall scare of 488, the Inner Seal armed nine trusted Stylites with consecrated *relic-blades* — the only weapons in its armoury that reliably wound a Nephil in masquerade or a Brotherhood magister mid-summoning. Each blade answers one sworn bearer; abandoned, it goes inert for a year and a day. Bearers swear never to draw on a mortal who has not first raised a hand against the Concord, never to lie about the blades within the cadre, and never to go beyond reach of a sworn second.

  #tbl((1fr, 2fr),
    table.header[Blade][Cuts through · Bearer],
    [_Lumen Stili_], [Deception and glamour · Loukia Theoktiste],
    [_Vinculum Fractum_], [Thrall-bonds · Daniel of Edessa],
    [_Os Iusti_], [False oaths · Yusuf ibn Harith],
    [_Specula Pacis_], [Coercion · Theodora of Thessalonike],
    [_Cor Lupi_], [Flesh that should not regenerate · Brigida of Glevum],
    [_Vox Silentii_], [Yahweh's protections · Yohannan the Syrian],
    [_Crinis Noctis_], [The membrane between Spheres · Markos Drepanios],
    [_Ferrum Sapientiae_], [The lie that a thing has no name · Aryapad of Tisfun],
    [_The Ninth_], [Unforged. The Inner Seal cannot agree on its source.],
  )

  ==== Wants
  To keep the glass of reality whole, keep the Secret History buried, and keep its own politics from killing it first. It is *bureaucratic, paranoid and old*. Even a justified act can be twisted into a Seal violation by an Inner Seal member with a grudge.

  ==== At the Table
  _Tags:_ oath-bound iron · library of four schools · "the Seals forbid it" · slow to act · enemies on the Inner Seal. _Hooks:_ the Sword of Damocles; a mentor who is secretly the Black Wand; a Brotherhood mole on the Inner Seal; a forgotten Eighth Seal.

  === The Four Sanguine Courts
  Four entirely different species share the name "blood-drinker" (_haematopotēs_, _sanguisuga_). They despise being conflated. Rules for all four are in *The Blood-Drinkers*.

  ==== The Hounds of Set
  An Afro-Levantine vampire civilisation born from a corruption of the Set-cult in the late Eighteenth Dynasty, now a shadow nobility of the Vandal kingdom. True form: taller than mortals, dog-jackal heads, bat-ribbed wings folded under the skin, a second jaw inside the first. They wear flesh-masks — _personae_. Their culture is a *cult of thirst-discipline*: status is the ability _not_ to feed. The *Red Pharaoh*, six thousand years old beneath Karanis in the Faiyum, is secretly a thirst-addict.

  #tbl((1fr, 2fr),
    table.header[Rank][Who],
    [Apex], [The Red Pharaoh],
    [Inner Circle], [The Thirteen Lords of the Outer Sand, retired gods of forgotten cults],
    [Nobility], [Geilamir the Pale (_magister officiorum_ at Carthage); Lady Cyria of Sabratha],
    [Soldiers], [Jackal-Wardens, half-vampires in bronze jackal masks],
    [Servants], [Cup-Slaves (_calicarii_), addicted to Hound saliva],
  )
  They are *paralysed by thresholds*: a peasant's blessed doorway can stop a duke. They are at undeclared proxy war with the Concord in Sicily, loathed by the Burning Crown and by the *Fellowship of the Lance*, a Roman-Berber militia that recruits the half-turned. _Use them_ as the most visible hidden faction — early-tier antagonists.

  ==== The House of Lamia
  An Etrusco-Greek patrician vampire society that feeds on *emotion*. Their public myth descends them from the Libyan queen Lamia; the truth is Larth Caisra and the Hunger. They are the most human-passing of the Courts: they age, marry and breed almost like mortals. Lamiae are raised as ordinary patrician children and _not told_ what they will become. Their *first feed is always fatal* and is their rite of passage. They own magistracies, shipping, brothels, oil presses, theatre troupes and several Senate seats. Court language: Etruscan.

  #tbl((0.9fr, 1.2fr, 1.2fr),
    table.header[Branch][Feeds on][Weakness],
    [*Velthuri*], [Lust and intimacy], [Cannot touch one who truly loves and is loved, nor tokens of true love],
    [*Malvora*], [Fear], [Harmed by genuine courage],
    [*Scaeva*], [Despair], [Sickens in the presence of genuine hope],
  )
  The *Domina Maxima* lies powerless in Rome under the curse of *Markella of Tarentum*, who slept with her, bore a son, and bound her hunger on dying. Her eldest daughter *Larthia Velthuri* runs the House from the Aventine — cool, brilliant, terrifying. Markella's son is *Markos Drepanios* of the Inner Seal. _Use them_ as mid-tier antagonists who almost never fight openly.

  ==== The Strigoi of Dacia
  The undead corpse-vampires of the Carpathians, nearly exterminated three centuries ago by *Hierokles of Thessalonike*'s hunting manual _Peri Strigōn_, written at the House of Lamia's request. The survivors are the most cunning monsters in the world by sheer filtering. *Bessos the Undying*, Lord of the Carpathian Halls, is something inhuman stuck in human shape since before Troy; rumour says he is turning fallen Stylites. *Anthousa Skoteine*, "the Shadowed," works magic like a wizard and passes by candlelight as a Greek aristocrat in Constantinople. A band of Strigoi is a _scourge_. _Use them_ for classic dread.

  ==== The Court of Jade Breath
  A secretive East Asian court of the Yangtze and Yellow River valleys that feeds on *breath*, and can kill across a courtyard. It deals only through Sogdian middlemen who do not know whom they serve. Not a signatory — but treated as one, because a Sasanian magister who insulted a Jade Breath envoy in 478 was found three years later with his lungs full of jade dust. _Use them_ for Silk Road paranoia and assassination mysteries.

  === The Two Twilight Courts
  The faerie powers of the Veiled Sphere. Each Court is ruled by *three Queens* — Maiden, Queen and Crone. Each appoints a *mortal Knight*, the only being who may kill outside the Court's own membership: a Queen cannot personally kill anyone not bound to her Court by birth or bargain. The Knight bears a *Mantle* of borrowed power that returns to the Queen at his death. There is *no Faerie King*. The *Stone Throne*, a blood-fuelled altar, passes between the Courts at the solstices.

  ==== The Court of Long Night
  The Court of cold, predation and the killing edge; heir of Hyperborea. Its fae are _Brumales_, the Winter Sidhe. Its capital is *Arctistor*, a fortress of black glass in the northern Veil. Its secret purpose: *it keeps the seals on the Outer Gates*. Every cruel bargain feeds that war.

  #tbl((1fr, 2fr),
    table.header[Role][Holder],
    [Crone], [_An Chailleach Bhéara_, "She Who Was." Closer to a Mythos entity than to her children.],
    [Queen], [*Morrigna*, Queen of Hoarfrost and the Slow Knife. Once mortal; drafter of the Concordat; loathes inaccurate folktales.],
    [Maiden], [*Niamh of the Pale Hand*, who shows signs of Outer taint],
    [Knight], [*Edica the Wolf-Marked*, a broken Pannonian kept alive because he is useful],
    [Sworn], [The Cat Sith, Grimaerex, the Leannan-Sidhe, Jenna of the Green Teeth, the Redcap, Rawhead],
  )
  Long Night is weak to *cold iron* — iron worked by mortal smiths. It holds a long alliance with the Mobedān and tolerates the Hounds of Set as a counterweight to the Brotherhood.

  ==== The Court of the Burning Crown
  The Court of growth, heat, fertility and life; heir of Atlantis, later dressed in the bull-courts of Crete and the green ladies of Etruria. Its fae are _Aestivales_, the Summer Sidhe. Its capital is the *Hall of Beaten Gold*. It waxes from midwinter to midsummer.

  #tbl((1fr, 2fr),
    table.header[Role][Holder],
    [Queen], [*Aigle*, Queen of Lions and Olives, Morrigna's twin. Hates Markos Drepanios for the death of her daughter Heliodora in 497.],
    [Maiden], [*Hesperia* — cautious, fragile, brilliant],
    [Knight], [*Theodoros Sebennytos*, an Egyptian soldier in love with someone he cannot have],
    [Sworn], [The Eldest Gruff and his warrior-clan; Korrikōs, Talōs, Tirnos],
  )
  It touches mortals through dreams, harvests, Bacchic rites and violent love affairs, and holds a *blood-grudge against Deep Ones*. It is the more approachable Court; its bargains bind no less.

  ==== The Sisters at the Cottage
  On the border where the Veil thins sits a cottage. Both Crones live there, sharing a hearth, a loom and a cauldron — one with black thread, one with gold. A third presence, a _Mother of Pus_, sometimes weeps in the corner. To visit it on purpose is to have signed something you do not know you signed.

  ==== The Free Folk
  Fae of neither Court: satyrs, nymphs, the Erlking's Wild Hunt, Gwynn ap Nudd, the djinn, the kobolds of the mines, the _lares_ and _lemures_ of every Roman house. A wizard can keep his own small household of them for milk, honeyed barley-bread and silver.

  === The Brotherhood of the Black Pharaoh
  The primary Mythos cult, worshipping *Nyarlathotep* as *Nephren-Ka*, the Black Pharaoh, waiting beneath the Sahara. They are not nihilists but *eschatologists*: the world must be scoured, and the faithful few will serve in the new dispensation. They operate openly at buried *Sarra* in the Libyan desert, in the *Faiyum* as a heretical Coptic order, and in rural *Bithynia*; elsewhere in cells.

  #tbl((1fr, 2fr),
    table.header[Rank][Who],
    [The Voice], [*Sennefer of Bahariya*, a fallen Coptic priest],
    [The Seven Masks], [Black Pharaoh, Bloated Woman, Howler in the Dark, Crawling Mist, Beast of the Beyond, Skinless One, Faceless God],
    [_Mystai_], [Initiated sorcerers, scholars, defectors],
    [_Signati_], [The Marked, branded with the Yellow Sign],
    [Servants], [The Shoggoth-Born],
  )
  They recruit with power for the powerless, knowledge for scholars, vengeance for the wronged and escape for the addicted. Most members are sympathetic and do not know they serve the end of the world. *Sarra's 333-year cycle ends in 502.* _Use them_ as the long-arc enemy, felt before seen.

  === The Esoteric Order of Dagon
  An ancient Philistine and Phoenician cult of *Father Dagon* and *Mother Hydra*, made of *Deep One hybrids*. Strongholds: *Sidon*, a depopulated stretch of the Adriatic, and the rebuilding rump at *Innis Mor* in Ireland. Hybrids pass as human until middle age, then change — bulging eyes, slick skin, gills — and become functionally immortal in the sea between 40 and 70. Towns that host a chapter prosper; towns that resist suffer storm, empty nets and disappearances. _Use them_ for the village that is doing too well.

  === The Yithian Archive
  A faction outside time. The Great Race of Yith record the history of every species by *swapping minds* with great thinkers for years at a time. Mortals deal only with their embassy: *Eudokia of Antioch*, a nine-year-old Greek girl who carries the Great Library in her mind — *the Recorder*. She walks under the Concordat as Observer; insulting her draws a penalty so severe that even Morrigna defers. The Brotherhood would dearly love to capture her. _Use her_ sparingly. Run a mind-swap once.

  === The Gnostic Apokryphon
  The scattered, deliberately headless survival of the tradition *Yeshua* actually founded — a few hundred initiates in *circles* named for the original cells, hiding inside the very churches that hunt them. They agree on four things: Yahweh is the enemy; Yeshua's praxis is reproducible; souls are trapped in matter by design; *concealment is sacred*.

  #tbl((1fr, 2fr),
    table.header[Circle][Seat],
    [Magdalene], [Alexandria and Antioch (about 40)],
    [Thomas], [Edessa and the Persian frontier (about 80)],
    [Philip], [The Faiyum (about 30)],
    [Samaritan], [Sebaste; tends Simon's grave (about 20)],
    [Sethian], [Wandering since 367 (about 15)],
    [Valentinian], [Hidden in three patriarchal sees (about 25)],
    [River-Cell], [The marshes south of Tisfun (about 50)],
  )
  Their workings — _Anabasis_, _Lytrosis_, _Apokalypsis_, _Sigesis_ — are in *The Art of Names*. They have no combat magic. A PC seen with one is a heretic in the eyes of a church that burns heretics. Notables: *Ioannes of Edessa*, who writes monthly to Damaskios as "Symeon the wine-merchant"; the *Anonymous Magdalene*, seventy-three, who means to attempt the full Ascent before she dies; the *Witch-of-the-Reeds*.

  === The Cult of Mormo
  The Mediterranean and northern-forest face of the Black Goat. Mormo is no Nephil and does not weaken: she feeds on plague, famine, displacement and rot, and the Darkening Age has fed her well. Her sects share no hierarchy, connected beneath the soil like toadstools. Her method is *parasitism*: a sect grows inside a kinder fertility faith and replaces it. With the pagan hosts collapsing, her sects now creep inside Christianity — and meet their oldest enemy. The eve of the vernal equinox is the *Day of Blood*.

  #tbl((1fr, 2fr),
    table.header[Role][In a sect],
    [High Matron or Patron], [Leaders who rule through dupes],
    [Priests], [Transfigured by communion: horns, fur, sores],
    [Speaker of the Mother], [Recruiter who hides her marks],
    [Shepherd of the Get], [Keeper of beasts and horrors],
    [_Metragyrtai_], [Wandering couriers and assassins],
    [The Brood], [Initiated faithful, living double lives],
    [The Rabble], [Civilians whipped to violence],
    [The Reborn], [Goats of the Mother, caprine and mad],
  )

  ==== The War of the Two Mothers
  *Isis* has hated Mormo since the first Nile dynasties. Losing her temples, she slipped into the mask of *Mary Theotokos* and feeds quietly on Yahweh's pool, spending every drop on hunting Mormo. Her *Marian hunters* — widows, virgins, ascetics, grieving mothers — work rites that _really work_, because Isis loans their own harvested Pneuma back to them. If Yahweh notices, a war between gods runs through every congregation from Alexandria to Tolosa. Mormo's most dangerous dream is to *make him look*.
]

== #flex-heading[Magi of the Age][Magi of the Age]

#columns(2)[
  Twelve figures — some living, some dead, some legendary — woven into the year 500.

  #tbl((1fr, 2fr),
    table.header[Figure][In 500],
    [*Solomon ben David*], [Dead fifteen centuries. The mythic First Sealer. His signet ring lies in the Temple Mount rubble; it can bind an Outer Power — or release one.],
    [*Iamblichos of Chalkis*], [Dead since 325. Reformed theurgy into the three tiers of Cantrip, Operation and Theurgy. His unfinished rites surface in caches.],
    [*Hypatia of Alexandria*], [Martyred 415, having re-set the Second Seal the night before. The Concord could have saved her and chose not to. Her ghost walks the Old Seat.],
    [*Damaskios of Damaskos*], [42, Inner Seal, head of the Athenian house. Brilliant, prickly, fond of wine. The ideal patron. Fears the day emperors call philosophy sedition.],
    [*Boetius of Ravenna*], [20, junior Concord asset at Theodoric's court. Naive enough to ask for help, senior enough to pay. His fall in 523 need not happen.],
    [*The Master of Tyana*], [Apollonios, dead 400 years, claimed by Concord, Brotherhood and Gnostics. His staff is lost in a shrine.],
    [*Simon of Sebaste*], [Dead 440 years, killed by the Brotherhood, not by Peter. The Samaritan Circle tends his grave; workings there always succeed.],
    [*Myrddin Emrys*], [7, the Concord's ward at Drepanum, terrified of his dreams. He will become the wild prophet of Caledon.],
    [*Ambrosius Aurelianus*], [50, Concord-trained battle-mage and lord of Caer-Gloui. Signatory in his own right. Will never forgive the Concord for taking Myrddin.],
    [*Gildas*], [An infant in the north. Not a wizard: the Recorder's Subject 307, whose book will be what history believes.],
    [*Mug Ruith*], [The blind Wheel-Druid of Valentia Island. Outside every jurisdiction. His price is never gold. He met Simon the night before Simon died.],
    [*Bondos the Reformer*], [Publicly dead two centuries; preserved in a grove south of Nishapur. Teacher of Mazdak; quiet Concord ally.],
    [*Kartīr of the Seven Heavens*], [Dead high priest preserved in the _Chinvat Lens_ at Adur Gushnasp. The Mobedān take his orders. He was a persecutor, and has had two centuries to grow stranger.],
  )

  === How They Connect
  Boetius, Myrddin and the estranged Ambrosius are all downstream of *Damaskios*. Tyana, Simon and Mug Ruith are the traditions the Concord _failed to absorb_. Bondos and Kartīr mirror Damaskios and Hypatia in dark glass. Gildas is the reader of your campaign.
]

== #flex-heading[Places of Power][Places of Power]

#columns(2)[
  #dnd-area[
    = Seats of the Concord
    == The Old Seat, Alexandria
    Pillared halls beneath the demolished Serapeum, warded so that "only a being of godhead may pass." Mostly empty. Hypatia's ghost — or a thoughtform of the Seat itself — walks there.

    == The Castrum of Drepanum, Bithynia
    A Roman coastal fort fronted by a small school. Beneath: laboratories, the Hall of the Inner Seal, the executioner's chamber, and the vault of the Sword of Damocles.

    == The Ephesian Keep
    A hidden third sub-crypt beneath the Basilica of St. John. Eleven sealed Brotherhood bindings, a pair of Edged-Seal blades in rotation, a watch of six Stylites, and the *Mask of Sennefer's Predecessor*, which the Voice has hunted for forty years.

    == The Pillar of the Stylite, Syria
    A real pillar-saint prays on top. Beneath him, unknowing, new Stylites spend their first year in a cell.

    = The Veiled Sphere
    == Arctistor
    Long Night's fortress of black glass and bone-white pillars. Gates in Iceland, the Carpathians and the high Caucasus.

    == The Hall of Beaten Gold
    The Burning Crown's sunlit palace of gold and olive-wood on a mountain that does not exist. Gates in Crete, Etruria and the Lebanon.

    == The Cottage of the Crones
    One small hut on the border of the Outer Dark. Almost impossible to reach.

    = Places of the Enemy
    == Sarra, the Deep Sahara
    The Brotherhood's temple-city, buried under a hundred feet of sand. It wakes in cycles of 333 years. The cycle ends in 502.

    == The Drowned Library, off Sidon
    A pre-Phoenician complex held by the Order of Dagon, with tablets older than Sumer. Their contents are not safe to read.

    == The Eridu Breach
    A marsh in the Kosmos; a bleeding wall of fae-flesh in the Veil, held by a phalanx that has never broken.

    == Pnakotus
    The Yithian archive in the far southern desert. End-of-campaign material.
  ]
]

== #flex-heading[Timeline of the Hidden World][Timeline]

#columns(2)[
  === Deep Antiquity
  - *c. 30,000 BC* — Hyperborea and Atlantis flourish.
  - *c. 12,000 BC* — Both drown. Long Night and the Burning Crown rise from them; the corrupted Atlanteans reach for the Dark.
  - *c. 8000–4000 BC* — The Watcher–Nephilim War, the First Great Defection.
  - *c. 3500 BC* — The first cities. The first Yithian observations.

  === Recorded Antiquity
  - *c. 2300 BC* — The Eridu Breach. Long Night closes it and has held the wall since.
  - *c. 1500 BC* — Nephren-Ka rules Egypt and worships Nyarlathotep openly.
  - *c. 1100 BC* — Second Battle of Mag Tuired; the Fomorians are broken.
  - *c. 950 BC* — Solomon binds the demons of the Levant by ring and seal.
  - *c. 700 BC* — Larth Caisra and the Hunger; the House of Lamia begins.
  - *287 BC* — The Concordat is sealed.
  - *c. 250 BC* — Iamblichus the Elder founds the Concord.
  - *47 BC* — The Library of Alexandria burns the first time.
  - *c. 30–33* — Yeshua's ministry and death. The Apokryphon is born.
  - *60* — The Brotherhood assassinates Simon of Sebaste.
  - *c. 96* — Death of the Master of Tyana.

  === The Imperial Era
  - *c. 293* — Kartīr dies and is preserved in the Chinvat Lens.
  - *325* — Death of Iamblichos; his three tiers become canon.
  - *c. 380* — The Mobedān accede to the Concordat.
  - *391* — The Serapeum is destroyed; the Old Seat is sealed.
  - *415* — Hypatia is murdered. The Inner Seal does not intervene.
  - *431* — Ephesus proclaims Mary _Theotokos_. Isis has found her mask.

  === Living Memory
  - *476* — The last Western emperor is deposed.
  - *482* — The Hades Vault affair. The Concord owes Long Night a debt not yet called.
  - *488* — Theodoric invades Italy. The Eridu-wall scare: the first Edged-Seal blades are forged.
  - *493* — Theodoric kills Odoacer.
  - *496* — Clovis is baptised.
  - *497* — Markos Drepanios kills Heliodora at Arctistor. The Stylites take Myrddin from Dyfed.
  - *498* — Kavad is restored and embraces the Mazdakites, quietly advised by Bondos.
  - *c. 500* — Gildas is born. *Play begins.*

  #gm[
    *Foreseen — do not show players.* 502: Sarra's cycle ends and the Brotherhood wakes its legions. 523–524: Boetius falls and is executed. 527: Justinian ascends. 528: Mazdak is executed; Bondos survives. 529: the pagan schools close and Damaskios flees to Persia. 541: the Plague of Justinian. c. 573: Myrddin goes mad at Arfderydd. None of it has to happen.
  ]
]

= #flex-heading[Rules of the Hidden World][Rules of the Hidden World]

== #flex-heading[Campaign Truths][Campaign Truths]

#columns(2)[
  Every 2d12 setting starts with *Campaign Truths*: facts that are always true and that the rules lean on. Aetas Obscura has five.

  #rule[1 · The Gods Are Hungry][
    Every rite of worship harvests Pneuma from those who take part. When a character joins a real rite — a Mass, a sacrifice, a festival, a sincere prayer at an altar — they lose *1 Pneuma*, which returns at their next rest. Belief changes nothing; attendance does. See *Worship and Hieratica*.
  ]
  #rule[2 · Names Have Power][
    Magic is the imposition of a name on reality. A *true name* learned through Discover, a text or a bargain counts as a *power tag* on every roll against its bearer, and some workings cannot be attempted without one.
  ]
  #rule[3 · The Seals Are Walls][
    The Seven Seals are part of reality's architecture. Breaking one has a cost whether or not anyone sees. Every campaign has a *Breach clock*. See *The Seven Seals*.
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
    [*The Secret History*], [_All true_ (default) · _Partly true_ (the GM picks what is false) · _Contested_ (even the Inner Seal is guessing)],
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
    [_Is More Than Human_ ◈], [Nephil-blooded, half-turned Hounds, Deep One hybrids before the change],
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

    *Strength — Against the Lie.* Magia workings against Outer-touched beings, Nephilim in masquerade, or anyone who has just lied get *+1 Power*.

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
    == Yeshua's working · the Apokryphon

    _Domains:_ only four, and they are fixed.
    - *Anabasis* — the ascent through the archons, naming and refusing each. The most dangerous working: a failed Anabasis Rite kills the initiate in their sleep.
    - *Lytrosis* — liberation. Frees a bound or enchanted soul: clears _enthralled_ and Lamia thrall-bonds, and weakens Brotherhood bindings.
    - *Apokalypsis* — unveiling. Reveals a Nephil in masquerade, a Lamia feeding, a magister mid-rite. Cheap, and easy to detect.
    - *Sigesis* — silencing. Hides you from Yahweh's notice for hours or weeks. Painful.

    *Strength — Praxis, Not Patron.* Gnostic workings never feed a god. They can't be detected by Hieratica, and are immune to the patron effects in *Worship and Hieratica*.

    *Price — No Sword.* The Apokryphon has no combat magic. Attack effects from Gnostic workings are one step harder. You must learn Sigesis first.

    *Seals at risk:* none — but a church that burns heretics.
  ]

  #dnd-item[
    = The Black Speech
    == The language of the Outer Ones · never chosen

    No one takes the Black Speech as a tradition. It is learned by accident and kept by temptation.

    Once you know even a syllable, you may *speak it into any working*: gain *+2 Power*, and take _nemesion-1_ that cannot be Resisted. Speaking it in a Rite ticks the Breach clock.

    *Seal broken:* VII (the Outer Dark), every time.
  ]

  === Reaching Beyond Your Domain
  You may attempt a working outside your Domain if it fits your tradition. It is *one step harder*, costs *2 Pneuma*, and *any* doubles cause backlash.

  === Rites
  A Rite is magic run as a *progress clock*: 6 segments for Hard, 8 for Formidable, 12 for Heroic. Adepts with the *Ritual* ability can run any working as a Rite. Anyone else can perform a specific Rite they have been taught or have read.

  - *Each roll* takes an hour, a night, or a day, as the Rite demands. Success fills segments equal to Power. Failure fills none and advances a danger clock the GM names.
  - *Untrained:* a character without the Ritual ability adds *+4 segments* to the clock, and any doubles cause backlash.
  - *Assistants:* each trained assistant can Help (core rules). Untrained assistants just hold the candles — but they still feel the harvest.
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
    [11], [*A door ajar.* The Breach clock ticks once.],
    [12], [*Something answers.* A spirit, a fae or worse takes an interest. Name it.],
  )

  #gm[
    The Concord's magi "disrupt fine craftsmanship over time": oil lamps gutter, water-clocks stop, ink runs. Let a Concord household be full of broken clocks and candles. It is a tell the Brotherhood knows to look for.
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
  + The *Breach clock* ticks *1* (the Seventh Seal: *3*).
  + The character takes _nemesion-1_ (the Seventh Seal: _nemesion-2_).
  + If a Concord magus is within a day's ride, or the working is divined, the party's *Stylites* clock ticks.

  Spirits, Nephilim and the Courts are not bound by the Seals. Mortal magi are.

  === The Breach Clock
  Every campaign tracks a *Breach clock* of 12 segments for the region where play happens. It measures how thin the walls between Sphere and Dark have grown.

  #tbl((auto, 1fr),
    table.header[Segments][The world],
    [3], [Animals sicken. Dreams are shared. Add the Truth _Uneasy Nights_ to the region.],
    [6], [Thin Places open where none were. Outer-touched things walk at night. Dread costs +1 tier.],
    [9], [Something comes through. The GM builds an Outer-touched Great opposition and sets it loose.],
    [12], [*An Outer Gate stands open.* The Court of Long Night will come — and its price will be terrible.],
  )

  Sealing the walls takes great Rites, Long Night's help, or Solomonic relics. Each success removes 1–3 segments.

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
  #dnd-dropcap[B][elief is irrelevant][. A cynical priest in good standing with a well-fed god can work wonders that a sincere outsider cannot. Hieratica is _borrowed_ power: a ration of the harvest a patron has gathered and chosen to lend back.]

  === Patrons and Their Pools
  Every patron has a *pool state* that reflects how well it is feeding.

  #tbl((1fr, 2fr),
    table.header[State][Effect on Hieratica],
    [*Starving*], [Workings one step harder. Favour refreshes by 1 per session at most. The patron is desperate and will ask terrible things.],
    [*Waning*], [Workings normal. Favour refreshes by 1 per session.],
    [*Steady*], [Workings normal. Favour refreshes to 3 each session.],
    [*Waxing*], [+1 Power on workings. Favour refreshes to 3 each session.],
    [*Bloated*], [+1 Power on workings and Favour refreshes to 5 — but on any doubles, *no one answers*: the working fails and the Favour is spent.],
  )

  ==== Patrons in 500
  #tbl((1.2fr, 0.8fr, 1.6fr),
    table.header[Patron][State][Notes],
    [Yahweh (Yaldabaoth)], [Bloated], [The only pool that grows. Not watching closely.],
    [Isis, as Mary], [Waxing], [Hidden. Spends everything on Mormo.],
    [Lesser Saints], [Varies], [Some are Nephilim riding Yahweh's flow.],
    [Ahura Mazda], [Steady], [The last Watcher aligned with the Light.],
    [Veles], [Waxing], [Harvesting the Sklavenoi frighteningly fast.],
    [Odin, Thor, Frigg], [Steady], [Germanic war-bands still feed them.],
    [Loki], [Waxing], [At large in Frisia, honest about what he is.],
    [Hekate], [Waning], [Admits what she is to her cult.],
    [Mithras], [Waning], [The legions are gone.],
    [Zeus, Apollo, the Olympians], [Starving], [Some live on as patricians. Hermes is a banker.],
  )

  === Favour
  A priest tracks *Favour* with one patron, from 0 to 5. A starting priest-character has *2*.
  - *Spend 1 Favour* to power a Hieratica working instead of paying Pneuma. The patron's state applies.
  - *Gain Favour* by serving: a significant service (+1), a great festival or a new congregation (+2), recovering a relic (+1).
  - *Lose Favour* by offending the patron, serving a rival, or failing a duty it set.
  - *At 0 Favour*, you can still pray. Nothing answers.

  Hieratica workings use *Mysteria* and the patron's portfolio as the Domain. Priests who aren't Adepts use the Dabbler limits but pay with Favour.

  === The Harvest at the Table
  The first Campaign Truth says joining a rite costs 1 Pneuma. Most of the time it is colour. Make it bite when:
  - a character goes to worship to keep a cover — and needs that Pneuma tonight;
  - a festival harvests a whole city, and every character inside loses 2;
  - a patron *Waxing* on a cult the party wants to break is _also_ feeding on them.

  === Relics and Consecration
  An object steeped in a patron's harvest is _consecrated (patron)_. Any god's consecrated object troubles Strigoi and Hounds, because each has been soaked in worship they cannot abide. A Mithraic token works as well as a cross.

  === Masks and Saints
  A priest who prays to a Saint may be feeding a Nephil without knowing it. When a priest's patron is secretly a mask, the GM may reveal it at any moment — and the priest's Favour carries over, because the power always came from the same place.

  #gm[
    *The Marian hunters* are Hieratica priests of Isis who believe they serve the Mother of God. Their pool is *Waxing*, they spend Favour freely against Mormo, and they never learn the truth unless the players tell them.
  ]
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
    [*Mind-breaking*], [4], [A Shoggoth-Born; a Nephil's true shape; a Yithian mind-swap remembered],
    [*Beyond*], [5], [The land beyond the Outer Gates; the Eridu wall bleeding],
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
  - a bargain with Long Night, which knows the Dark better than anyone (any number of tiers, at a price).

  #gm[
    Use _nemesion_ to make the cosmic stakes personal. A character at tier 3 is a problem for every faction at once: the Concord wants to test them, the Brotherhood wants to recruit them, and Long Night wants to buy their debts.
  ]
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
  The hidden world runs on favours owed. When a fae, a Nephil or a Court grants you something, record a *Debt*: the creditor, and a weight from 1 to 3.

  #tbl((auto, 1fr),
    table.header[Weight][Typical favour],
    [*1*], [Directions, a meal, a night's safety, a small truth],
    [*2*], [A healing, a passage through the Veil, a lie told on your behalf],
    [*3*], [A life saved, a curse broken, a true name],
  )

  - *Calling a Debt.* The creditor names a task. Do it and the Debt is cleared. Refuse and take _forsworn-X_ (Pneuma), where X is twice the weight — and the creditor may do as it likes with you under the Concordat.
  - *Debts are property.* They can be sold, traded and bought. Morrigna buys them from lesser fae to bring promising mortals under her hand.
  - *Hidden Debts.* Eating faerie food, accepting a gift, or entering the Cottage of the Crones may create a Debt you did not know you took. The GM records it.

  === Knights and Mantles
  A character may become a Court's *Knight*. The Mantle is a gift of borrowed power:
  - one *power tag* fitting the Court (_winter's edge_, _summer's wrath_);
  - the right to *kill* where the Queen cannot;
  - one Woe-free Special per session from the Fae Specials (see *Opposition*);
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
  Four species, one name, no love lost. Each uses the *Blood-Drinker* kind in *Opposition of the Hidden World* plus its court traits here.

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
  - *The first feed* is always fatal. A young Lamia fed upon before her first kill by one who loves her and is loved in return loses her Hunger for ever. Only House Velthuri knows.
  - *Killing methods:* any lethal means once unveiled — they are the most mortal of the Courts. If Larth Caisra dies, they all die.

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
  Negotiation with something that does not need you: a fae lord, a Nephil, a Lamia matron. The side that loses its Disposition *owes a Debt* (weight 1–3, set by the compromise) as well as the normal outcome.

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
    [*Uneasy Nights*], [Region Truth from the Breach clock. Shared dreams; rest restores 1 less in each pool.],
  )
]

== #flex-heading[Woe of the Hidden World][Woe of the Hidden World]

#columns(2)[
  The GM's Woe buys these setting-specific spends as well as the core ones.

  #tbl((1fr, 0.45fr, 2fr),
    table.header[Spend][Woe][Effect],
    [*The Lamps Gutter*], [1], [Magic in the scene breaks a fine mechanism: a lamp, a lock, a water-clock.],
    [*The Harvest*], [1], [A rite nearby takes 1 Pneuma from every character present.],
    [*Something Answers*], [2], [A spirit, fae or daimon arrives, interested, after any working.],
    [*Debt Called*], [2], [A creditor calls a Debt now, at the worst moment.],
    [*Heretic!*], [2], [Someone with authority accuses a character of heresy. Create the Truth _Accused_.],
    [*The Seal Groans*], [3], [Tick the Breach clock once after a Seal is broken in the scene.],
    [*Time Slips*], [2], [On leaving the Veil, shift the time table one row down.],
    [*The Recorder Watches*], [1], [Eudokia — or something that sounds like her — knows what the party did.],
    [*The Congregation*], [2], [A mob of the faithful arrives: a Minion group, Grit 3.],
    [*Thirst*], [1], [A blood-drinker in the scene must feed or act on its hunger now.],
    [*Stylites Come*], [2], [Tick the party's Stylites clock.],
    [*The Dark Leans In*], [2], [A character at _nemesion-4_ or more acts for the Dark for one action.],
  )
]

== #flex-heading[Opposition of the Hidden World][Opposition]

#tbl((1.3fr, 1fr, 1.1fr, 1fr, 0.9fr, 1.1fr),
    table.header[Rank][Grit][Best / Fair / Weak][Guard][Shrugs][Specials],
    [Minion group], [3], [+4 / +2 / +0], [+0], [Bodies 3–6], [1],
    [Minor], [3], [+5 / +3 / +1], [+0], [0], [1],
    [Established], [5], [+6 / +4 / +2], [+1], [1], [2],
    [Great], [8], [+8 / +5 / +3], [+2], [2], [3],
    [Paramount], [12], [+10 / +7 / +4], [+3], [3], [4],
  )

*Passive opposition:* Difficulty 12 + the relevant rating. *Active:* roll 2d12 + rating.

#columns(2)[
  Build opposition with the light method used across 2d12 settings: NPCs have no pools. Their staying power is *Grit*, which is their share of Disposition in a conflict, and *Shrugs*, free Resists outside it. Woe buys their bonus dice and fuels their Specials.

  === Statblock Anatomy
  - *Grit* — Disposition in a conflict. Threat equals Grit.
  - *Guard* — added to Standard 15 when a PC's independent roll targets it.
  - *Shrugs* — free Resists per scene (−2 tiers each). More cost 1 Woe.
  - *Armour* — −1 tier of physical harm per point.
  - *Ratings* — Attack, Defend, Feint, Maneuver and Other.
  - *Tags* — power and weakness tags the PCs can Discover, burn and compel.
  - *Specials* — Woe-fuelled tricks. *Tell* — the visible sign before its best move.
  - *Rank* — sets every number; see the table above.

  === Roles
  *Brute* (Attack; +1 Power on its first hit each exchange) · *Shooter* (Attack; a free die on its first Attack) · *Bulwark* (Defend; takes loss meant for an ally) · *Skirmisher* (Maneuver; a hit also costs 1 Disposition) · *Controller* (Maneuver; Create a Truth for 1 Woe once per scene) · *Trickster* (Feint; +2 Disposition from ambush) · *Leader* (Defend or Maneuver; minions +1).

  === Kinds
  #rule[Mortal][
    Soldiers, cultists, Stylites, priests, mobs. *Morale:* minions and Minor mortals flee or surrender at half Bodies or when their leader falls. *Can be talked to.* _Specials:_ *Volley* (2, area Attack) · *Dirty Trick* (1, Impede the target) · *Call for Help* (1 per minion) · *Fanatic* (0, ignores Morale) · *Minor Working* (1, a Significant working in one Domain).
  ]
  #rule[Blood-Drinker][
    *Hard to Kill* and court traits (see *The Blood-Drinkers*). _Specials:_ *Feed* (1, after a melee win add _bled-2_ or _hollowed-2_ and recover 1 tier) · *Unnatural Strength* (1, +1 Power) · *Mesmerise* (1, _enthralled-2_) · *Fade* (2, Create _Deep Shadows_ and leave) · *Flesh-Mask* (0, passes as human until Discovered).
  ]
  #rule[Fae][
    Sidhe, Free Folk, Knights' foes. *Bound by bargains:* a fae cannot break its own given word. *Can't kill* outside its Court unless it is a Knight or the victim is bound by birth or Debt; it wounds, steals, enthrals. _Specials:_ *Glamour* (1, Create a Truth of illusion) · *Bargain Offered* (0, offer a Debt for a benefit) · *Winter's Edge / Summer's Wrath* (1, +1 Power) · *Step Sideways* (2, into the Veil) · *Call the Hunt* (3, a Minion group of fae).
  ]
  #rule[Nephil][
    A god in masquerade. Grit is +2 for its Rank. *Harvest:* while it has a living cult, it recovers 1 Disposition at the start of each exchange. *Can only be truly killed* with a relic-blade or after it is unveiled and starved. _Specials:_ *Divine Presence* (2, every PC Resists _shaken-2_) · *Lend Power* (1, a priest-ally gains +2 Power) · *Mask* (0, passes as human) · *Wrath of the Altar* (3, an area Attack while on holy ground).
  ]
  #rule[Outer-Touched][
    Hybrids, Shoggoth-Born, the Reborn, things from beyond. *Dread aura:* first sight is an exposure of its Rank's tier (Minor 2, Established 3, Great 4, Paramount 5). *Unnatural:* Persuade and Argument don't work. _Specials:_ *Regenerate* (1, recover 2 tiers) · *Wrong Geometry* (1, a PC Impeded) · *Taint* (1, a hit adds _nemesion-1_) · *Engulf* (2, a grapple that is also a Dread exposure).
  ]
  #rule[Shade and Spirit][
    The dead, daimones, genii loci. *Incorporeal:* immune to ordinary physical harm; Mysteria, relics and consecrated things harm it. _Specials:_ *Possess* (2, a Contest of Names to take a body) · *Chill* (1, _numbed-2_) · *Whisper* (1, a Dread exposure of tier 2) · *Bound to Place* (0, cannot leave its site).
  ]
]

== #flex-heading[A Bestiary of the Year 500][A Bestiary]

#columns(2)[
  Ready-to-run statblocks. Adjust Rank to taste.

  #statblock[Stylite of the Ash Cloak][Mortal · Established · Bulwark — Threat 5][
    *Grit* 5 · *Guard* +1 · *Shrugs* 1 · *Armour* 1 \
    *Attack* +4 · *Defend* +6 · *Feint* +2 · *Maneuver* +4 \
    *Harm:* _cut-2_ (oath-bound iron) \
    *Power:* oath-bound iron · trained against magi · *Weak:* follows the warrant to the letter \
    *Specials:* *Interpose*; *Iron That Cuts Enchantment* (1): its hit ends one ongoing working on the target. \
    *Tell:* plants its feet and draws the sword slowly. \
    *Wants:* the paranomos, alive if possible.
  ]

  #statblock[Cup-Slaves of Carthage][Mortal · Minion group · Brute — Threat 3][
    *Grit* 3 · *Bodies* 5 \
    *Attack* +4 · *Defend* +2 · *Feint* +0 · *Maneuver* +2 \
    *Power:* nothing left to lose · *Weak:* craves the master's bite \
    *Specials:* *Fanatic*. \
    *Tell:* glassy eyes, all turning at once. \
    *Wants:* to please the master; the next bite.
  ]

  #statblock[Jackal-Warden][Blood-Drinker (Hound) · Established · Brute — Threat 5][
    *Grit* 5 · *Guard* +1 · *Shrugs* 1 · *Armour* 1 (bronze mask) \
    *Attack* +6 · *Defend* +4 · *Feint* +2 · *Maneuver* +4 \
    *Harm:* _torn-3_ \
    *Power:* half-vampire strength · jackal-headed bronze · *Weak:* stopped by blessed thresholds \
    *Specials:* *Heavy Hitter*; *Feed* (1); *Unnatural Strength* (1). \
    *Tell:* the mask tilts as if listening. \
    *Wants:* captives for the latifundia.
  ]

  #statblock[Tarquinia of House Velthuri][Blood-Drinker (Lamia) · Great · Trickster — Threat 8][
    *Grit* 8 · *Guard* +2 · *Shrugs* 2 \
    *Attack* +3 · *Defend* +5 · *Feint* +8 · *Maneuver* +5 \
    *Harm:* _enthralled-2_ or _hollowed-3_ \
    *Power:* indistinguishable from a patrician · owns the magistrate · thralls in every house · *Weak:* cannot touch the truly loved · shamed by open violence \
    *Specials:* *Mesmerise* (1); *Feed* (1); *A Word in the Right Ear* (2): Create the Truth _The Authorities Are Hers_. \
    *Tell:* she laughs softly and touches her ring. \
    *Wants:* a rival humiliated; never a fight.
  ]

  #statblock[Strigoi of the Scourge][Blood-Drinker (Strigoi) · Great · Brute — Threat 8][
    *Grit* 8 · *Guard* +2 · *Shrugs* 2 · *Armour* 1 \
    *Attack* +8 · *Defend* +5 · *Feint* +3 · *Maneuver* +5 \
    *Harm:* _crushed-3_ \
    *Power:* strength of ten men · centuries of paranoia · darkhounds · *Weak:* sunlight · consecrated objects · native earth \
    *Specials:* *Heavy Hitter*; *Unnatural Strength* (1); *Feed* (1). \
    *Tell:* candles dim and the owl outside goes silent. \
    *Wants:* to stay hidden; to feed; to remember.
  ]

  #statblock[The Redcap][Fae (Long Night) · Established · Skirmisher — Threat 5][
    *Grit* 5 · *Guard* +1 · *Shrugs* 1 \
    *Attack* +4 · *Defend* +4 · *Feint* +2 · *Maneuver* +6 \
    *Harm:* _cut-3_ \
    *Power:* cap dyed in fresh blood · iron-shod boots of his own · *Weak:* cold iron · a scripture read aloud \
    *Specials:* *Hit and Run*; *Winter's Edge* (1); *Step Sideways* (2). \
    *Tell:* the drip of the cap quickens. \
    *Wants:* to wet his cap again.
  ]

  #statblock[Crowned of the Land][Outer-Touched (Dagon hybrid) · Established · Leader — Threat 5][
    *Grit* 5 · *Guard* +1 · *Shrugs* 1 \
    *Attack* +4 · *Defend* +6 · *Feint* +4 · *Maneuver* +4 \
    *Harm:* _drowned-2_ \
    *Power:* the whole village owes him · the sea answers · *Weak:* changing; can't hide it in daylight · the Burning Crown's grudge \
    *Specials:* *Command*; *Call the Tide* (2): Create the Truth _Drowned Shore_. \
    *Tell:* his throat moves as if swallowing water. \
    *Wants:* the outsiders gone, or married into the family.
  ]

  #statblock[Brotherhood Mystes][Mortal · Established · Controller — Threat 5][
    *Grit* 5 · *Guard* +1 · *Shrugs* 1 \
    *Attack* +4 · *Defend* +2 · *Feint* +4 · *Maneuver* +6 \
    *Harm:* _unmoored-2_ \
    *Power:* a syllable of Black Speech · fanatics around him · *Weak:* needs the rite completed by dawn \
    *Specials:* *Shape the Ground*; *Minor Working* (1, Domain _the Crawling Mist_); *Speak the Syllable* (2): +2 Power, and the Breach clock ticks. \
    *Tell:* his lips move without sound. \
    *Wants:* the stars right and the circle closed.
  ]

  #statblock[Shoggoth-Born][Outer-Touched · Great · Brute — Threat 8][
    *Grit* 8 · *Guard* +2 · *Shrugs* 2 \
    *Attack* +8 · *Defend* +5 · *Feint* — · *Maneuver* +5 \
    *Harm:* _dissolving-3_ \
    *Power:* too many mouths · flows through cracks · *Weak:* Magia fire · obeys its keeper \
    *Specials:* *Regenerate* (1); *Engulf* (2); *Taint* (1). \
    *Tell:* the floor shines wetly. \
    *Wants:* to guard its keeper. Hungry.
  ]

  #statblock[Reborn Goats of the Mother][Outer-Touched · Minion group · Brute — Threat 3][
    *Grit* 3 · *Bodies* 4 \
    *Attack* +4 · *Defend* +2 · *Feint* — · *Maneuver* +2 \
    *Power:* frenzied madness · horns and hooves · *Weak:* obey any priest of Mormo \
    *Specials:* *Pack Tactics*. \
    *Tell:* bleating that sounds like laughter. \
    *Wants:* the Day of Blood.
  ]

  #statblock[Mercurianus of Antioch][Nephil (Hermes) · Paramount · Leader — Threat 14][
    *Grit* 14 · *Guard* +3 · *Shrugs* 3 \
    *Attack* +4 · *Defend* +7 · *Feint* +10 · *Maneuver* +7 \
    *Harm:* rarely his own hands \
    *Power:* the bank holds every debt in Antioch · messenger-swift · a god's patience · *Weak:* Starving; no cult left · loves a clever bargain \
    *Specials:* *Mask*; *Divine Presence* (2); *Bargain Offered*; *Every Road Is Mine* (2): leave any scene by any door. \
    *Tell:* he counts coins without looking. \
    *Wants:* to stay retired, and very rich.
  ]

  #statblock[Hypatia's Shade][Shade · Great · Controller — Threat 8][
    *Grit* 8 · *Guard* +2 · *Shrugs* 2 \
    *Attack* +3 · *Defend* +5 · *Feint* +5 · *Maneuver* +8 \
    *Harm:* _unmoored-2_ \
    *Power:* the Old Seat obeys her · the Second Seal · *Weak:* bound to the Old Seat · cannot forgive the Inner Seal \
    *Specials:* *Bound to Place*; *Whisper* (1); *Shape the Ground*. \
    *Tell:* stars move on the ceiling. \
    *Wants:* the truth of her death told — or the seal kept, if she is more Seat than woman.
  ]
]

= #flex-heading[Appendices][Appendices]

== #flex-heading[Glossary][Glossary]

#columns(2)[
  - *Akosmoi, Daimones* — "the un-worlded ones"; the Outer Ones.
  - *Anabasis* — the Gnostic ascent through the archons; Yeshua's praxis.
  - *Apokryphon* — (1) the Veiled Sphere; (2) the Gnostic Apokryphon.
  - *Breach clock* — the campaign clock of how thin the walls have grown.
  - *Concord, the* — the Concord of the Seven Seals; the wizards' council.
  - *Concordat, the* — the treaty among hidden powers, sealed 287 BC.
  - *Debt* — a favour owed to a hidden power, weight 1–3.
  - *Drujān* — "the Lies"; Persian name for the Outer Ones.
  - *Edged Seal* — the nine relic-blade bearers of the Stylites.
  - *Enthralled* — the status of a blood-drinker's or sorcerer's thrall.
  - *Exōthen* — the Outer Dark.
  - *Favour* — a priest's standing with a patron; spent on Hieratica.
  - *Forsworn* — the status of an oath-breaker.
  - *Free Folk* — fae of neither Court.
  - *Goeteia* — fast, name-binding sorcery of the papyri.
  - *Hieratica* — priestly magic: borrowed power from a patron's harvest.
  - *Honestiores, humiliores* — the honoured and the humble under Roman law.
  - *Hoi Exō* — "those outside"; the Outer Ones.
  - *Kosmos* — the mortal sphere.
  - *Magia* — the fire-and-word of the Mobedān.
  - *Mobedān* — the Zoroastrian magi of Persia.
  - *Mysteria* — the skill of magic and rite.
  - *Nemesion* — the Outer taint.
  - *Nephilim* — the half-divine children of the Watchers; the old gods.
  - *Paranomos* — a lawbreaker magus.
  - *Pneuma* — breath and will; the potential the gods harvest.
  - *Sigesis* — the Gnostic silence that hides one from Yahweh.
  - *Stylite* — an ash-cloaked enforcer of the Concord.
  - *Sword of Damocles* — probation for a first-time Seal-breaker.
  - *Theurgy* — Neoplatonic ritual magic; the Concord's art.
  - *Twilight Courts* — Long Night and the Burning Crown.
  - *Veiled Sphere* — the spirit world.
  - *Watchers* — the _Egrēgoroi_, fathers of the Nephilim.
  - *Woe* — the GM's pool.
]

== #flex-heading[Quick Reference][Quick Reference]

#columns(2)[
  === Five Campaign Truths
  The Gods Are Hungry · Names Have Power · The Seals Are Walls · Thresholds and Oaths Hold · The Dark Is Patient.

  === Breaking a Seal
  GM +2 Woe · Breach +1 (VII: +3) · _nemesion-1_ (VII: _-2_) · Stylites clock ticks if noticed.

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

== #flex-heading[Design Notes][Design Notes]

#columns(2)[
  This book is built on the *Version 2* core. The *Version 1* archive was used as inspiration. Here is where its ideas went.

  #tbl((1fr, 2fr),
    table.header[Version 1][Version 2 in this book],
    [Cultures and culture talents], [A cultural sphere plus one *Origin tag* that replaces a Playbook tag],
    [Social class (Outcast to Noble)], [*Stations*, each with a trait and a burden, using Roman _honestiores_ and _humiliores_],
    [Backgrounds and roles], [Concept lists under *Playbooks of the Age*],
    [Magic paths: Traditional, Research, Dabbler], [*Initiate*, *Scholar* and *Dabbler* paths on top of the Adept],
    [Spell categories and miscasts], [Adept Domains, scope Difficulties and the *Backlash* table],
    [Ritual magic, requirements and sacrifice], [*Rites* as progress clocks with *Offerings*],
    [Celtic, Saxon and Christian magic drafts], [*Druidry and the Northern Arts*; Christian power as *Hieratica*],
    [Conan and Cthulhu sorcery], [*Goeteia* and the *Black Speech*],
    [Sanity and madness tables], [*Dread* statuses, the *Madness* table and *Nemesion*],
    [Six attributes including Fortune], [The four core pools; Fortune is *Tychē*],
  )

  === Canon Notes
  - The setting bible and faction references are canon. Where the bible calls Yahweh both a Nephil and a Watcher, this book follows its later and more specific statement: he is a *Watcher*, as are Set, Ahura Mazda and Cthulhu.
  - Patron pool states are this book's rules reading of the bible's descriptions.
  - Adventure hooks are left to the setting bible and the hooks file.
]
