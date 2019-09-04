class Restaurant
  attr_reader :name
  @@all =[]

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end
  
  def customers
    Customer.all.select do |customer|
    customer.restaurants == self
    end
  end
  
  def reviews
    Review.all.select do |reviews|
      reviews.restaurant == self
    end
  end

  def longest_review
    self.reviews.select do |review|
    review.length.max
    end
  end






end
