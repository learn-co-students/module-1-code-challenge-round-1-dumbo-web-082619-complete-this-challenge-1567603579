require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("joe", "blow")
c2 = Customer.new("sally", "sue")

r1 = Restaurant.new(Taco Bell)
r2 = Restaurant.new(Nobu)
r3 = Restaurant.new(MickeyDs)

rev1 = Review.new(Taco Bell, "Amazing!", 5, c1)
rev2 = Review.new(Nobu, "The Very Worst Sushi", 1, c2)
rev3 = Review.new(MickeyDs, "Average", 3, c1)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line