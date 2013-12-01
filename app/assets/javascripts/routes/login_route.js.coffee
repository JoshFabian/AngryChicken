AngryChicken.LoginRoute = Ember.Route.extend
  setupController: (controller, context) ->
    controller.set 'username', ''
    controller.set 'password', ''

  actions:
    login: ->
      loginRoute = this
      loginRoute.set 'controller.loading', true
      AngryChicken.Auth.login(@get('controller.username'),
                              @get('controller.password'))
        .then ->
          console.log "success"
          loginRoute.set 'controller.loading', false
        .fail (message) ->
          loginRoute.set 'controller.loading', false
          loginRoute.set 'controller.error', message

