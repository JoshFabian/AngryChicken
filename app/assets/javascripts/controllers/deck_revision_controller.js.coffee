AngryChicken.DeckRevisionController = Ember.ObjectController.extend

  abilityMemberships: (->
    @get('model.memberships').filter((x) -> x.get('card.type') == "Ability")
  ).property('model.memberships.@each.card.{type,count}')

  minionMemberships: (->
    @get('model.memberships').filter((x) -> x.get('card.type') == "Minion")
  ).property('model.memberships.@each.card.{type,count}')

  abilityMembershipCount: (->
    @get('abilityMemberships').map((x) -> x.get('count')).reduce(((r,a) -> r+a), 0) || 0
  ).property('abilityMemberships')

  minionMembershipCount: (->
    @get('minionMemberships').map((x) -> x.get('count')).reduce(((r,a) -> r+a), 0) || 0
  ).property('minionMemberships')
