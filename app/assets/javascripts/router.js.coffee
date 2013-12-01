# For more information see: http://emberjs.com/guides/routing/

AngryChicken.Router.reopen
  location: 'history'

AngryChicken.Router.map ()->
  @route 'home', path: '/'
  @route 'login'
  @route 'register'
  @route 'deck.new', path: '/decks/new'
  @resource 'user', path: '/u/:user_id'
  @resource 'deck', path: '/u/:user_id/:deck_slug'
  @resource 'card', path: '/card/:card_id'

