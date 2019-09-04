class Review
attr_accessor :content, :restaurant, :integer_rating
@@all = []

    def initialize(restaurant, content, integer_rating)
        @restaurant = restaurant
        @content = content
        @integer_rating = integer_rating
        @@all << self     
    end

    def self.all
        return @@all
    end
  
end

