class BloodOath

  attr_reader :cult, :follower, :initiation_date

  @@all = []

  def initialize(cult, follower, initiation_date)
    @initiation_date = initiation_date
    @cult = cult
    @follower = follower
    @followers = []
    @@all << self
  end

  def self.all
    @@all
  end
end
