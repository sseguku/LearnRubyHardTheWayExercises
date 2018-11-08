=begin
print "What's your name? "
name = gets.chomp
=end
 print "\n How old are you? "
 age = gets.chomp.to_i

puts "You were born in #{Time.new.year-age} "
