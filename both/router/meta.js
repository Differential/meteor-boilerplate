Meteor.startup(function() {
  if(Meteor.isClient) {
    Meta.config({
      options: {
        // Meteor.settings[Meteor.settings.environment].public.meta.title
        suffix: 'Project Title'
      }
    });
  }
});
