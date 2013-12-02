# For more information see: http://emberjs.com/guides/routing/

AngryChicken.Router.reopen
  location: 'history'

AngryChicken.Router.map ()->
  @route 'login'
  @route 'register'
  @resource 'user', path: '/u/:user_id'
  @resource 'card', path: '/card/:card_id'

  @route 'home', path: '/'
  @resource 'deck', path: '/u/:user_id/:deck_slug'
  @route 'deck.new', path: '/decks/new'

