require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

nick = Customer.new("Nick", "Montesino")
nick2 = Customer.new("Nick", "Martella")
cy = Customer.new("Cydel", "Giraudel")
ro = Customer.new("Rohan", "Mukherjee")

moes = Restaurant.new("Moe's")
stuff = Restaurant.new("Stuff yer Face")

nick.add_review(moes, "This place is literal trash", 2)
nick.add_review(moes, "I was being harsh", 4)
cy.add_review(moes, "It's okay", 3)

found = Restaurant.find_by_name("Stuff yer Face")

puts found.name

# binding.pry
# 0 #leave this here to ensure binding.pry isn't the last line