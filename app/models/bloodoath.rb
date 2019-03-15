class BloodOath
  attr_reader :initialization_date, :cult, :follower

  @@all = []
  def initialize(date, cult, follower)
    @initialzation_date = date
    @cult = cult
    @follower = follower
    @@all << self
  end

  def self.all
    @@all
  end

end
