# Validate username, sending a specific error message on failure.
Accounts.validateNewUser (user) ->

  #unacceptable chars
  pattern = new RegExp(/[~`!#$%\^&*+=\-\[\]\\';,/{}|\\":<>\?]/)
  if pattern.test(user.username)
    throw new Meteor.Error(403, "Please only use standard alphanumerics")
  else
    return true  if user.username and user.username.length >= 3
    throw new Meteor.Error(403, "Username must have at least 3 characters")



# Validate username, without a specific error message.
# Accounts.validateNewUser (user) ->
#   user.username isnt "root"

