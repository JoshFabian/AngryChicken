AngryChicken.ApplicationRoute = Ember.Route.extend
  actions:
    logout: ->
      AngryChicken.Auth.logout()
      AngryChicken.Auth.resetApplication()
