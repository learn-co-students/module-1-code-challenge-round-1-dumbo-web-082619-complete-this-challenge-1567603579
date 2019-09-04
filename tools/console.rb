require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Antonio", "DeTigre")
c2 = Customer.new("Billy", "Jean")
c3 = Customer.new("JungUn", "Kim")
c4 = Customer.new("Donald", "Dumpster")

r1 = Restaurant.new("Gwendolyns")
r2 = Restaurant.new("Chicken King")
r3 = Restaurant.new("Kentucky Fried Burgers")
r4 = Restaurant.new("Yoshinoya")

rev1 = Review.new(c1, r1, 5, "gggggggreat")
rev99 = Review.new(c1, r1, 0, "not so gggggggreat")
rev2 = Review.new(c1, r2, 4, "ggggggreat")
rev3 = Review.new(c1, r3, 3, "great")
rev4 = Review.new(c2, r1, 4, "Love it")
rev5 = Review.new(c2, r2, 5, "loved")
rev6 = Review.new(c2, r3, 5, "match point")
rev7 = Review.new(c3, r4, 4, "would have been 5 stars but no kimchi")
rev8 = Review.new(c4, r4, 5, "Their beef bowls are HUGE")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line