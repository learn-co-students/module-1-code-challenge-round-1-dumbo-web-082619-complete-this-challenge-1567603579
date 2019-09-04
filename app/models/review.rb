class Review
    attr_reader :customer, :restaurant
    @@all = []

    def initialize(customer, restaurant, review_content, start_rating)
        @customer = customer
        @restaurant = restaurant
        @review_content = review_content
        @start_rating = start_rating
        @@all << self
    end
  
    def self.all
        @@all
    end

end

