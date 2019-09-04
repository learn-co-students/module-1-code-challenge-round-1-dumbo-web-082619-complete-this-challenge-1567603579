class Customer
  attr_reader :first_name, :last_name
   @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end
  def self.all
    @@all
  end
  def self.add_review
    binding.pry
    self.all.review.map do |customer|
      self.add_review == self
    end 
      def num_reviews
        self.all << self
      end
    def self_unique_customer
  @@all = []
  self.customer.reviews.select do |customer|
    self.self_unique_customer << self
end.uniq
end



