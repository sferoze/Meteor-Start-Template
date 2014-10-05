Meteor.startup ->
  async = Meteor.npmRequire("async")

  arr = ['cat', 'doggg', 'banna']

  async.each arr, (item, cb) ->
    console.log item
    cb()
  , (err) ->
    if err
      console.log err.msg
    else
      console.log 'async done'

  console.log process.env.PWD

  



