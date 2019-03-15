class Follower

  attr_accessor :name, :life_motto
  attr_reader :age

  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  def cults
    Cult.all.select do |cult|
      cult.followers.include?(self)
    end
  end

  def join_cult(new_cult)
    new_cult.followers << self
  end

  def self.all
    @@all
  end

  def self.of_a_certain_age(num)
    self.all.select do |follower|
      follower.age >= num
    end
  end
  
end
