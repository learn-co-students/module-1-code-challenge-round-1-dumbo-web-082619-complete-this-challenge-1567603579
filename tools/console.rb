require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cus1 = Customer.new("John", "Cunnings")
cus2 = Customer.new("Maple", "Doe")
cus3 = Customer.new("Kevin", "Wittle")

res1 = Restaurant.new("Lucky's Restaurant")
res2 = Restaurant.new("Bill's Bar & Grill")

rv1 = Review.new(cus1, res1, 3 , "Great place to bring family!" )
rv2 = Review.new(cus1, res2 , 4 , "Wonderful service and great drinks!")
rv3 = Review.new(cus2 , res1 , 2 , "Noisey and the food was cold")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line