require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


c1 = Customer.new("Jane", "Doe")
c2 = Customer.new("Jayne", "Dough")
c3 = Customer.new("Jan", "Do")
c4 = Customer.new("Joan", "Door")
c5 = Customer.new("Anna", "Wintour")

r1 = Restaurant.new("Momofuku")
r2 = Restaurant.new("Balthazar")
r3 = Restaurant.new("Per Se")
r4 = Restaurant.new("Odeon")

c1.add_review(r1, 4, "Lovely")
c2.add_review(r2, 2, "Smelled weird")
c3.add_review(r3, 5, "Is it latin?")
c4.add_review(r4, 3, "More like odor-on...")
c5.add_review(r1, 4, "You know back in the 90s when we were all traipsing around the city, Andre, McQueen, and I, we would have so loved to have an opportunity like this it is truly needed in one's life just like a proper fitting black dress")
c1.add_review(r2, 1, "Wasn't my favorite, I saw a rat")
c2.add_review(r3, 4, "Simply the best")
c3.add_review(r4, 4, "Cute waiters")
c4.add_review(r1, 5, "Again!")
c5.add_review(r2, 3, "What can I say about Balthazar I mean an icon a staple it's the Galliano Fall '94 of New York City breakfast eateries. There is no need to search for anything else. They should clear up the smell of trash on the sidewalk though...")
c1.add_review(r3, 4, "Yes")
c2.add_review(r4, 2, "Not for me")
c1.add_review(r4, 4, "four")
c2.add_review(r3, 2, "two")
c3.add_review(r2, 5, "five")
c4.add_review(r1, 3, "three")

c1.add_review(r1, 4, "Love")
c1.add_review(r1, 4, "Lovel")
c1.add_review(r2, 4, "Lov")
c1.add_review(r2, 4, "Lo")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line