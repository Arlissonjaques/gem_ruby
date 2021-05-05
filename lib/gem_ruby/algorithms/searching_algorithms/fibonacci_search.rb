
def fibMonaccianSearch(arr, x, n)

	fibMMm2 = 0
	fibMMm1 = 1
  fibM = fibMMm2 + fibMMm1

	while fibM < n
		fibMMm2 = fibMMm1
		fibMMm1 = fibM
		fibM = fibMMm2 + fibMMm1
	end

  offset = -1

	while fibM > 1
		i = [offset+fibMMm2, n-1].min

		if arr[i] < x
			fibM = fibMMm1
			fibMMm1 = fibMMm2
			fibMMm2 = fibM - fibMMm1
			offset = i
		elsif arr[i] > x
			fibM = fibMMm2
			fibMMm1 = fibMMm1 - fibMMm2
			fibMMm2 = fibM - fibMMm1
		else
      return i
    end
  end

	if fibMMm1 && arr[n-1] == x
	  return n-1
  end

	return -1

end


arr = [10, 22, 35, 40, 45, 50, 80, 82 , 85, 90, 100, 235]
n = arr.count
x = 22
ind = fibMonaccianSearch(arr, x, n)

if ind >= 0
  puts "Found at index: #{ind}"
else
  puts "#{x} isn't present in the array"
end