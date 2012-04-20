require 'lib/view_helper'

# Base class for all views.
module.exports = class View extends Backbone.View
  template: ->
    return

  getRenderData: ->
    return

  render: =>
    # console.debug "Rendering #{@constructor.name}"
    # See about moving this header/footer as a template and rendering
    @$el.append '<div id="header">This is the header</div>'
    @$el.append @template @getRenderData()
    @$el.append '<div id="footer">This is the footer</div>'
    @afterRender()
    this

  afterRender: ->
    return
