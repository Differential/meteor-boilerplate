Meteor.startup ->
  Meteor.methods
    mailchimp: (email, firstName, lastName) ->
      console.log "connecting to mailchimp"
      apiUrl = "https://us5.api.mailchimp.com/2.0/lists/subscribe"
      apiKey = "aa592d8762d109826fb8523b469fb381-us5"
      listId = "ee41d09ead"
      param =
          "apikey": apiKey,
          "id": listId,
          "email[email]" : email,
          "merge_vars[FNAME]" : firstName,
          "merge_vars[LNAME]" : lastName,
      console.log param

      result = HTTP.call("POST", apiUrl,
        params: param
      )
      console.log result