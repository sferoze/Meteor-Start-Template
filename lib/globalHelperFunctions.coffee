@globalCleanArray = (actual) ->
  newArray = new Array()
  i = 0
  while i < actual.length
    newArray.push actual[i]  if actual[i]
    i++
  newArray