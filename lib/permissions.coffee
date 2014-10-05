@isUser = (userId, doc) ->
  doc && doc._id is userId

@ownsDocument = (userId, doc) ->
  doc && doc.userId is userId

# @collabOfDocument = (userId, doc) ->
#   hasAccess = false
#   if doc && doc.userId is userId
#     hasAccess = true

#   else if doc.collaborators.length > 0
#     _.each doc.collaborators, (collab) ->
#       if collab.userId is userId
#         hasAccess = true

#   hasAccess
