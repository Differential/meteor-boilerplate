Template.welcomeBack.helpers
  visitor: ->
    Visitor.findOne({_id: Session.get('id')})