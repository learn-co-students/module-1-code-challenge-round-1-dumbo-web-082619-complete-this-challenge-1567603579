require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

rest1 = Restaurant.new("New Moon Restaurant")
rest2 = Restaurant.new("Big Sun Restaurant")
rest3 = Restaurant.new("Top Restaurant")
# rest4 = Restaurant.new("Restaurant4")
# rest5 = Restaurant.new("Restaurant5")

cust1 = Customer.new("Benny", "Louie")
cust2 = Customer.new("Kenneth", "Louie")
cust3 = Customer.new("Kelvin", "Louie")
cust4 = Customer.new("Carl", "Xiao")
cust5 = Customer.new("Carl", "Lee")
cust6 = Customer.new("Carl", "Ao")


rev1 = Review.new(cust1, rest1, 5, "It was great!")
rev2 = Review.new(cust1, rest2, 4, "Not bad!")
rev3 = Review.new(cust2, rest1, 3, "About average.")
rev4 = Review.new(cust2, rest3, 2, "What is this shit?!")
rev5 = Review.new(cust3, rest3, 3, "It's not too bad...")
rev6 = Review.new(cust4, rest3, 1, "I swear... never again am I coming here!")
rev7 = Review.new(cust5, rest1, 5, "This is amazing!")
rev8 = Review.new(cust6, rest2, 3, "Meh...")
rev9 = Review.new(cust1, rest3, 4, "Not bad...")
rev10 = Review.new(cust4, rest1, 5, "I swear... I'm definitely eating here from now on!!!")
rev11 = Review.new(cust5, rest3, 3, "This is... meh")
rev12 = Review.new(cust6, rest2, 3, "It's... not displeasing...")
rev13 = Review.new(cust1, rest3, 4, "Not bad...")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line