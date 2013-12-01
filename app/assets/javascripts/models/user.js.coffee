AngryChicken.User = DS.Model.extend
  username: DS.attr('string')
  email: DS.attr('string')
  decklists: DS.hasMany('decklist')
