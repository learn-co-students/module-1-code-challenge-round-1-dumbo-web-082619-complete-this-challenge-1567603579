require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Customer.new("Jack", "Black")
c2 = Customer.new("Jim",  "James")
c3 = Customer.new("Jones", "Casey")

r1 = Restaurant.new("Chilis")
r2 = Restaurant.new("Coldstone Creamery")
r3 = Restaurant.new("Cranky Connies")


rev1 = Review.new(c1, r1, "This place stinks", 1 )
rev2 = Review.new(c2, r1, "thought it was great!", 5)
rev3 = Review.new(c3, r2, "too cold", 3)
rev4 = Review.new(c1, r3, "She Cranky!", 5)



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



binding.pry
0 #leave this here to ensure binding.pry isn't the last line