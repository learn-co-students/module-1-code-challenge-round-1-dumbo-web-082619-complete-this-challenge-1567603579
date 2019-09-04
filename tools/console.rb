require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

fridays = Restaurant.new("TGIF")
applebees = Restaurant.new("applebees")

first_customer = Customer.new("tawhid", "ali")

Review.new(first_customer, fridays, "it was great", 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line