Router.configure
  layout: 'layout'
  notFoundTemplate: '404'
  renderTemplates:
    header:
      to: 'header'
    footer:
      to: 'footer'

Router.map ->
  @route 'home',
    path: '/'