class Customer
  attr_reader :first_name, :last_name
  @@all =[]

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
    Review.new(self, restaurant, content, rating)
  end

  def reviews
    Review.all.select do |reviews|
      reviews.customer == self
    end
  end

  def num_reviews
    self.reviews.count
  end

  def restaurants
    Restaurant.all.select do |restaurants|
    restaurants.customers == self
    end
  end

  def self.find_by_name(name)
    Customer.all.find do |name|
      name == full_name
    end
  end

end

