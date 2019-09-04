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

  def full_name
    "#{first_name} #{last_name}"
  end

  # def add_review(restaurant, content, rating)
  #   Review.new = 
  # end 

  def num_reviews
    Customer.all.count
  end 
  
  def cust_restaurant 
    Customer.all.select do |cust|
      cust == self
    end.uniq
  end 

  def Customer.find_by_name(name)
    Customer.all.find do |fullname|
      fullname.full_name = name 
    end 
  end 

  def Customer.find_all_by_first_name(name)
    
  end 


end
