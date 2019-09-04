class Review

    attr_reader :customer, :restaurant
    @@all = []

    def initialize(customer, restaurant)
        @customer = customer
        @restaurant = restaurant
        @@all << self
    end

    def self.all
        @@all
    end

    def rating
        Customer.select do |star|
            star.rating = rating
        end
    end

    def content
        Restaurant.select do |content_review|
            content_review.reviews = reviews
        end
    end

end