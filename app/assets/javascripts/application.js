//= require jquery
//= require bootstrap
//= require handlebars
//= require ember
//= require ember-data
//= require_self
//= require vendored
//= require_tree ./lib
//= require angry_chicken
//= require fixtures

$("#ember-root").html("");

AngryChicken = Ember.Application.create({
  rootElement: "#ember-root",
  lastVisitedPath: '/'
});
