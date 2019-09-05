# Your Code Here
def map(source_array)
  c = source_array.length
  new_array = []
  c.times do |i|
    new_array.push(yield(source_array[i])) 
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