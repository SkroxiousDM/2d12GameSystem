
#pagebreak()

// =====================================================================
//  PAGE 3 — FRONTIER INSERT
// =====================================================================
#title-band([INSERT], [Testament of Dust], text(font: display-font, size: 8pt, fill: dust, tracking: 0.1em)[USE WITH FRONTIER RULES · CH. VII])

#grid(columns: (1fr, 1fr), column-gutter: 14pt,
  // ---------- left
  {
    sec([Frontier Skills], sub: [replace the generic list on page 1])
    note[
      *Sōma* Athletics · Brawl · Fight · Endure · *Frontier* \
      *Mētis* Shoot · Stealth · *Ride* · Craft \
      *Psychē* Notice · Investigate · *Old Lore* · *Science* · Medicine · Deceive \
      *Pneuma* Will · Persuade · Intimidate · Empathy · *Occult* \
      #text(fill: dust)[Renamed: Survival → Frontier · Drive/Pilot → Ride · Lore → Old Lore · Tech → Science · Arcana → Occult. If Science and Occult both fit, choose one and keep it for that device or effect for the scene.]
    ]

    sec([Frontier Playbook])
    set text(size: 7.2pt)
    grid(columns: (1fr, 1fr, 1fr), row-gutter: 6pt, column-gutter: 4pt,
      ..("Sellsword", "Stalker", "Frontier Doctor", "Broker", "Rider", "Occultist", "Mutant", "Cyborg Hunter", "Warden").map(p => [#cb() #p]))
    v(4pt)
    grid(columns: (auto, 1fr), column-gutter: 6pt, align: horizon,
      lbl(fill: ink, size: 6.5pt)[Wealth],
      [#cb() _broke_ #h(4pt) #cb() _a few marks_ #h(4pt) #cb() _a fat purse_ #h(4pt) #cb() _a lord's bounty_])

    sec([Bled], sub: [physical injury from blood loss · Frontier §6])
    grid(columns: (auto, auto, 1fr), column-gutter: 6pt, align: (left + top, left, left + bottom),
      pad(top: 1pt, lbl(fill: ink, size: 6.5pt)[Bled]), tiers(), wline(label: [By], lw: 14pt))
    v(3pt)
    rows-table((24pt, 1fr), ([Tier], [Effect]), (
      ([1], [Pale and tired; no roll penalty. Clears after a full night's safe rest with food and water.]),
      ([2], [Light-headed: −1 on Sōma and Mētis rolls.]),
      ([3], [Weak: −2 on Sōma and Mētis rolls, and gain _Weary_.]),
      ([4], [Critical: −4 on Sōma and Mētis rolls. Unrelated harm does not automatically Take you Out.]),
      ([5], [Severe: −5 on Sōma and Mētis rolls. No Dying or death deadline from this tier alone.]),
      ([6], [*Drained:* Taken Out and a Scar. If lethal stakes allow, start the core 3-segment Dying clock; not immediate death.]),
    ), size: 6.8pt, inset: (x: 3pt, y: 3pt))
    note(size: 6.5pt)[Resist with *Sōma* when blood is taken. Listed penalties replace the normal tier penalty. Pools and Bled recover separately. Once blood loss stops: tier 1 clears after a full safe night with food/water; tiers 2–5 recover 1 tier per full safe day with care, food and water. Tier 6 needs definitive care. *Stabilise:* Medicine, Hard 18; stops the Dying clock, not Bled. *Transfusion* (willing donor and kit): Medicine, Standard 15; −1 Bled tier per Power; donor gains Bled-1. Explicitly bypasses the ordinary 1-tier treatment limit and _treated_ restriction. Suitable transfusion can provide definitive care at tier 6; clear the clock when Bled drops below 6 and its immediate lethal cause ends. No pool refill or Scar removal.]
  },
  // ---------- right
  {
    sec([Afflicted Blood], sub: [dhampirs])
    [#cb() #text(weight: 700)[This character has afflicted blood] #h(4pt) #text(size: 6.5pt, style: "italic", fill: dust)[(_Carries Her Mother's Blood_)]]
    v(5pt)
    grid(columns: (52pt, auto), column-gutter: 6pt, align: horizon,
      text(font: display-font, size: 9pt, fill: blood, weight: 700)[Sun-Sick], tiers())
    v(2pt)
    note(size: 6.5pt)[In direct sun under the *Day* Truth: +1 tier at the start of each outdoor scene (+2 under _Merciless Sun_). Penalty applies to Sōma and Mētis rolls. Resist with Sōma; a wide hat, dark cloak or partial shade is +1 Sōma Edge for that Resist. No dhampir healing while Sun-Sick. A scene in shade: −2 tiers; night clears it. *Tier 6:* collapse; a whole day in the sun adds a Sōma Scar.]
    v(3pt)
    grid(columns: (52pt, auto), column-gutter: 6pt, align: horizon,
      text(font: display-font, size: 9pt, fill: blood, weight: 700)[Thirst], tiers(from: 0))
    v(2pt)
    rows-table((1fr, 34pt), ([Trigger], [Thirst]), (
      ([Fresh blood spilled nearby in the scene], [+1]),
      ([Taken Out, or a pool drops to 2 or less], [+1]),
      ([Use a ★ blood ability marked _Thirst_], [+1]),
      ([Accept a Thirst compel (gain Tychē)], [+1]),
      ([A full night of rest], [−1]),
      ([Animal blood (a scene)], [−1]),
      ([A cup or so of human blood (a scene)], [−2]),
      ([Half a litre or more of human blood], [Clear\*]),
    ), size: 6.7pt, inset: (x: 3pt, y: 2.8pt))
    text(size: 6.4pt)[*0–2* no effect · *3–4* −1 Pneuma rolls when blood is visible; others notice · *5* each scene with a bleeding human, Resist with Pneuma or move toward them · *6* Blood Crisis: feed from the nearest source this scene, or refuse, collapse (Taken Out) and gain a Pneuma Scar; then Thirst drops to 3. #text(fill: dust)[\*If taken by force, gain a Pneuma Scar the first time (_I've tasted it_).]]

    sec([Killing Methods & Gear], sub: [load in brackets])
    set text(size: 6.8pt)
    grid(columns: (1fr, 1fr), row-gutter: 6pt, column-gutter: 6pt,
      [#cb() Wooden stake (0) · _staked_], [#cb() Silver-edged blade (1) · _silvered_],
      [#cb() Steel neck guard (1) · bites: Bled −1 tier], [#cb() Crossbow & wooden bolts (1)],
      [#cb() Revolver or rifle (1) · +1 Attack], [#cb() Laser rifle (2) · depl. 1 in d12],
      [#cb() Long cloak & wide hat (1)], [#cb() Signal mirrors (1) · _Sunlit_],
      [#cb() Horse or mule (0) · _sure-footed_], [#cb() Cyborg horse (0) · _tireless_],
      [#cb() Transfusion kit (1) · +1 vs. Bled], [#cb() Charms (1) · believers only])
  })

#grid(columns: (1fr, 1fr), column-gutter: 14pt,
  {
    sec([Day & Night], sub: [every scene has a time Truth])
    note(size: 6.5pt)[*Day:* direct sun gives vampires and dhampirs _Sun-Sick_; vampires keep indoors but aren't helpless. *Dusk:* GM +2 Woe; vampires come out. *Night:* vampires and dhampirs ignore darkness; +1 Woe per scene with a vampire present. *Dawn:* a vampire in direct light at the scene's end gains _Sun-Sick_ 2. *Hard to Kill:* a vampire's physical statuses stop at tier 5 without a *killing method* (beheading, or fire on a broken vampire).]
  },
  {
    sec([Bounties & Contracts])
    for l in ([Quarry], [Patron / village], [Fee · proof required], [Deadline · rivals]) { wline(label: l, h: 16pt) }
  })
#v(6pt)
#grid(columns: (1fr, 1fr), column-gutter: 14pt,
  {
    sec([Campaign Truths], sub: [agreed at session zero])
    for n in range(1, 6) {
      block(height: 16pt, spacing: 0pt, grid(columns: (11pt, 1fr), align: bottom,
        text(font: display-font, size: 9pt, fill: blood, weight: 700, str(n)), line(length: 100%, stroke: 0.5pt + ash)))
    }
  },
  {
    sec([Vampire Encountered], sub: [known tags, weaknesses, killing methods])
    wline(label: [Name · rank], h: 16pt)
    lines(4, h: 16pt)
  })

#sec([Frontier Notes])
#block(height: 1fr, width: 100%, spacing: 0pt, layout(size => lines(int(size.height / 16pt), h: 16pt)))

