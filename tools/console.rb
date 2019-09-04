require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Customer.new("Karina", "Macancela")
c2 = Customer.new("John", "Smith")
c3 = Customer.new("Jeff", "Ates")
c4 = Customer.new("Jean Pierre", "Chigne")
c5 = Customer.new("Karina", "Jones")

r1 = Restaurant.new("Pizza Hut")
r2 = Restaurant.new("Some Restaurant")
r3 = Restaurant.new("Taco Bell")

rw1 = Review.new(r1, c1, 4, "This place is wild!")
rw2 = Review.new(r2, c3, 2, "Do not come here.")
rw3 = Review.new(r1, c4, 5, "The service was amazing!")
rw4 = Review.new(r3, c1, 1, "Ruined my day.")
rw5 = Review.new(r3, c2, 5, "Not bad at all.")
rw6 = Review.new(r1, c1, 1, "Came back here and I hate it.")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line