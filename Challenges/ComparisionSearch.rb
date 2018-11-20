#BinarySearch

#Search One

array = [1,23,21,34,43,45,90,211,22,45]

puts "Search for element in array- {1,23,21,34,43,45,90,211,22,45} :>"
input_d = gets.chomp.to_i




def search_one(arr, x)
    #searches by comparing all the elements
    
    arr.each{
        |i| #element at each index

        if(i == x.to_i)
            return "Yes, it exists at index (#{arr.index(i)})"
            
        end
    }
    return "No, doesn't exist"
    
end

puts search_one(array, input_d)