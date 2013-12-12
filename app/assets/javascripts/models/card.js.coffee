AngryChicken.Card = DS.Model.extend
  name: DS.attr('string')
  type: DS.attr('string')
  class: DS.attr('string')
  rarity: DS.attr('string')
  attack: DS.attr('number')
  health: DS.attr('number')
  cost: DS.attr('number')
  regularImage: DS.attr('string')
  goldImage: DS.attr('string')
  cardText: DS.attr('string')
  mechanicsUsed: DS.attr('array')
  mechanicsMentioned: DS.attr('array')
  flavorText: DS.attr('string')
  howToGet: DS.attr('string')
  strategy: DS.attr('string')

  mechanics: (->
    @get('mechanicsUsed').concat @get('mechanicsMentioned')
  ).property('mechanicsUsed', 'mechanicsMentioned')

