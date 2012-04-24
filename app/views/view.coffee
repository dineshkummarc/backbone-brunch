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
    @$el.append @template @getRenderData()
    @afterRender()
    this

  afterRender: ->
    return
