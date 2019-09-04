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

  def add_review(restaurant, review_content, star_rating)
    Review.new(self, restaurant, review_content, star_rating)
  end

  def helper
    Review.all.select{
      |review|
      review.customer == self
    }
  end

  def num_reviews 
    helper.length
  end

  def restaurants
    helper.map{
      |each_restaurant|
      each_restaurant.restaurant
    }
  end

  def self.find_by_name(name)
    Customer.all.find{
      |each|
      each.first_name == name || each.last_name == name 
    }
  end

  def self.find_all_by_first_name(name)
    Customer.all.map{
      |each|
      each.first_name == name 
    }
  end

  def self.all_names
    Customer.all.map{
      |each|
      each.first_name
    }
  end
end
