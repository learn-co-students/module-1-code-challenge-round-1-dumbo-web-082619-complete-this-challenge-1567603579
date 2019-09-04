require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

customer1 = Customer.new("Tom", "Hardi")
customer2 = Customer.new ("Jason", "Kardson")

restaurant1 = Restaurant.new("Veselka")
restaurant2 = Restaurant.new("Romanoff")

review1 = Review.new(restaurant1, customer1, 5, "rich")
review2 = Review.new(restaurant2, customer2, 6, "middle")





# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line