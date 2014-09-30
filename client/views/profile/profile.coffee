Template.profile.helpers
  profileFields: ->
    [
      { name: "firstName", required: true }
      { name: "lastName", required: true }
      { name: "organization", required: false }
      { name: "location", required: false }
      { name: "bio", required: false, type: 'text_area' }
      { name: "url", required: false }
      { name: "googlePlusUrl", required: false }
      { name: "twitterHandle", required: false }
    ]

Template.profile.events
  'submit form': (event) ->
    event.preventDefault()
    data = SimpleForm.processForm event.target
    Meteor.users.update Meteor.userId(),
      $set: profile: data

Template._profileField.helpers
  profile: ->
    Meteor.user().profile if Meteor.user()

  isTextField: ->
    @type isnt 'file' and @type isnt 'text_area'

  isTextArea: ->
    @type is 'text_area'

  isCheckbox: ->
    @type is 'checkbox'

  isFileField: ->
    @type is 'file'
