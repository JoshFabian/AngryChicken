AngryChicken.CardsController = Ember.ArrayController.extend
  typeFilter: null
  typeOptions: ["Minion", "Spell", "Weapon"]

  mechanicFilter: null
  mechanicOptions: (->
    @get('content').mapBy('mechanics').reduce(((r, a) -> r.concat a), []).uniq().sort()
  ).property('content.@each.mechanics')

  classOptions: ["Druid", "Hunter", "Mage", "Paladin", "Priest", "Rogue", "Shaman", "Warrior", "Warlock"].map((x) -> Ember.Object.create({name: x, isSelected: false}))
  classFilter: (->
    @get('classOptions').filterBy('isSelected').mapBy('name')
  ).property('classOptions.@each.isSelected')

  showNeutral: true

  filteredCards: (->
    typeFilter = @get('typeFilter')
    mechanicFilter = @get('mechanicFilter')
    showNeutral = @get('showNeutral')
    classFilter = @get('classFilter')

    cards = @get('content').filter (card) ->
      ## Filter by type.
      if typeFilter and typeFilter != card.get('type')
        return false

      ## Filter by mechanic.
      if mechanicFilter and not card.get('mechanics').contains(mechanicFilter)
        return false

      ## Filter by class.
      # Bypass this test if showNeutral is set and the class is null.
      unless showNeutral and Ember.isNone(card.get('class'))
        # Only filter by class if at least one class is selected.
        if classFilter.length > 0 and not classFilter.contains(card.get('class'))
          return false
      if (not showNeutral) and Ember.isNone(card.get('class'))
        return false

      return true

    cards
  ).property('typeFilter', 'mechanicFilter', 'classFilter', 'showNeutral', 'content.@each')

