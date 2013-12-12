AngryChicken.CardsController = Ember.ArrayController.extend
  typeFilter: null
  typeFilterOptions: ["Minion", "Spell", "Weapon"]

  filteredCards: (->
    typeFilter = @get('typeFilter')

    cards = @get('content')
    if typeFilter = @get('typeFilter')
      cards = cards.filter((card) -> typeFilter == card.get('type'))

    cards
  ).property('typeFilter', 'content.@each')
