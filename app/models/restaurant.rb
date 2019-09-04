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

  # reviews this restaurant received
  def reviews
    Review.all.select {|review| review.restaurant == self }
  end 

  # all customers who have reviewed this restaurant
  def customers
    self.reviews.map {|review| review.customer }.uniq
  end 

  def average_star_rating
    all_ratings = self.reviews.map {|review| review.rating}
    average_rating = all_ratings.sum.to_f / all_ratings.size
  end 

  def longest_review
    all_contents = self.reviews.map {|review| review.content}
    all_contents.max_by {|element| element.size}
  end 

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end 
  




end
