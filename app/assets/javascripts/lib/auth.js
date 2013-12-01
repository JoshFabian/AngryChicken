AngryChicken.Auth = Ember.Object.extend({

  getUsername: function() {
    return window.currentUserUsername;
  },

  // Given a username and password, log the user in. Returns a promise which will
  // resolve in the case of success, and reject returning a error message string
  // in the event of failure.
  login: function(username, password) {
    return Ember.RSVP.Promise(function(resolve, reject) {
      // TODO: Hook this up.
      setTimeout(function() {
        if ((username == "vikhyat") && (password == "password")) {
          window.currentUserUsername = username;
          resolve();
        }
        else {
          reject("Invalid credentials.");
        }
      }, 2000);
    });
  },

  // Reset the application to clear the datastore after successful login.
  resetApplication: function() {
    AngryChicken.reset();
  }

}).create();
