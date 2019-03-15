class BloodOath
  attr_accessor :initiation_date

  @@all = []
  
  def initialize(initiation_date)
    @initiation_date = initiation_date
    @@all << self
  end

  def self.all
    @@all
  end
end
