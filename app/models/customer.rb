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
    Review.new(self, restaurant, content, rating)
  end

  def my_reviews
    reviews = Review.all.select do |review|
      review.customer == self
    end
  end

  def num_reviews
    my_reviews.size
  end

  def restaurants
    restaurants = my_reviews.map do |review|
      review.restaurant 
    end
    restaurants.uniq
  end

  def self.find_by_name(name)
    Customer.all.find do |customer|
    customer.full_name == name
  end
end

def self.find_all_by_first_name(name)
  Customer.all.select do |customer|
    customer.first_name == name
  end
end

def self.all_names
  Customer.all.map do |customer|
    customer.full_name
  end
end


  









end
