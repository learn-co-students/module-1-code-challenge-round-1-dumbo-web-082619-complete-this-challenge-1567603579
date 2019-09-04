require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


c1 = Customer.new("mykle","jones")

r1 = Restaurant.new("bbq")

rev1 = Review.new(c1,r1,"beef ribs were delicious", 4.5)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line