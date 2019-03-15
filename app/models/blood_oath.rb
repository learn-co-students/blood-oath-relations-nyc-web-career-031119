require 'date'

class Blood_Oath
  @@all_oaths = []
  attr_reader :date
  def initialize(cult, follower)
    @cult = cult
    @follower = follower
    @date = "#{Time.now.year}-#{Time.now.month}-#{Time.now.day}"
    @@all_oaths << self
  end

  def self.all
    @@all_oaths
  end
end

# march_5 = Blood_Oath.new('5th March 2017')
