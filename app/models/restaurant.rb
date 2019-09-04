class Restaurant
  attr_reader :name
@@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
   
  def customers
   array_customer = Review.all.select do |restaurant|
      restaurant.customer == self
    end
    array_customer.uniq
  end

  def reviews
    self.customer.map do |review|
      review.restaurant
    end
  end
  
  def self.find_by_name(name)
    self.name.find do |restaurant|
      restaurant.name == self

end
