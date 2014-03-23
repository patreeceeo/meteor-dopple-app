

new class ProfileView extends View
  template: Template.profile
  dataHelpers:
    level_number: ->
      @model.get 'level_number'
    level_percent_complete: ->
      # @model.get 'level_percent_complete'
      (@model.get('currency_amount') / 4) - 75
    pet_is_sad: ->
      # mood = @model.get('mood')
      # mood is 'sad' or not mood?
      @model.get('currency_amount') < 500
    pet_is_happy: ->
      @model.get('currency_amount') >= 500
    currency_amount: ->
      @model.get 'currency_amount'
      # @model.get('mood') is 'happy'
  initialize: ->
    @model = new ProfileModel '1'
  


