#ARGV helps the user to give input at the begging of the program
first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

#Using ARGV at the beggining of the file means that get.chomp does not work inside the file. Instead use $stdin.gets.chomp
puts "Whats your name again?"
name = $stdin.gets.chomp
puts "This is a test for chomp #{name}"




#Fill returns null if no variables provided at execution time
#Executing the file with extra variables makes it pick the first three
