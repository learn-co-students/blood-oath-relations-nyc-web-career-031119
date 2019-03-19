require 'date'
class BloodOath

  attr_accessor :cult, :follower
  @@all = []

  def initialize(cult, follower)
    @cult = cult
    @follower = follower
    @date = DateTime.now
    @@all << self
  end

  def exectute_ceremony
    if follower.age < cult.minimum_age
      puts "Sorry #{follower.name}, you are too young to join this cult"
    else
      cult.followers << follower
      follower.cults << cult
    end

  end

  def initiation_date
    @date.strftime("%d/%m/%Y")
  end

  def self.all
    @@all
  end

  def self.first_oath
    self.all.first.follower
  end

end
