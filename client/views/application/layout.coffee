# consider using session?
@iphone = (/iPhone|iPod/).test(navigator.userAgent)
@mobile = (/iPhone|iPod|iPad|Android|BlackBerry/).test(navigator.userAgent)

Meteor.startup ->
  Meteor.Spinner.options = 
    top: '80px'

Accounts.ui.config
  passwordSignupFields: "USERNAME_AND_OPTIONAL_EMAIL"

Template.layout.events
  'click #toggle-sidebar': (e, t) ->
    e.preventDefault()
    $("#wrapper").toggleClass("toggled")

Template.layout.rendered = () ->

  # document.ontouchmove = (e) ->     

  # Check for IE 10 or 11
  if navigator.appVersion.indexOf('Trident/') != -1 
    $("body").addClass("IE")

  
  # #This is to stop the page from navigating back on delete keypress

  # $(document).keydown (e) ->
  #   preventKeyPress = undefined
  #   if e.keyCode is 8
  #     d = e.srcElement or e.target
  #     switch d.tagName.toUpperCase()
  #       when "TEXTAREA"
  #         preventKeyPress = d.readOnly or d.disabled
  #       when "INPUT"
  #         preventKeyPress = d.readOnly or d.disabled or (d.attributes["type"] and $.inArray(d.attributes["type"].value.toLowerCase(), [
  #           "radio"
  #           "checkbox"
  #           "submit"
  #           "button"
  #         ]) >= 0)
  #       when "DIV"
  #         preventKeyPress = d.readOnly or d.disabled or not (d.attributes["contentEditable"] and d.attributes["contentEditable"].value is "true")
  #       else
  #         preventKeyPress = true
  #   else
  #     preventKeyPress = false
  #   e.preventDefault()  if preventKeyPress
  #   return
