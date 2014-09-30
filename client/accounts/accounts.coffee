Meteor.startup ->
  Accounts.ui.config
    passwordSignupFields: 'EMAIL_ONLY'

  AccountsEntry.config
    homeRoute: '/'
    dashboardRoute: '/dashboard'
    profileRoute: '/profile'
    language: 'en'
    showSignupCode: false
