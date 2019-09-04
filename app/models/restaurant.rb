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

  





  # def customers
  #   Review.all.select do |customer|
  #     customer.full_name == self
  #   end
  # end





  def self.find_by_name(name)

  end







end
