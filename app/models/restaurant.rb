class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end
   def self.all
     @@all
   end
   def self_customer
    self.customer.map do |customer|
      reviews.all == self
    end
  def list_all_customers_unique
    Review.customer.all.select do |customer|
      Review.customer.all = self
end.uniq
end 
