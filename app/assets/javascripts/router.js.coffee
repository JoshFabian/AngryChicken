# For more information see: http://emberjs.com/guides/routing/

AngryChicken.Router.reopen
  location: 'history'

AngryChicken.Router.map ()->
  @route 'home', path: '/'
  @route 'login'
  @route 'register'
  @resource 'user', path: '/u/:id'

