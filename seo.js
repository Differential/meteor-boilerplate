Meteor.startup(function() {
  if(Meteor.isClient) {
    SEO.config({
      title: 'Project Title',
      meta: {
        'description': 'A project by Differential.io'
      },
      og: {
        'image': Meteor.absoluteUrl('share-image.png')
      }
    });
  }
});
