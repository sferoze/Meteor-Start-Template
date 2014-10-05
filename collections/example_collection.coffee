@Example_Collection = new Mongo.Collection('example_collection')

Example_Collection.allow
  update: ownsDocument
  remove: ownsDocument


# Meteor.methods 
#   newMethod: (params) ->
#   