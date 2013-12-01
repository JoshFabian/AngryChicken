AngryChicken.CardRoute = Ember.Route.extend
  model: (params) ->
    @store.find 'card', params.id
