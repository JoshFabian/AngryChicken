Ember.Application.initializer
  name: 'current-user'
  after: 'preload'

  initialize: (container) ->
    store = container.lookup('store:main')
    controller = container.lookup('controller:currentUser')
    if window.currentUserUsername
      user = store.find 'user', AngryChicken.Auth.getUsername()
      controller.set 'content', user
    container.typeInjection 'controller', 'currentUser', 'controller:currentUser'
    container.typeInjection 'route', 'currentUser', 'controller:currentUser'
