=begin
This is an exercise for variables.
It looks like we don't need to worry too much about the declartion of variables but rather assignin them
=end

#Assigning of variables
#Cars
cars = 100 #These are 100 cars
#if space_in_a_car is 4 then it variable will be int instead of float
space_in_a_car = 4.0 #Is this the space between cars. Oh Yes
drivers = 30 #This cars are driven by only 30 drivers
passengers = 90 #They carry only 90 people
cars_not_driven = cars - drivers #Some are not driven
cars_driven = drivers #These are driven cars
carpool_capacity  = cars_driven * space_in_a_car #Their capacity
average_passengers_per_car = passengers / cars_driven

#This prints out necessary variable information
puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available"
puts "There will be #{cars_not_driven} empy cars today."
puts "We can transport #{carpool_capacity} people today"
puts "We have #{passengers} to carpool today"
puts "We need to put about #{average_passengers_per_car} in each car."


