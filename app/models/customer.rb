require 'pry'

class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    reviews = Review.all.select do |review|
      review.customer == self
    end
    reviews.size
  end

  def restaurants
    reviews = Review.all.select do |review|
      review.customer == self
    end
    restaurants = reviews.map do |review|
      review.restaurant
    end
    restaurants.uniq
  end

  def self.find_by_name(name)
    self.all.find do |customer|
      customer.first_name.downcase + " " + customer.last_name.downcase == name.downcase
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.first_name.downcase == name.downcase
    end
  end

  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end

end
