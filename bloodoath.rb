class BloodOath
  attr_accessor :initiation_date, :cult, :follower

  @@all = []

  def initialize(cult, follower, date)
    @cult = cult
    @follower = follower
    @initiation_date = date
    @@all << self
  end

  def self.all
    @@all
  end
end
