//= require jquery
//= require bootstrap
//= require handlebars
//= require ember
//= require ember-data
//= require_self
//= require angry_chicken

$("#ember-root").html("");

AngryChicken = Ember.Application.create({
  rootElement: "#ember-root"
});
