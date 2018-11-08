=begin
To play with .to_f more, make a small script that asks for some money and gives back 10% of it. If I give your script 103.4 (dollars), your script gives me back 10.34 in change.
=end

puts "How much money do you have in your wallet?"
    money = gets.chomp.to_f

    holyHouse = 0.1 * money

    puts "10% of the money in your pockets is #{holyHouse.round(2)}"