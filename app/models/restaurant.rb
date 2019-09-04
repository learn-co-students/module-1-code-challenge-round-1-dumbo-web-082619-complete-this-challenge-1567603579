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
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
    self.reviews.map do |review|
      review.customer
    end.uniq
  end

  def average_star_rating
    total = 0
    Review.all.each{|review| total += review.rating}
    total/self.reviews.length
  end

  def longest_review
    self.reviews.max_by{|review| review.content.length}
  end

  def self.find_by_name(name)
    self.all.find{|restaurant| restaurant.name == name}
  end

end
