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
    if rating.between?(1..5)
      Review.new(self, restaurant, content, rating)
    else 
      "Rating should be an integer from 1-5."
    end 
    
  end 

  # helper: reviews this customer made
  def reviews_this_c_made
    Review.all.select {|review| review.customer == self}
  end 

  def num_reviews
    self.reviews_this_c_made.size
  end 

  def restaurants
    self.reviews_this_c_made.map {|review| review.restaurant}.uniq
  end 

  def self.find_by_name(name)
    self.all.find {|customer| (customer.first_name + " " + customer.last_name) == name}
  end 

  def self.find_all_by_first_name(name)
    self.all.select {|customer| customer.first_name == name}
  end 

  def self.all_names
    self.all.map {|customer| customer.first_name + " " + customer.last_name}
  end 











end
