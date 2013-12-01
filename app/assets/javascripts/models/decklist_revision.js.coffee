AngryChicken.DecklistRevision = DS.Model.extend
  versionNumber: DS.attr('number')
  decklist: DS.belongsTo('decklist')

