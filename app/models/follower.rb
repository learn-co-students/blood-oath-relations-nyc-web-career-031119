class Follower
  attr_reader :name, :age, :life_motto

  @@all = []
  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  def age
    @age
  end

  def join_cult(date, cult)
    BloodOath.new(date, cult, self)
  end

  def cults
    BloodOath.all.select do |oath|
      oath.follower == self
    end
  end

  def self.all
    @@all
  end

  def self.of_a_certain_age(age)
    all.select do |follower|
      follower.age >= age
    end
  end
end
