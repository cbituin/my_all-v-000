require 'pry'

def my_all?(collection)
  i = 0
  blockReturnValues = []
  while i < collection.length
    yield(collection[i])
    blockReturnValues << yield(collection[i])
    i+=1
  end

  if blockReturnValues.include?(false)
    false
  else
    true
  end
  
end
