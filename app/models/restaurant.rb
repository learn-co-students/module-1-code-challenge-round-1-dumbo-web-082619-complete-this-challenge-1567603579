class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all<<self
  end

  def all
    @@all
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    customers_who_reviewed = self.reviews.map {|review| review.customer}
    customers_who_reviewed.uniq
  end

  def average_star_rating
    reviews = self.reviews 
    ratings = review.map {|review| review.rating}
    sum_of_ratings = ratings.reduce(:+)
    sum_of_ratings/reviews.size
  end

  def find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end

  def longest_review
    review_array = self.reviews.map {|review| review.content}
    # review_array.sort!
    # review_array.find {|review| review.length.max}
    review_longest = review_array.reduce(function (a, b) { return a.length > b.length ? a : b; });
    review_longest
  end

  end

end
