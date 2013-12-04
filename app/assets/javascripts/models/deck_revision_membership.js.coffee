AngryChicken.DeckRevisionMembership = DS.Model.extend
  deckRevision: DS.belongsTo('deckRevision')
  card: DS.belongsTo('card')
  count: DS.attr('number')
