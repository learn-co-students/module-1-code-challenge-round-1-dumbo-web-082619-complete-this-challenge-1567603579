require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Quizzno", "Cooponds", 3)
c2 = Customer.new("Boston", "Customer Service", 5)
c3 = Customer.new("Mic FAt", "Drive Throu", 1)

r1 = Restaurant.new(c1,"I's good")
r2 = Restaurant.new(c2, "Amazing")
r3 = Restaurant.new(c3, "poor")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line