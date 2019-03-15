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
    BloodOath.new(cult, self, "2043-12-12")
  end

  def cults
    BloodOath.all.map do |bloodoath|
      if bloodoath.follower == self
        bloodoath.cult
      end
    end.compact
  end

  def self.all
    @@all
  end

  def self.of_a_certain_age(age)
    BloodOath.all.select do |bloodoath|
      bloodoath.follower.age >= age
    end
  end
end
