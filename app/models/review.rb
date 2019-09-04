class Review
    attr_reader :restaurant, :content, :rating, :customer
    @@all=[]
    def initialize (restaurant, content, rating, customer)
        @restaurant = restaurant
        @content = content
        @rating = rating
        @customer = customer
        @@all << self
        self.rating.to_i >=1 && self.rating.to_i <= 5
    end

    def self.all
        @@all
    end

end

