Template.dashboard.helpers
  visitors: ->
    Visitor.find({}, 
      limit: 100
      )

  visitorsCount: ->
    Visitor.find().count()

  totalVisits: (currentCount) ->
    visitors = Visitor.find().fetch()
    currentCount = 0
    Session.set("count", 0)
    _.each visitors, (visit) ->
      add = visit.visits.length
      currentCount = currentCount + add
    Session.set('count', currentCount)
    currentCount

  avgVisits: (currentCount) ->
    num = Session.get('count') / Visitor.find().count()
    num.toFixed(1)
