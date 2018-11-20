=begin
    Given an array example
    [1,2,3,9]
    [1,2,4,4]
    Find wheather there is a pair that sums up to 8

    
=end

    #Method 1:
    #Iterates with items and uses binary search for the remaining elements

    a = [5, 1,2,3]
    a.sort 
   a.each {
       |k|
       puts a.index(k)
   }

    