require 'date'
class BloodOath

  @@all = []

  def initialize(cult, follower)
    @cult = cult
    @follower = follower
    @date = DateTime.now
    @@all << self
  end

  def initiation_date
    @date.strftime("%d/%m/%Y")
  end

  def self.all
    @@all
  end

end
