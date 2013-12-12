AngryChicken.CardsController = Ember.ArrayController.extend
  typeFilter: null
  typeOptions: ["Minion", "Spell", "Weapon"]

  mechanicFilter: null
  mechanicOptions: (->
    @get('content').mapBy('mechanics').reduce(((r, a) -> r.concat a), []).uniq().sort()
  ).property('content.@each.mechanics')

  filteredCards: (->
    typeFilter = @get('typeFilter')

    cards = @get('content')

    if typeFilter = @get('typeFilter')
      cards = cards.filter((card) -> typeFilter == card.get('type'))

    console.log @get('mechanicFilter')
    if mechanicFilter = @get('mechanicFilter')
      cards = cards.filter((card) -> card.get('mechanics').contains(mechanicFilter))

    cards
  ).property('typeFilter', 'mechanicFilter', 'content.@each')
