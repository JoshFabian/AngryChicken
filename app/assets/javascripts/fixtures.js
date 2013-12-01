AngryChicken.User.FIXTURES = [
  {id: 'vikhyat', username: 'vikhyat', email: 'c@vikhyat.net', decks: ['vikhyat:the-little-murmage']}
];

AngryChicken.Card.FIXTURES = [
  {id: 'silverback-patriarch', name: 'Silverback Patriarch', attack: 1, defense: 1, manaCost: 3}
];

AngryChicken.Deck.FIXTURES = [
  {id: 'vikhyat:the-little-murmage', name: 'The Little Murmage', user: "vikhyat", revisions: [1]}
];

AngryChicken.DeckRevision.FIXTURES = [
  {id: 1, versionNumber: 1, deck: 'vikhyat:the-little-murmage'}
];
