class Customer

    attr_accessor :restaurant, :content, :rating
    @@all = []

    def initialize(restaurant, content, rating)
        @restaurant = restaurant
        @content = content
        @rating = rating 
        @@all << self
    end

    def num_reviews
        Restaurant.select do |rev|
            rev.review = review
        end
    end

    def restaurants
        @@all.map do |review|
            review.restaurant = restaurant
        end

    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
    end

    def self.all_names
        @@all.map do |customer_name|
            customer_name.name = name
    end



end