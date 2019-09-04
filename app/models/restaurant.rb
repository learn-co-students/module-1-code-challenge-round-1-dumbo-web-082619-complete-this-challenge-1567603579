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

  def review_arr
    Review.all.select do |instance|
      instance.restaurant == self
    end
  end

  def customers
    review_arr.map do |instance|
      instance.customer
    end.uniq
  end 

  def reviews
    review_arr.map do |instance|
      instance.content
      #returns array of strings
    end
  end

  def average_star_rating
    total = 0
    review_arr.each do |instance|
      total += instance.rating
    end
    total.to_f/review_arr.size
  end

  
end
