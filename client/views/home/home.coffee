Template.home.rendered = ->

  #SEO Page Title & Description
  document.title = "Cintrifuse CheckIn"
  $("<meta>", { name: "description", content: "Check in website for Cintrifuse" }).appendTo "head"

Template.home.events
  "submit form": (e) ->
    e.preventDefault()
    email = $(e.target).find("[name=email]").val()
    previousVisitor = Visitor.findOne({email: email})
    console.log previousVisitor
    # if success, add new visitor to visitor collection
    if previousVisitor is undefined
      visitor =
        firstName: $(e.target).find("[name=firstName]").val()
        lastName: $(e.target).find("[name=lastName]").val()
        company: $(e.target).find("[name=company]").val()
        email: $(e.target).find("[name=email]").val()
        userId: Meteor.userId()
        firstVisit: new Date()
        visits: [
          new Date()
        ]
      # run method to mailchimp
      Meteor.call("mailchimp", visitor.email, visitor.firstName, visitor.lastName)
      Visitor.insert(visitor)
      Router.go("/confirmation-page")
    else if previousVisitor._id
      console.log "We found one"
      Visitor.update(
        {_id: previousVisitor._id},
        {$push:
          visits: new Date()
        }
      )
      Session.set("id", previousVisitor._id)
      Router.go("/welcome-back")


    
