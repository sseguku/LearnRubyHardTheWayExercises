
def cassava_and_matooke(cassava_count, boxes_of_matooke)
    puts "You have #{cassava_count} cassava!"
    puts "You have #{boxes_of_matooke} boxes of matook!"
    puts "Man that's enough for a party!"
    puts "Get a blanket. \n"
end

puts "We can just give the function numbers directly:"

cassava_and_matooke(20,30)

puts "or use variables like this"

amt_of_cassava = 100
amt_of_matooke = 90

cassava_and_matooke(amt_of_cassava, amt_of_matooke)

puts "We can even do math inside too:"
    cassava_and_matooke(10+20 , 5+6)

    