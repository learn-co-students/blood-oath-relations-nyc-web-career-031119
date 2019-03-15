class Follower
  attr_accessor :name, :age, :life_motto, :blood_oath_list, :cult_list

  @@all = []
  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @cult_list = []
    @blood_oath_list = []
    @@all << self
  end

  def cults
    @cult_list
  end

  def blood_oaths
    @blood_oath_list
  end

  def join_cult(cult, date)
    new_oath = BloodOath.new(date, cult, self)
    @blood_oath_list << new_oath
    @cult_list << cult
    cult.follower_list << self
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
