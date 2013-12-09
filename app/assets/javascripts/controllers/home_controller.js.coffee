AngryChicken.HomeController = Ember.ArrayController.extend
  containsCard: null
  cards: (->
    @store.find('card')
  ).property()
  cardNames: (->
    @get('cards').mapBy('name')
  ).property('cards.@each.name')
