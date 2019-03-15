class Follower
  attr_accessor :name, :age, :life_motto
  @@all = []
  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @cult_list = []
    @@all << self
  end

  def cults
    @cults_list
  end

  def join_cult(cult)
    @cult_list << cult
  end

  def self.all
    @@all
  end

  def self.of_a_certain_age(age)
    @@all.select do |follower|
      follower.age == age
    end
  end
end
