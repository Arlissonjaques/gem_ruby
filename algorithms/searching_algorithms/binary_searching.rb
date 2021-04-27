#TODO: Entender melhor o código como um todo, a ponto
# de refazer-lo buncando melhor-lo em alguns aspectos

def binarySearch(arr, l, r, x)
  if r >= l
    mid = l + (r - l) / 2

    if arr[mid] == x
      return mid
    elsif arr[mid] > x
      return binarySearch(arr, l, mid-1, x)
    else
      return binarySearch(arr, mid + 1, r, x)
    end
  else
    return -1
  end
end

arr = [ 2, 3, 4, 7, 8, 10, 17, 20, 26, 27, 33, 40, 47, 50 ]
x = 40

result = binarySearch(arr, 0, arr.count-1, x)

if result != -1
  puts "Element is present at index #{result}"
else
  puts "Element is not present in arr"
end