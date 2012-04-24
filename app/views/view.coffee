require 'lib/view_helper'

# Base class for all views.
module.exports = class View extends Backbone.View
  # template: "<div id='woot'>Woot in here</div>"
    # _.template(["<div id='test'>",
    #      "<%= itemTemplate %>",
    #     "</div>"
    # ].join(''))
    #return

  itemTemplate: "<div id='onetwo'>one two</div>"

  getRenderData: ->
    return

  render: =>
    # console.debug "Rendering #{@constructor.name}"
    # See about moving this header/footer as a template and rendering
    # html = @template itemTemplate: @itemTemplate
    # @html = "<div id='what'>Yeehaw</div>"
    @html = @itemTemplate

    # @$el.append @template @getRenderData()
    @$el.append(@html)
    @afterRender()
    this

  afterRender: ->
    return
