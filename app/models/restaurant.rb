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

  def reviews()
    Review.all().select {|review| review.restaurant == self}
  end

  def customers_reviews()
    self.reviews().map {|review| review.customer}
  end

  def customers()
    customers_reviews().uniq
  end

  def sum_rating()
    total = 0
    self.reviews().rating.each {|rating| total += rating}
    total
  end

  def average_start_rating()
    self.sum_rating() / self.customers_reviews.count
  end

  #??
  def longest_review()
    self.reviews().content.max_by {|content| content.length}
  end

  def self.find_by_name(name)
    self.all().detect {|restaurant| restaurant.name == name}
  end

end
