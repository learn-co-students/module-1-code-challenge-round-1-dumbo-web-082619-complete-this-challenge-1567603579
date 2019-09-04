class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

def self.all
 return @@all
end

# array of customer and review for resturan
def customers_reviews
  Review.all.select { |review| review.restaurant == self}
end

def customer
  customers_reviews.map {|restaurant| restaurant.customer.first_name }
end


def reviews
  customers_reviews.map{|my| my.review}
end

def average_star_rating
  
end



















end
