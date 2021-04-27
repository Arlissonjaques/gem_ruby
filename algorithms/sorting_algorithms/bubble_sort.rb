
def bubblesort(arr)
	temp = 0
	i = 0
	j = 0

	while i < arr.count - 1
		while j < arr.count-i-1
			if arr[j] > arr[j+1]
				temp = arr[j]
				arr[j] = arr[j+1]
				arr[j+1] = temp
			end
			j += 1
		end
		j = 0
		i += 1
	end

end

arr = [100, 64, 77, 34, 25, 12, 22, 11, 90, 2, 7,]

bubblesort(arr)

print("==> ")

arr.each do |i|
	print "#{i} "
end
