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

  def add_review(restaurant, content, rating, self)
    Review.new(restaurant, content, rating, self) 
  end

  def num_reviews
    total_reviews = Review.all.select {|review| review.customer == self }
    total_reviews.size
  end

  def restaurants
    restaurant_array = Review.all.select {|restaurant| restaurant == restaurant && Review.customer == self}
    restaurant_array.uniq
  end

  def self.find_by_name(name)
    Customer.all.find {|name| name == full_name}
  end

  def self.find_by_first_name(first_name)
    Customer.all.find {|first_name| first_name == self.first_name}

  def self.all_names
    self.all.map {|customer| customer.full_name}
  end

  









end
