AngryChicken.DeckNewRoute = Ember.Route.extend
  beforeModel: ->
    unless @get('currentUser.isSignedIn')
      @transitionTo 'register'
