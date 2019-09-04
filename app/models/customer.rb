class Customer
  attr_reader :first_name, :last_name
  attr_writer :rating
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

  def add_review(restaurant, rating, content)
      Review.new(self, restaurant, rating, content)
  end

  def review_arr
    Review.all.select do |instance|
      instance.customer == self
    end
  end

  def num_reviews
    self.review_arr.size
  end

  def restaurants
    self.review_arr.map do |instance|
    instance.restaurant
    end.uniq
  end 

  def self.all_names
    self.all.map do |instance|
      instance.full_name
    end
  end

  def self.find_all_by_first_names(first_name)
    

 end
