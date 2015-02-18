if(Meteor.isClient) {
  Meta.config({
      options: {
        // Meteor.settings[Meteor.settings.environment].public.meta.title
        title: 'Default Project Title',
        suffix: 'Project Title'
      }
  });
}
