require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
r1 = Restaurant.new("chipotle")
r2 = Restaurant.new("chick fli a")
r3 = Restaurant.new("pizza hut")

c1 = Customer.new("taylor" "watson")
c2 = Customer.new("marcia" "watson")
c3 = Customer.new("bob")

rw1 = Review.new(4, "good food")
rw2 = Review.new(3,"i've had better")
rw3 = Reviw.new(2, "nasty, will never come back")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line