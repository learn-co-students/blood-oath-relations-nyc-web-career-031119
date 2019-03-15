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

  def my_cults_slogans
    cults.map{|cult| cult.slogan}
  end

  def self.most_active
    all.sort_by{|follower| follower.cults.length}[-1]
  end

  def self.top_ten
    all.sort_by{|follower| follower.cults.length}.last(10)
  end
end
