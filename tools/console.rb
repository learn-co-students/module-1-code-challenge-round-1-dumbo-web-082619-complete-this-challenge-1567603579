require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Allen", "Clark")
c2 = Customer.new("Bob", "Bass")
c3 = Customer.new("Allen", "Green")

r1 = Restaurant.new("Nobu")
r2 = Restaurant.new("Nobu")
r3 = Restaurant.new("Restaurant3")

review1 = Review.new(c1, r1, "Tasty", 9)
review2 = Review.new(c2, r2, "Nasty", 1)
review3 = Review.new(c3, r3, "Delicious", 4)
review4 = Review.new(c1, r2, "Ok", 3)
review5 = Review.new(c2, r3, "Tasty", 5)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line