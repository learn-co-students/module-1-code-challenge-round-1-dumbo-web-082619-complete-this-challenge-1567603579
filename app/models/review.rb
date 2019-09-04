class Review
    attr_reader :customer, :restaurant, :review
    
    @@all = []

    def initialize
        @customer=customer
        @restaurant=restaurant
        @review = review
        @@all << all
    end

    def self.all
        @@all
    end



end

