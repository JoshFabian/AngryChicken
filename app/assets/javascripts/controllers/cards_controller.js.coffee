AngryChicken.CardsController = Ember.ArrayController.extend
  typeFilter: []
  typeFilterOptions: ["Minion", "Spell", "Weapon"]

  filteredCards: (->
    typeFilter = @get('typeFilter')
    if typeFilter.length == 0
      typeFilter = @get('typeFilterOptions')

    @get('content').filter((card) -> typeFilter.contains(card.get('type')))
  ).property('typeFilter.@each', 'content.@each')
