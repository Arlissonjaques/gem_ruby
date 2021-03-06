
def countSort(arr)
 
    output = Array.new(arr.length())
    count = Array.new(256,0)
    ans = Array.new()
 
    for i in 0..arr.length() - 1 do
        count[arr[i].ord] += 1        
    end    
   
    for i in 0..255 do
        count[i] += count[i-1]
    end
   
    for i in 0..arr.length() -1 do       
        output[count[(arr[i]).ord]-1] = arr[i]
        count[(arr[i]).ord] -= 1
    end   
    puts output 
 
    for i in 0..arr.length() - 1 do
        ans[i] = output[i]
    end    
    return ans
end  
 

arr = [8, 4, 6, 1, 5, 9, 0, 3, 2, 7]
ans = countSort(arr)
