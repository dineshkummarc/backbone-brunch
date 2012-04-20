application = require 'application'

module.exports = class Router extends Backbone.Router
  routes:
    '': 'home'
    'about': 'about'

  home: ->
    $('body').html application.homeView.render().el
    
  about: ->
    $('body').html application.aboutView.render().el
