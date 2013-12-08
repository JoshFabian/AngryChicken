AngryChicken.CardsRoute = Ember.Route.extend
  model: ->
    @store.find 'card'
