AngryChicken.DeckNewController = Ember.Controller.extend
  deckClass: null
  classes: ['Warlock', 'Mage', 'Druid', 'Shaman', 'Priest', 'Rogue', 'Hunter', 'Warrior', 'Paladin']

  actions:
    chooseDeckClass: (newClass) ->
      @set 'deckClass', newClass
