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

  def restaurant_customers_select
    Restaurant.all.select do |x|
      x.name = self
    end 
  end 

  def restaurant_customers_map
  Restaurant.all.map do |x|
    x.name 
  end 

  

end 

  # def restaurant.find_by_name(name)
  #   self.all.find do|x|
  #     x.name 
  # end 

end
