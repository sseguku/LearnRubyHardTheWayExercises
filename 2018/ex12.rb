print "Give me a Number: "
number = gets.chomp.to_i

bigger = number * 100

puts "A bigger number is  #{bigger}"

print "Give me another number: "
another = gets.chomp
number = another.chomp.to_f # to_i converts string to integer

smaller = number / 100
puts "A smaller number is #{smaller}"
