#import "@preview/owlbear:0.0.1": book-template
#show: book-template

= Shadowlands  // Campaign title

== The Shadowy inn  // Heading

// Paragraph
Deep within the mist-shrouded valleys of the Northern Reach lies the forgotten
township of Shadowfen. Once a thriving trading post, it now stands as a haunting
reminder of prosperity lost to an ancient curse. As adventurers drawn to this
forlorn place, you will uncover secrets long buried and face horrors that lurk
in the perpetual twilight.


#figure(
    caption: "Random Encounters",
    table(
        columns: (auto, 1fr),
        table.header(
        "1d4",
        "Encounter Description",
        ),
        "1", "A bird lands on your shoulder",
        "2", "It starts raining",
        "3", "Lightning strikes the nearby tree",
        "4", "A rainbow appears overhead",
    )
)

#import "@preview/owlbear:0.0.1": dnd-note

#dnd-note[
    = Dialogue in combat // Note title

    Many players forget that you can try to negotiate with the attackers.
]

#import "@preview/owlbear:0.0.1": dnd-dialogue

#dnd-dialogue(
    highlight: ("Dungeon Master"),
    ("Dungeon Master", "Where did we leave off last time?"),
    ("Player 1", "We slayed the dragon"),
    ("Player 2", "And rescued the prince"),
)

#import "@preview/owlbear:0.0.1": dnd-terms

#dnd-terms(
    ("Attack Roll", "Roll the d20 to find out if your attack hits. You want your
        score to exceed the enemy's Armour Class."),
    ("Difficulty Class", "The ability check score you need to beat for a
        success")
)

#import "@preview/owlbear:0.0.1": dnd-enum

#dnd-enum(
    "Prone",
    "Frightened",
    "Charmed",
    "Blinded",
)
  