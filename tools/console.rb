require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

rs1 = Restaurant.new("Zefe")
rs2 = Restaurant.new("Ricco")
rs3 = Restaurant.new("Georgia")

c1 = Customer.new("Viraj", "R")
c2 = Customer.new("Mike", "Z")
c3 = Customer.new("Rose", "X")

rw1 = Review.new(c1, rs1)
rw2 = Review.new(c2, rs2)
rw3 = Review.new(c3, rs3)


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line