
_.extend Template.store,
  events:
    'click .Store': (e) ->
      $(e.target).addClass('Store-stage-2')

model = new ProfileModel '1'

Template.store.helpers
  currency_amount: ->
    model.get 'currency_amount'

