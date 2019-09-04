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

   def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

   def customers
    customers = reviews.map do |review|
      review.customer 
    end
    customers.uniq
  end

  def average_star_rating
    scores = reviews.map do |review|
      review.rating
    end
    (scores.sum) / (reviews.size.to_f)
  end

  def longest_review
  reviews.max_by {|review| review.content.length} 
end
    
  def self.find_by_name(name)
    Restaurant.all.find do |restaurant|
      restaurant.name == name
    end
  end


      










end
