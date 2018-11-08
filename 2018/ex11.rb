=begin
let's get some data from users
#Todo
-Get some kind of input from a person
-Change it
-Print out something to show how it changed
=end

print "What's your name?"
name = gets.chomp()

print "How old are you?"
age = gets.chomp()

print "How tall are you?"
height = gets.chomp()

print "How much do you weigh?"
weight = gets.chomp()

print "Where do you live?"
home = gets.chomp()

puts "#{name} you're #{age} years old, with #{height} inches tall, weighing #{weight} kilograms and you live in #{home}"