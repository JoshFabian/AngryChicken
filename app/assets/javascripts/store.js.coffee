# Fixture adapter.
AngryChicken.Store = DS.Store.extend
  revision: 13
  adapter: DS.FixtureAdapter.create()

# AMS store -- use this for the actual implementation.
#AngryChicken.Store = DS.Store.extend
#  # Override the default adapter with the `DS.ActiveModelAdapter` which
#  # is built to work nicely with the ActiveModel::Serializers gem.
#  adapter: '_ams'

