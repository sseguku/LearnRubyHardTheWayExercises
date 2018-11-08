#creating arrays
ary = [1, "two",3.0]
ary1 = Array.new
ary2 = Array.new(3)
ary3 = Array.new(4, true) #adds four trues to the array object
ary4 = Array.new(5, "This world..") #adds This world.. to the array object
ary5 = Array.new (4){Hash.new} # [{},{},{}] 
empty_table = Array.new(3){Array.new(3)} # [[nil,nil,nil],[nil,nil,nil],[nil,nil,nil]]
ary6 = Array({:a => "a", :b => "b"}) #=> [[:a, "a"], [:b, "b"]]

#Array One
puts "Array one "
puts ary[0]
puts ary[1]
puts ary[2]

#Number Array
ary7 = [1, 2, 3, 4, 5, 6]
puts "Numbers Array ary7 = [1,2,3,4,5,6]"

puts "ary7[2] is #{ary7[2]}" # prints value at

puts "******"
puts  ary7[100] #nil

puts "******"
puts "ary7[-3] =  #{ary7[-3]}" # 4

puts "******"
puts "ary7[2,3] =   #{ary7[2,3].join(', ')}" # 3,4,5

puts "******"
puts "ary7[1,4] = #{ary7[1,4].join(', ')}" #2,3,4,5

puts "******"
puts "ary7[0,3] =  #{ary7[0..3].join(', ')}" #1,2,3,4

puts "******"
puts "ary7[2,5] = #{ary7[2..5].join(', ')}" #3,4,5,6

puts "******"
puts "ary7[1,-3] =  #{ary7[1..-3].join(', ')}" #3,4,5

puts "First object"
puts ary7.first

puts "last object"
puts ary7.last

puts "\nreturns the first 3 elements (arr7.take(3))"
puts ary7.take(3).join{', '}

puts "\nreturns the first 6 elements (arr7.take(6))"
puts "ary7.take(6) is #{ary7.take(6).join(', ')}"

puts "\nreturns the last 3 elements (arr7.drop(6))"
puts "ary7.drop(3) is #{ary7.drop(3).join(', ')}"

puts "\nbrowsers  = ['chrome', 'firefox', 'Safari', 'Opera', 'IE']"
browsers  = ['Chrome', 'Firefox', 'Safari', 'Opera', 'IE']

puts "\nbrowsers.length"
puts browsers.length

puts "\nbrowsers.count is #{browsers.count}"

puts "\nbrowsers.empty? #=> checks if array empty is "
puts browsers.empty?

puts "\nbrowsers.include?('Chrome') is" 
puts browsers.include?('Chrome')

#Adding items to the arr
arr = [1,2,3,4]

puts "************\n\nAdding Items to Arrays testing with arr = [1,2,3,4]"

puts "\nOriginal Array = " + arr.join(', ')
puts "arr.push(index) to add element"
arr.push(5) 
puts "\narr << 6 - Shows elements less than 6.."
puts arr << 6 
puts "\n unshift adds element to the begining of the array\n arr.unshift(0)"
arr.unshift(0)
puts arr.join(', ')

puts "insert(3, 'Fun') - adds element to any index"
arr.insert(3, "Fish")
puts arr.join(",")
arr.insert(2, 'blue','yellow','red')
puts "\nCode:\narr.insert(2, 'blue','yellow','red') \nOutput:
 #{arr.join(",")}"
 #removing items from arrays
 arr.pop #Removes the last item from the array
 puts "\nRemoving last element\nCode:arr.pop - Removes last item.\nOutput:#{arr.join(',')}"

 arr.shift #Removes the first item from the array
puts "\nRemoving first element\nCode:arr.shift\nCode: #{arr.join('.')}"
arr.delete_at(2)
puts "\nRemoving element at specific index\nCode: arr.delete_at(2)\nOutput: #{arr.join(',')}"
arr.delete(2)
puts "\nRemoving element at specific index\nCode: arr.delete(2)\nOutput: #{arr.join(',')}"

arrr = ['foo',0,nil, 'bar', 7, 'baz', nil]
arrr.compact!
puts "\nRemoving nil in an array\n
arrr = ['foo',0,nil, 'bar', 7, 'baz', nil]\n Code: arrr.compact\nOutput: #{arrr.join(', ')}"

arr1 = [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]
arr1.uniq!
puts "\n Removing duplicates\nArray: arr = [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]\nCode: arr.uniq\nOutput: #{arr1.join(',')}"

arr2 = [1,2,3,4,5]
arr2.each { |a| print a -= 10, " "}