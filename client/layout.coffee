new class LayoutView extends View
  template: Template.layout
  dataHelpers:
    currency_amount: ->
      @model.get 'currency_amount'
  initialize: ->
    @model = new ProfileModel '1'

