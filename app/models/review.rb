require 'pry'

class Review
    attr_reader :restaurant, :customer, :rating, :content

    @@all = []

    def initialize(customer, restaurant, rating, content)
        if rating > 5 || rating < 1
            @customer = customer
            @restaurant = restaurant
            @rating = "Please give a proper rating between 1-5."
            @content = content
        else
            @customer = customer
            @restaurant = restaurant
            @rating = rating
            @content = content
            @@all << self
        end
    end

    def self.all
        @@all
    end
  
end

