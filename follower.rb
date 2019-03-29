class Follower
  attr_accessor :name, :age, :life_motto
  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  def join_cult(cult)
    date = Time.now.strftime '%Y-%m-%d'
    BloodOath.new(cult, self, date)
  end

  def cults
    bloodoaths.maps do |bloodoath|
      bloodoath.cult
    end
  end

  def self.all
    @@all
  end

  def self.of_a_certain_age(age)
    BloodOath.all.select do |bloodoath|
      bloodoath.follower.age >= age
    end
  end

  def bloodoaths
    BloodOath.all.select do |bloodoath|
      bloodoath.follower == self
    end
  end
end
