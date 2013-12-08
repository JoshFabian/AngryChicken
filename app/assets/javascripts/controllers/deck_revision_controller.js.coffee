AngryChicken.DeckRevisionController = Ember.ObjectController.extend

  spellMemberships: (->
    @get('model.memberships').filter((x) -> x.get('card.type') == "Spell")
  ).property('model.memberships.@each.card.{type,count}')

  minionMemberships: (->
    @get('model.memberships').filter((x) -> x.get('card.type') == "Minion")
  ).property('model.memberships.@each.card.{type,count}')

  spellMembershipCount: (->
    @get('spellMemberships').map((x) -> x.get('count')).reduce(((r,a) -> r+a), 0) || 0
  ).property('spellMemberships')

  minionMembershipCount: (->
    @get('minionMemberships').map((x) -> x.get('count')).reduce(((r,a) -> r+a), 0) || 0
  ).property('minionMemberships')
