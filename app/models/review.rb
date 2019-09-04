class Review
    attr_reader :restaurant, :customer, :raiting, :content
    @@all = []
    def initialize(restaurant, customer, rainting, content)
        @restaurant = restaurant
        @customer = customer
        @rainting = rainting
        @content = content
        @@all << self
    end

    def self.all
    @@all
    end
  
end

