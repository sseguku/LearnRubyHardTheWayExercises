def bubble_sort(arr)
    a = arr.length
    #enter into a loop
    loop do 

        #will help to exit the loop
        swapp = false

        a.times do |i|
            if arr[i] > arr[i+1]
                arr[i], arr[i+1] = arr[i+1], arr[i]
                #swap is true if already swapped
                swapp = true
            end

        end
        break if not swapp

    end

   arr
end

k = [4,3,5,3,4,3,7,6,3,5,4,3,1]
p bubble_sort(k)