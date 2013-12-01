AngryChicken.LoginRoute = Ember.Route.extend
  setupController: (controller, context) ->
    controller.set 'username', ''
    controller.set 'password', ''

  actions:
    login: ->
      console.log "submitted"
      AngryChicken.Auth.login(@get('controller.username'),
                              @get('controller.password'))
        .then ->
          console.log "success"
        .fail (message) ->
          console.log message

