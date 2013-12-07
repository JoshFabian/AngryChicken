AngryChicken.User.FIXTURES = [
  {
    id: 'vikhyat',
    username: 'vikhyat',
    email: 'c@vikhyat.net',
    about: "._.",
    avatar: "http://anime-kyokai.com/special/twitter/icon/07.png",
    decks: ['vikhyat:the-little-murmage']
  }
];

AngryChicken.Card.FIXTURES = [
  {
    id: 'patient-assassin',
    name: 'Patient Assassin',
    type: 'Minion',
    class: 'Rogue',
    rarity: 'Epic',
    attack: 1,
    health: 1,
    cost: 2,
    regularImage: 'http://media-hearth.cursecdn.com/avatars/33/929/14.png',
    goldImage: 'http://media-hearth.cursecdn.com/avatars/33/930/14.png',
    cardText: "Stealth. Destroy any minion damaged by this minion.",
    flavorText: "He's not really that patient. It just takes a while for someone to walk by that he can actually reach.",
    howToGet: "Patient Assassin can be obtained through card packs, or through crafting.",
    mechanics: ['Destroy', 'Stealth'],
    strategy: "While nonthreatening at first glance, Patient Assassin possesses the Poison ability, allowing him to instantly kill any card he can damage. He also comes onto the field with stealth which makes him unable to be targeted by attacks or spells. Patient Assassin can be left on the field to dissuade your opponent from playing powerful cards until he is disposed of. Although, it should be noted that he can be killed by an enemy spell that targets all minions, such as Arcane Explosion."
  },
  {
    id: 'al-akir-the-windlord',
    name: "Al'Akir the Windlord",
    type: 'Minion',
    class: 'Shaman',
    rarity: 'Legendary',
    attack: 3,
    health: 5,
    cost: 8,
    regularImage: 'http://media-hearth.cursecdn.com/avatars/33/291/335.png',
    goldImage: 'http://media-hearth.cursecdn.com/avatars/33/292/335.png',
    cardText: "Windfury, Charge, Divine Shield, Taunt",
    flavorText: "He is the weakest of the four Elemental Lords. And the other three don't let him forget it.",
    howToGet: "Al'Akir may be received either through opening Hearthstone booster packs or crafting using arcane dust received from disenchanting.",
    mechanics: ['Windfury', 'Charge', 'Divine Shield', 'Taunt'],
    strategy: "Playing this minion will be useful at almost any time, due to the many abilities he has. However, since he has taunt it's very possible for him to die the turn after summoning, stopping you from taking too much advantage from windfury. Playing this card in conjunction with stat buffs will greatly increase survivability and damage output, for the time it's alive. This card loses almost all value when it is silenced as it becomes an 8 cost 3/5 card."
  },
  {
    id: 'backstab',
    name: "Backstab",
    type: 'Ability',
    class: 'Rogue',
    rarity: 'Basic',
    attack: null,
    health: null,
    cost: 0,
    regularImage: 'http://media-hearth.cursecdn.com/avatars/33/362/471.png',
    goldImage: 'http://media-hearth.cursecdn.com/avatars/33/363/471.png',
    cardText: "Deal 2 damage to an undamaged minion.",
    flavorText: "It's funny how often yelling \"Look over there!\" gets your opponent to turn around.",
    howToGet: "Backstab x 2 are automatically included in all players' collections.",
    mechanics: ['Deal Damage'],
    strategy: "Backstab is ideally used as a pre-cursor to a card that has a combo ability, especially given its zero mana cost. This will allow you to do some damage and make a combo at no extra cost."
  },
  {
    id: 'alexstrasza',
    name: "Alexstrasza",
    type: 'Minion',
    class: 'Neutral',
    rarity: 'Legendary',
    attack: 8,
    health: 8,
    cost: 9,
    regularImage: 'http://media-hearth.cursecdn.com/avatars/33/297/303.png',
    goldImage: 'http://media-hearth.cursecdn.com/avatars/33/298/303.png',
    cardText: "Battlecry: Set a hero's remaining Health to 15.",
    flavorText: "Alexstrasza the Life-Binder brings life and hope to everyone. Except Deathwing. And Malygos. And Nekros.",
    howToGet: "Alexstrasza can be obtained through card packs, or through crafting.",
    mechanics: ['Battlecry', 'Restore Health', 'Deal Damage'],
    strategy: "As a legendary 8/8 dragon for 9 mana, Alexstrasza is already a big body to deal with in anybody's deck, but her real power lies in here ability to set a hero's remaining health to 15. Due to the nature of this card, it could be used in a variety of ways as a great utility minion. First, you can play her if you are in need of a comeback and you are below 15 health-which can be a very effective way to make you way back into a close game-or you can use it to advance your lead and force your opponent down to half life while playing a devastating minion."
  }
];

AngryChicken.Deck.FIXTURES = [
  {
    id: 'vikhyat:the-little-murmage',
    user: "vikhyat",
    name: 'The Little Murmage',
    summary: "Deck Summary (140 Characters or less)",
    type: "Mage",
    playStyle: "Aggro",
    visible: true,
    introduction: "This is the introduction.",
    startingHand: ['patient-assassin', 'al-akir-the-windlord', 'backstab', 'alexstrasza'],
    startingHandDescription: "I just randomly put together the first four cards for which I defined fixtures.",
    earlyGame: "Early game description",
    midGame: "Mid game description",
    lateGame: "Late game description",
    conclusion: "This is the conclusion",
    latestRevision: 1,
    revisions: [1]
  }
];

AngryChicken.DeckRevision.FIXTURES = [
  {
    id: 1,
    versionNumber: 1,
    deck: 'vikhyat:the-little-murmage',
    memberships: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
  }
];

AngryChicken.DeckRevisionMembership.FIXTURES = [
  {id: 1, card: 'patient-assassin', count: 2},
  {id: 2, card: 'al-akir-the-windlord', count: 2},
  {id: 3, card: 'backstab', count: 2},
  {id: 4, card: 'alexstrasza', count: 2},
  {id: 5, card: 'backstab', count: 2},
  {id: 6, card: 'alexstrasza', count: 2},
  {id: 7, card: 'al-akir-the-windlord', count: 2},
  {id: 8, card: 'patient-assassin', count: 2},
  {id: 9, card: 'al-akir-the-windlord', count: 2},
  {id: 10, card: 'backstab', count: 2},
  {id: 11, card: 'alexstrasza', count: 2},
  {id: 12, card: 'backstab', count: 2},
  {id: 13, card: 'alexstrasza', count: 2},
  {id: 14, card: 'al-akir-the-windlord', count: 2},
  {id: 15, card: 'backstab', count: 2}
];
