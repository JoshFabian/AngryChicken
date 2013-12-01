AngryChicken.DeckRoute = Ember.Route.extend
  model: (params) ->
    id = params.user_id + ":" + params.deck_slug
    @store.find 'deck', id

  serialize: (model) ->
    deckId = model.get('id').split(':')
    {user_id: deckId[0], deck_slug: deckId[1]}
