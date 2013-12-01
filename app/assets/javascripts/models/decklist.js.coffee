AngryChicken.Decklist = DS.Model.extend
  name: DS.attr('string')
  user: DS.belongsTo('user')
  revisions: DS.hasMany('decklistRevision')
