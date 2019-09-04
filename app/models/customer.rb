class Customer
  attr_reader :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all 
    @@all 
  end 

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end 

  def my_reviews 
    Review.all.select {|review| review.customer == self}
  end
 
  def num_reviews 
    my_reviews.size
  end 

  def restaurants 
    my_reviews.map {|review| review.restaurant}
    .uniq 
  end 

  def favorite
    my_reviews.max_by {|review| review.rating}
  end 

  def self.find_by_name(name)
    Customer.all.find {|customer| customer.full_name == name}
  end 

  def self.find_by_first_name(name)
    Customer.all.find {|customer| customer.first_name == name}
  end 

  def self.all_names
    Customer.all.map {|customer| customer.full_name}
  end 

  def grade 
    average = my_reviews.map {|review| review.rating}
    .inject(:+).to_f / num_reviews
    if average >= 3.5
      "Easy"
    elsif average < 3.5 && average >= 2.75 
      "Average"
    else 
      "Hard"
    end 
  end 

  def print_yelp_page
    puts "# "*20 
    puts self.full_name 
    puts self.grade + " to please"
    puts "# "*20 
    puts "Favorite:"
    puts "#{self.favorite.restaurant.name}, #{self.favorite.rating}, #{self.favorite.content}"
    puts "# "*20 
    puts "Reviews:"
    puts "-"*40 
    my_reviews.each do |review|
      puts "#{review.restaurant.name}:"
      puts review.content 
      puts "#{review.rating} Stars"
      puts "-"*40 
    end 
    return self
  end 
  
end



# - `Customer#add_review(restaurant, content, rating)`
#   - given a **restaurant object**, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
# - `Customer#num_reviews`
#   - Returns the total number of reviews that a customer has authored
# - `Customer#restaurants`
#   - Returns a **unique** array of all restaurants a customer has reviewed

#   - `Customer.find_by_name(name)`
#   - given a string of a **full name**, returns the **first customer** whose full name matches
# - `Customer.find_all_by_first_name(name)`
#   - given a string of a first name, returns an **array** containing all customers with that first name
# - `Customer.all_names`
#   - should return an **array** of all of the customer full names