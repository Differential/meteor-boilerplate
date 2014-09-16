Meteor.startup(function() {
  Accounts.ui.config({
    passwordSignupFields: 'EMAIL_ONLY'
  });

  AccountsEntry.config({
    homeRoute: '/',
    dashboardRoute: '/dashboard',
    language: 'en',
    showSignupCode: false,
    extraSignUpFields: [{
      field: "name",
      label: "Your Name",
      type: "text",
      required: true
    }]
  });
});
