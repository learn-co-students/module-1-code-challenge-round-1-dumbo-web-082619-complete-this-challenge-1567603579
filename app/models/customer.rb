class Customer
attr_accessor :first_name, :last_name
@@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self 
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, integer_rating)
    Review.new(restaurant, content, integer_rating)
  end

  def self.all
    return @@all
  end

  def all_names
    self.all.each do |customer|
      customer.full_name
    end
  end

end
