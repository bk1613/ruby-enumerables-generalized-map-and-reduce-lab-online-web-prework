# Your Code Here
def map(source_array)
  c = 0
  new_array = []
 while source_array[c] do
    new_array.push(yield(source_array[c])) 
    c += 1
  end
	new_array
end

def reduce(array, start_point = nil)
  if start_point
    arrayval = start_point
    counter = 0
  else
    arrayval = array[0]
    counter= 1
  end

   while counter < array.length
    arrayval = yield(arrayval, array[counter])
    counter += 1
  end
  arrayval
end