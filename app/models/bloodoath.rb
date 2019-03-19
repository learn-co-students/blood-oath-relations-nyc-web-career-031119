# require 'date'
class BloodOath
  attr_accessor :cult, :follower, :initiation_date
  @@all = []
  def initialize(follower, cult)
      @cult = cult
      @follower = follower
      @initiation_date = "#{Time.now.year}-#{Time.now.month}-#{Time.now.day}"
      @@all << self
  end

  # def initiation_date
  #   @date = DateTime.now.to_s.chars[0..9].join
  # end

   def self.all
     @@all
   end

end
