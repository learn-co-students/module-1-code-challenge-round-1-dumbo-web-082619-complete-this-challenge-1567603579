require 'pry'

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
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    customers = self.reviews.map do |review|
      review.customer
    end
    customers.uniq
  end

  def ratings_list
    self.reviews.map do |review|
      review.rating
    end
  end

  def average_star_rating
    self.ratings_list.reduce(:+) / self.reviews.size.to_f
  end

  def review_content
    self.reviews.map do |review|
      review.content
    end
  end

  def longest_review
    lengths = self.review_content.map do |content|
      content.size
    end
    self.review_content.find do |content|
      content.size == lengths.max
    end
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name.downcase == name.downcase
    end
  end

end
