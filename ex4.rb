# Define cars equals to 100
cars = 100
# Define space in a car equals to 4
space_in_a_car = 4.0
# Define the number of drivers as 30
drivers = 30
# Define the numbers of passengers as 90
passengers = 90
# Define the numbers of cars not driven
cars_not_driven = cars - drivers
# Define the number od driven cars
cars_driven = drivers
# Define the number of carpool that wil be necessary
carpool_capacity = cars_driven * space_in_a_car
# Define the average of passengers per car
average_passengers_per_car = passengers / cars_driven

# Show the amount of cars available.
puts "There are #{cars} cars available."
# Show the amount of drivers available.
puts "There are only #{drivers} drivers available."
# Show how many cars will not be driven.
puts "There will be #{cars_not_driven} empty cars today."
# Show how much people we can transport today.
puts "We can transport #{carpool_capacity} people today."
# Show the number of passengers to carpoll today.
puts "We have #{passengers} to carpool today."
# Show the average of people in each car.
puts "We have t oput about #{average_passengers_per_car} in each car." 
