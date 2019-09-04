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

  # Returns all the reviews of this restaurant instance.
  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  # Returns a **unique** list of all customers who have reviewed a particular restaurant.
  def customers
    all_customers = self.reviews.map do |review|
      review.customer
    end
    all_customers.uniq
  end

  # Returns the average star rating for a restaurant based on its reviews
  def average_star_rating
    all_ratings = self.reviews.map do |review|
      review.rating
    end
    num_ratings = self.reviews.count
    all_ratings.inject(:+).to_f / num_ratings
  end

  # Returns an array of the contents of the reviews received by this Restaurant instance
  def review_contents
    self.reviews.map do |review|
      review.content
    end
  end

  # Returns the longest review content for a given restaurant
  def longest_review
    self.review_contents.max_by(&:length)
  end

  # Given a string of restaurant name, returns the first restaurant that matches
  def self.find_by_name(name)
    Restaurant.all.find do |restaurant|
      restaurant.name == name
    end
  end

end
