
_.extend Template.store,
  events:
    'click .Store': (e) ->
      $(e.target).addClass('Store-stage-2')

