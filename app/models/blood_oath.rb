class BloodOath
  attr_accessor :initiation_date, :cult, :follower

  @@all = []

  def initialize(follower, cult)
    @cult = cult
    @follower = follower
    @initiation_date = "#{Time.now.year}-#{Time.now.month}-#{Time.now.day}"
    @@all << self
  end

  def self.all
    @@all
  end

  def self.first_oath
    @@all.sort_by! do |oath|
      oath.initiation_date
    end.last
  end
end
