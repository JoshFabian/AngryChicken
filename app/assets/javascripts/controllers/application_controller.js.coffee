AngryChicken.ApplicationController = Ember.Controller.extend
  routeChanged: (->
    unless @get('currentPath') == 'login' or @get('currentPath') == 'register'
      AngryChicken.set('lastVisitedPath', window.location.pathname)
  ).observes('currentPath')
