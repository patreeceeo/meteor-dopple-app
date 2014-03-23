

new class ProfileView extends View
  template: Template.profile
  dataHelpers:
    currency_amount: ->
      @model.get 'currency_amount'
    level_number: ->
      @model.get 'level_number'
    level_percent_complete: ->
      @model.get 'level_percent_complete'
  initialize: ->
    @model = new ProfileModel '1'
  


