def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man that's enough for a party!"
  puts "Get a blacket. \n"
end

puts "We can just give the function numbers directly:"
cheese_and_crackers(20,30)

puts "OR, we can use variables from our script:"
amt_of_cheese = 1
amt_of_crackers = 4

cheese_and_crackers(amt_of_cheese, amt_of_crackers)

puts "We can even do math inside too"
cheese_and_crackers(1+3, 3*7)

puts "And we can combine the two, variables and math"
cheese_and_crackers(amt_of_cheese + 100, amt_of_crackers*7)
