class Customer
  attr_reader :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  # Returns all customers
  def self.all()
    @@all
  end

  def full_name()
    "#{first_name} #{last_name}"
  end

  # Creates a new review for user
  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  # Returns reviews per user
  def user_reviews()
    Review.all().select {|review| review.customer == self}
  end

  # Returns n# of reviews per user
  def num_reviews()
    self.user_reviews().count
  end

  # Returns restaunts per user
  def restaurants()
    self.user_reviews().map {|review| review.restaurant}.uniq
  end

  def self.find_by_name(full_name_string)
    self.all()
  end

  def self.find_all_by_first_name(name_string)
    self.all().select {|customer| customer.first_name == name_string}
  end

  def self.all_names()
    self.all().map {|customer| customer.full_name}
  end

end
