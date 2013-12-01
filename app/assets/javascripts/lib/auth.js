AngryChicken.Auth = Ember.Object.extend({

  getUsername: function() {
    return window.currentUserUsername;
  },

  // Given a username and password, log the user in. Returns a promise which will
  // resolve in the case of success, and reject returning a error message string
  // in the event of failure.
  login: function(username, password) {
    return Ember.RSVP.Promise(function(resolve, reject) {
      // TODO
      setTimeout(function() { reject("Not implemented yet.") }, 2000);
    });
  }

}).create();
