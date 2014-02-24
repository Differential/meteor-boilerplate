Meteor.startup ->
  Meteor.methods
    totalVisits: () ->
      visitors = Visitor.find().fetch()
      Session.set('count', 0)
      _.each visitors, (visit) ->
        add = visit.visits.length
        currentCount = Session.get('count')
        newCount = currentCount + add
        Session.set("count", newCount)
  Meteor.apply('totalVisits')