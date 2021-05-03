
def minProductSubset(a, n)

	return a[0] if n == 1

	max_neg = 0
	min_pos = 0
	count_neg = 0
	count_zero = 0
	prod = 1

	(0..n-1).each do |i|

		if a[i].zero?
			count_zero = count_zero + 1
			continue
        end

		if a[i] < 0
			count_neg = count_neg + 1
			max_neg = [max_neg, a[i]].max
        end

		if a[i] > 0
			min_pos = [min_pos, a[i]].min
        end

		prod = prod * a[i]
	end

	if count_zero == n or (count_neg == 0 and count_zero > 0)
		return 0;
    end

	return min_pos if count_neg == 0

	if (count_neg & 1) == 0 and count_neg != 0
		prod = int(prod / max_neg)
    end

	prod;
end

arr = [ -1, -1, -2, 4, 3 ]
n = arr.count
print (minProductSubset(arr, n))

