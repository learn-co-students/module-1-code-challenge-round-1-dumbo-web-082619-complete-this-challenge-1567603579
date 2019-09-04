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

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    self.reviews.map {|review| review.customer}.uniq
  end

  def ratings
    self.reviews.map {|review| review.rating}
  end

  def average_star_rating
    self.ratings.reduce(:+) / self.ratings.count
  end

  def review_content
    self.reviews.map {|review| review.content}
  end

  def longest_review
    self.review_content.reduce {|memo, content| memo.length > content.length ? memo : content}
  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end

end
