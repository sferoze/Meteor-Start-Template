Template._loginButtonsLoggedInDropdown.events 
  "click #login-buttons-edit-profile": (event, t) ->
    event.stopPropagation()
    t.$('.dropdown-toggle').click()
    #Router.go "profileEdit"
  "click .login-buttons-logout": (e, t) ->
    Router.go 'login'