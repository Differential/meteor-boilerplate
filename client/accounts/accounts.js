Meteor.startup(function() {

  Accounts.ui.config({
    passwordSignupFields: 'EMAIL_ONLY'
  });
  
  return AccountsEntry.config({
    homeRoute: '/',
    dashboardRoute: '/dashboard'
  });
});
