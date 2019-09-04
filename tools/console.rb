require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

alex = Customer.new("Alex", "Mendes")
john = Customer.new("John", "Mayer")
michelle = Customer.new("Michelle", "Fuin")

brazilian  = Restaurant.new("Brazilian Grill")
europa = Restaurant.new("Restaurante Europa")
mcdonalds = Restaurant.new("McDonalds")

review1 = Review.new(alex, brazilian, 5, "Great restaurant!")
review2 = Review.new(john, mcdonalds, 2, "Awfull restaurant :(")
review3 = Review.new(michelle, europa, 3, "It could be better")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line