require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("John", "Legend")
c2 = Customer.new("Kanye", "West")
c3 = Customer.new("Taylor", "Swift")
c4 = Customer.new("Eric", "Kim")

r1 = Restaurant.new("The Spot")
r2 = Restaurant.new("The Other Spot")
r3 = Restaurant.new("The Better Spot")
r4 = Restaurant.new("The Best Spot")

c1.add_review(r1, "very good", 5)
c2.add_review(r1, "good", 4)
c3.add_review(r2, "ok", 5)
c4.add_review(r3, "yikes", 5)
c1.add_review(r4, "is it even worth it", 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line