Items = new Mongo.Collection('items');

Items.helpers({

});

Items.before.insert(function (userId, doc) {
  doc.createdAt = moment().toDate();
});

Items.allow({
  insert: function(userId, doc) {
    return !!userId;
  },

  update: function(userId, doc, fields) {
    var _fields = _(fields);

    if (_fields.contains('userId')) {
      return false;
    }

    return !!userId && doc.userId === userId;
  },

  remove: function(userId, doc) {
    return !!userId && doc.userId === userId;
  }
});
