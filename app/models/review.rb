class Review
  attr_reader :first_name, :last_name, :resturant

  @@all = []
  def initialize(first_name, last_name, resturant)
    @@first_name = first_name
    @@last_name = last_name
    @@resturant = resturant
    @@all << self
  end
 def self.all
    @@all
 end
   def self.
end

