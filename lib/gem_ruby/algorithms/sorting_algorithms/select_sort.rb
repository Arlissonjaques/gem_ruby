def select_sort(arr, n)
  n.times do |i|
    min_index = i 
    for j in (i+1)..n
      min_index = j if arr[j] < arr[min_index]
    end
    arr[i], arr[min_index] = arr[min_index], arr[i] if min_index != i
  end
    puts arr
end

arr = [64, 25, 12, 75, 22, 11]
n = arr.length-1


select_sort(arr, n)