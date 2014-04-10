Router.configure
  layoutTemplate: 'layout'
  loadingTemplate: 'loading'
  yieldTemplates:
    header:
      to: 'header'
    footer:
      to: 'footer'
  onBeforeAction: ->
    $('meta[name^="description"]').remove()
