class Customer
  attr_reader :first_name, :last_name
  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    return @@all
   end
  
   def add_review(resturant, content, rating)
    Review.new(self, resturant,rating,content)
    end
# returs array of reviews
    def reviews
      Review.all.select { |review| review.customer == self}
    end

    def num_reviews
      reviews.size
    end

    def restaurant
      reviews.map do |my|
        my.restaurant.name
      end
    end 




  def full_name
    "#{first_name} #{last_name}"
  end



  
end
