AngryChicken.FilteredCardView = Ember.View.extend
  classNames: ['col-md-3', 'single-card']

  render: (buffer) ->
    buffer.push "<a><img class='card-img' src='http://placekitten.com/307/465' data-src='" + @get('content.regularImage') + "' alt='" + @get('content.name') + "'></a>"

  didInsertElement: ->
    # after placeholder is added change to: $("img").unveil(500)
    @$("img").unveil()

  click: ->
    router = @get('controller.target.router')
    router.transitionTo 'card', @get('content')
