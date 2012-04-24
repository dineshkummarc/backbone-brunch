application = require 'application'

module.exports = class Router extends Backbone.Router
  routes:
    '': 'home'
    'about': 'about'

  home: ->
    $('#main').html application.homeView.render().el
    
  about: ->
    $('#main').html application.aboutView.render().el
