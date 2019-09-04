class Review

    attr_reader :restaurant, :customer, :rating, :content
    @@all = []

    def initialize(restaurant, customer, rating, content)
        @restaurant = restaurant
        @customer = customer

        # Does not allow user to enter a rating value less than 1 or greater than 5 and lets user know with a message (and without exiting pry).
        if rating > 5 || rating < 1
            raise "Sorry, please create with a rating from 1 to 5. Goodbye!"
        else
            @rating = rating
        end
        @content = content
        @@all << self
    end

    def self.all
        @@all
    end

end
