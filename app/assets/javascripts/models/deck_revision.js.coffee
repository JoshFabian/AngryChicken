AngryChicken.DeckRevision = DS.Model.extend
  versionNumber: DS.attr('number')
  deck: DS.belongsTo('deck')

