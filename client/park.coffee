
class Pet
  constructor: (selector, @options) ->
    @$el = $(selector)
    @$el.css
      top: options.y
      left: options.x
  move: ->
    @options.x += (Math.random() * 100) - 50
    @options.y += (Math.random() * 100) - 50
    @$el.css
      top: @options.y
      left: @options.x

_.extend Template.park,
  rendered: ->
    @pet1 = new Pet '.Park-pet-1',
      x: 10
      y: 0
    @pet2 = new Pet '.Park-pet-2',
      x: 500
      y: 250
    @pet3 = new Pet '.Park-pet-3',
      x: 20
      y: 700
    @pet4 = new Pet '.Park-pet-4',
      x: 600
      y: 1000
    setInterval (=>
      @pet1.move()
      @pet2.move()
      @pet3.move()
      @pet4.move()
    ), 500
