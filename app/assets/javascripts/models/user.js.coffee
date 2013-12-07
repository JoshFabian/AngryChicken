AngryChicken.User = DS.Model.extend
  username: DS.attr('string')
  email: DS.attr('string')
  about: DS.attr('string')
  avatar: DS.attr('string')
  decks: DS.hasMany('deck')
