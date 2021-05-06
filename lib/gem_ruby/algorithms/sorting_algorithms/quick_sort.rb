def quicksort(array, first, last)
    if first < last
      j = partition(array, first, last)
      quicksort(array, first, j-1)
      quicksort(array, j+1, last)
    end
    return array
end
  
def partition(array, first, last)
  pivot = array[last]
  pIndex = first
  i = first
  while i < last 
    if array[i].to_i <= pivot.to_i
      array[i], array[pIndex] = array[pIndex], array[i]
      pIndex = pIndex+1
    end
    i+=1
  end
  array[pIndex], array[last] = array[last], array[pIndex]
  return pIndex
end
  
array = [ 10, 7, 8, -2, 9, 1, 5, 27, 35, 74, 1000, 200, 101, 202, 4]
puts quicksort(array, 0, array.length-1)