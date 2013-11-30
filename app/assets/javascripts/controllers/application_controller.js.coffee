AngryChicken.ApplicationController = Ember.Controller.extend
  routeChanged: (->
    unless @get('currentRouteName') == 'login' or @get('currentRouteName') == 'register'
      AngryChicken.set('lastVisitedRoute', @get('currentRouteName'))
  ).observes('currentRouteName')
