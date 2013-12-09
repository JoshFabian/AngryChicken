AngryChicken.HomeController = Ember.ArrayController.extend
  containsCard: null
  cards: (->
    @store.find('card')
  ).property()
  cardNames: Ember.computed.mapBy('cards', 'name')
