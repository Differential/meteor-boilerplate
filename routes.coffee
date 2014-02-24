Router.map ->
  @route 'home',
    path: '/'

  @route 'dashboard',
    path: '/dashboard'

  @route 'welcomeBack',
    path: '/welcome-back'
    after: ->
      home = ->
        Router.go('/')
      Meteor.setTimeout(home, 3000)

  @route 'confirmationPage',
    path: '/confirmation-page'
    after: ->
      home2 = ->
        Router.go('/')
      Meteor.setTimeout(home2, 3000)

  @route 'notFound',
    path: '*'
    where: 'server'
    action: ->
      @response.statusCode = 404
      @response.end Handlebars.templates['404']()
