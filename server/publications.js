Meteor.publish("items", function() {
  Meteor.publishWithRelations({
    handle: this,
    collection: Items,
    filter: {}
  });
});
