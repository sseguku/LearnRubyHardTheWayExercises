=begin
 1. Binary Search works on sorted arrays
 2. It divides sorted array in to two and then compares which half is the sorted array   
=end


elements = [2,6,13,21,36,47,63,81,97]

# def binary_search(arr, x)
#     #This the loop through the array
#     start = 0
#     last = arr.size - 1
#     mid = (start + last) / 2 

#     while start <= last
#         if arr[mid] == x
#             return "available at #{mid}"
#         elsif x > arr[mid]
#             start = mid + 1
#         else x < arr[mid]
#             last = mid - 1
          
#         end
#     end
#     return "Missing"
# end    

def binary_search (a,key)  # a is the array and key is the value to be found
    lo = 0
    hi= a.length-1
    
    while (lo<=hi)
        mid = lo+((hi-lo)/2)
        
        if a[mid] == key
            return mid
        elsif a[mid] < key
            lo=mid+1
        else
            hi=mid-1
        end
        
    end
    
    return "Value not found in array"
end

puts "Enter number to search for in [2,6,13,21,36,47,63,81,97]"
puts ">_"
k = gets.chomp.to_i

puts binary_search(elements, k)