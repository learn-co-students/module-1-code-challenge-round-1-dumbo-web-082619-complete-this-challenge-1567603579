class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def helper
    Review.all.select{
      |each_review|
      each_review.restaurant == self
    }
  end

  def customers
    helper.map{
      |review|
      review.customer
    }
  end

  def reviews
    # helper.find{
    #   |review|
    #   review.review_content
    # }
    Review.all.map{
      |review|
      if review.restaurant == self
        review.review_content
      end
    }
  end

  # def average_star_rating

  # end

  # def longest_review

  # end

  

end
