
ProfileCollection = new Meteor.Collection("ProfileCollection")

refreshData = Meteor.bindEnvironment ->
  HTTP.get 'http://dopple.herokuapp.com/api/steps', (error, response) ->
    content = JSON.parse response.content
    steps = content.summary.steps
    steps_per_level = 200
    profile =
      currency_amount: steps
      level_number: Math.floor(steps/steps_per_level)
      level_percent_complete: (steps % steps_per_level) / (steps_per_level/100)
    ProfileCollection.update {_id: '1'}, profile

# setInterval refreshData, 60 * 1000
