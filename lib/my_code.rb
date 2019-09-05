# Your Code Here
def map(source_array)
  c = 0
  new_array = []
 while source_array[c] do
    new_array.push(yield(source_array[i])) 
    c += 1
  end
	new_array
end

def reduce(array, start_point = nil)
  if start
    totalv = start
    counter = 0
  else
    totalv = array[0]
    counter= 1
  end

   while counter < source_array.length
    totalv = yield(totalv, array[counter])
    counter += 1
  end
  totalv
end