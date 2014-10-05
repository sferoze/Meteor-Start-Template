requireLogin = (pause) ->
  if !Meteor.user()
    @setLayout 'layoutLoggedOut'
    if Meteor.loggingIn()
      @render @loadingTemplate
    else
      @render 'login'
      pause()
  else
    @setLayout 'layout'

Router.configure 
  layoutTemplate: 'layout'
  loadingTemplate: 'loading'

#Do not require login for all public routes
Router.onBeforeAction requireLogin, 
  except: ['publicPage']

Router.onBeforeAction 'loading'

Router.onBeforeAction ->
  FlashMessages.clear()

Router.map ->
  @route 'login',
    path: '/',
    onBeforeAction: ->
      if Meteor.user()
        Router.go 'dashboard'
  @route 'dashboard',
    path: '/dashboard',
    # waitOn: ->
    # data: ->

