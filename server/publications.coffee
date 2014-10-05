async = Meteor.npmRequire("async")

Meteor.publish null, ->
  Meteor.users.find({_id: this.userId}, {fields: {tags: 1, defaultEditor: 1}})