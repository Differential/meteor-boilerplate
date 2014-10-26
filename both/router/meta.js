Meteor.startup(function() {
  if(Meteor.isClient) {
    Meta.config({
      options: {
        suffix: 'Project Title'
      }
    });
  }
});
