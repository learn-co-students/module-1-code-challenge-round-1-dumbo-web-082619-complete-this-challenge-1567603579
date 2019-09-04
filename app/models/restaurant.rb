class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self 
  end

  def self.all 
    @@all
  end

  def customers 
    reviews.map {|review| review.customer}
  end 

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end 

  def average_star_rating
    reviews.map {|review| review.rating}
    .inject(:+).to_f / reviews.size 
  end 

  def longest_review
    reviews.max_by {|review| review.content.length}
  end 

  def self.find_by_name(name)
    Restaurant.all.find {|restaurant| restaurant.name == name}
  end 

  def top_three
    reviews.sort_by {|review| review.rating}
    .reverse.take(3)
  end

  def print_yelp_page 
    puts "# "*20
    puts @name 
    puts "Average Rating: #{self.average_star_rating}"
    puts "# "*20
    puts "Featured Review:"
    puts self.longest_review.customer.full_name 
    puts self.longest_review.content 
    puts "#{self.longest_review.rating} Stars"
    puts "# "*20 
    self.top_three.each do |review| 
      puts "#{review.customer.full_name} says:"
      puts review.content 
      puts "#{review.rating} Stars"
      puts "-"*40 
    end 
    return self
  end 

end



# - `Restaurant#customers`
#   - Returns a **unique** list of all customers who have reviewed a particular restaurant.
# - `Restaurant#reviews`
#   - returns an array of all reviews for that restaurant
# - `Restaurant#average_star_rating`
#   - returns the average star rating for a restaurant based on its reviews
# - `Restaurant#longest_review`
#   - returns the longest review content for a given restaurant

#   - `Restaurant.find_by_name(name)`
#   - given a string of restaurant name, returns the first restaurant that matches
