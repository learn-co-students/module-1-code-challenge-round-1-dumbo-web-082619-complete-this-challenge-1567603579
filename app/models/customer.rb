class Customer
  attr_reader :first_name, :last_name
  @@all = []
    def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
     
    @@all << self
    end
    
    def self.all
    @@all
    end

    def add_review(restaurant,content,rating)
      Review.new(self, restaurant)
    end

    def num_reviews
      total = 0
      Review.all.select do |review|
        review.customer == self
        total += review.customer
      end
    end
    




  def full_name
    "#{first_name} #{last_name}"
  end
end
