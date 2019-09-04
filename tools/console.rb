require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#customers

eric = Customer.new("Eric", "Wareheim")
tim = Customer.new("Tim", "Heidecker")
ren = Customer.new("Ren", "Hoek")
stimpy = Customer.new("Stimpy", "Stimpson")

# restaurants

bamontes = Restaurant.new("Bamonte's")
mama_pho = Restaurant.new("Mama Pho")
olive_g = Restaurant.new("Olive Garden")
shake_shack = Restaurant.new("Shake Shack")

# reviews

review_1 = Review.new(eric, olive_g, "You call this Italian food? What a dump. I want my money back.", 0)
review_2 = Review.new(tim, bamontes, "Now that's Italian food! I would spend every dime here", 5)
review_3 = Review.new(stimpy, mama_pho, "Oh, boy! I love a bowl of noodle soup. Great vibes, too.", 4)
review_4 = Review.new(ren, shake_shack, "Not the sacred cow!!! How could you? IIIIIIdiots!!!", 1)
review_5 = Review.new(eric, shake_shack, "My pep pep would love this place. Americana deluxe! But he's dead : (", 2)
review_6 = Review.new(tim, mama_pho, "Slurp it up! Good, but the bathroom was DEE SGUST ING!", 3)
review_7 = Review.new(eric, shake_shack, "My pep pep came back to life! We love Shake Shack!!!", 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line