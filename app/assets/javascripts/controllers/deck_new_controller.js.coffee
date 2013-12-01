AngryChicken.DeckNewController = Ember.Controller.extend
  deckClass: null
  classes: ['Warlock', 'Mage', 'Druid', 'Shaman', 'Priest', 'Rogue', 'Hunter', 'Warrior', 'Paladin']

  chooseDeckClass: (newClass) ->
    @set 'deckClass', newClass
