class Customer
  attr_reader :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all 
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  # given a **restaurant object**, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
  def add_review(restaurant, content, rating)
    Review.new(restaurant, self, rating, content)
  end

  # Returns the reviews that a customer has authored
  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end  

  # Returns the total number of reviews that a customer has authored
  def num_reviews
    self.reviews.count
  end

  # Returns a **unique** array of all restaurants a customer has reviewed
  def restaurants
    all_restaurants = self.reviews.map do |review|
      review.restaurant
    end
    all_restaurants.uniq
  end

  # Given a string of a **full name**, returns the **first customer** whose full name matches
  def self.find_by_name(name)
    full_name_split = name.split(" ")
    self.all.find do |customer|
      customer.first_name == full_name_split[0] && customer.last_name == full_name_split[1]
    end
  end

  # Given a string of a first name, returns an **array** containing all customers with that first name
  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.first_name == name
    end
  end

  # Returns an **array** of all of the customer full names
  def self.all_names
    Customer.all.map do |customer|
      customer.full_name
    end
  end

end
