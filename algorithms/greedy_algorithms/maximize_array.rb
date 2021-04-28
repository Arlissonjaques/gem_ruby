def maximumSum(arr, n, k)
 
    (1..k + 1).each do |i|
        min = +2147483647
        index = -1
 
        (0..n-1).each do |j|
            if (arr[j] < min) 
                min = arr[j]            
                index = j
            end     
        end        
 
        break if min == 0
        arr[index] = -arr[index]
    end    

    sum = 0
    (0..n-1).each do |x|
        sum += arr[x]
    end

    sum
end    

arr = [-2, 0, 5, -1, 2]
k = 4
n = arr.length()
puts (maximumSum(arr, n, k))
 