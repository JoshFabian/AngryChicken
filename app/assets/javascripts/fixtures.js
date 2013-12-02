AngryChicken.User.FIXTURES = [
  {id: 'vikhyat', username: 'vikhyat', email: 'c@vikhyat.net', decks: ['vikhyat:the-little-murmage']}
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
  }
];

AngryChicken.Deck.FIXTURES = [
  {id: 'vikhyat:the-little-murmage', user: "vikhyat", name: 'The Little Murmage', summary: "Deck Summary (140 Characters or less)", playStyle: "Aggro", visible: true, introduction: "This is the introduction.", startingHand: ['patient-assassin'], startingHandDescription: "Description of the starting hand.", earlyGame: "Early game description", midGame: "Mid game description", lateGame: "Late game description", conclusion: "This is the conclusion", revisions: [1]}
];

AngryChicken.DeckRevision.FIXTURES = [
  {id: 1, versionNumber: 1, deck: 'vikhyat:the-little-murmage'}
];
