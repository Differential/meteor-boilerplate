Meteor.startup(function(){
  AccountsTemplates.init();
});

AccountsTemplates.configureRoute('signIn', {layoutTemplate: 'authLayout'});
AccountsTemplates.configureRoute('signUp', {layoutTemplate: 'authLayout'});
