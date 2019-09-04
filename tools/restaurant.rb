class Restaurant

    attr_reader :customers, :reviews
    @@all = []

    def initialize(customers, reviews)
        @customers = customers
        @reviews = reviews
        @@all << self
    end

    def self.all
        @@all
    end

    def average_star_rating
        Customer.select do |score|
            score.rating = rating
        end

    end

    def longest_review
        Customer.select do |score|
            score.restaurant = restaurant
        end
    end

    def self.find_by_name(name)
        @@all.select do |restaurant_name|
            restaurant_name.customers = customers
    end

end