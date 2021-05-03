def jumpSearch(arr, x, n)
	
	step = Math.sqrt(n)
	prev = 0

	while arr[(step..n).min.to_i] < x
		prev = step
		step += Math.sqrt(n)

		if prev >= n
			return -1
        end
    end

	while arr[prev.to_i] < x
		prev += 1

		if prev == (step..n).min
		    return -1
        end
    end
	
	if arr[prev.to_i] == x
		return prev
    end
	return -1
end


arr = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
x = 377
n = arr.count

index = jumpSearch(arr, x, n)

puts "Number #{x} is at index, #{index}"
