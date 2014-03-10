class @User extends Minimongoid

  @_collection: Meteor.users

  @current: ->
    if Meteor.userId()
      User.init Meteor.user()
