require 'pry'
class Restaurant
attr_accessor :name
@@all = []

  def initialize(name)
    @name = name
    @@all << self 
  end

  def self.all
    return @@all
  end

  def reviews
    Review.all.select do |x|
      #binding.pry
      x.restaurant == self
    end
  end 

end
