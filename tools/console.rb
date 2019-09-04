require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Bob","Belcher")
c2 = Customer.new("Tina","Belcher")
c3 = Customer.new("Gene","Belcher")
c4 = Customer.new("Louise","Belcher")

r1 = Restaurant.new("Jimmy Pestos")
r2 = Restaurant.new("McDonalds")
r3 = Restaurant.new("Shake Shack")



c1.add_review(r1, "Terrible", 1)
c2.add_review(r1, "I love jimmy jr", 5)
c2.add_review(r2, "Bob's Burgers is better", 3)
c3.add_review(r3, "SHROOMBURGER!", 5)






binding.pry
0 #leave this here to ensure binding.pry isn't the last line