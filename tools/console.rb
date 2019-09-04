require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cust1 = Customer.new("Belle", "P")
cust2 = Customer.new("Brian", "O")
cust3 = Customer.new("Betty", "K")

rest1 = Restaurant.new("tacos")
rest2 = Restaurant.new("seafood")
rest3 = Restaurant.new("chicken")

review1 = Review.new(cust1, rest1, 1, "so bad")
review2 = Review.new(cust2, rest3, 4, "so good")
review3 = Review.new(cust3, rest3, 3, "it's alright")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line