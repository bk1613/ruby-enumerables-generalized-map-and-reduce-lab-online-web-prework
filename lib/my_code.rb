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
  if start_val
    total = start_val
    x = 0
  else
    total = source_array[0]
    x = 1
  end

  while x < source_array.length
    total = yield(total, source_array[x])
    x += 1
  end
  total
end