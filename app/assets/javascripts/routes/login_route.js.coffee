AngryChicken.LoginRoute = Ember.Route.extend
  setupController: (controller, context) ->
    controller.set 'username', ''
    controller.set 'password', ''

  actions:
    login: ->
      loginRoute = this
      unless loginRoute.get 'controller.success'
        loginRoute.set 'controller.loading', true
        loginRoute.set 'controller.error', false
        AngryChicken.Auth.login(@get('controller.username'),
                                @get('controller.password'))
          .then ->
            loginRoute.set 'controller.success', true
            loginRoute.set 'controller.loading', false
            loginRoute.transitionTo(AngryChicken.get('lastVisitedRoute')).then ->
              AngryChicken.Auth.resetApplication()
          .fail (message) ->
            loginRoute.set 'controller.loading', false
            loginRoute.set 'controller.error', message

