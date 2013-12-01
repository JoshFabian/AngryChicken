AngryChicken.Auth = Ember.Object.extend({

  getUsername: function() {
    return window.currentUserUsername;
  }

}).create();
