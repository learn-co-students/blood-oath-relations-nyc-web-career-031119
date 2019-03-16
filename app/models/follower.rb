class Follower
  attr_accessor :name, :age, :life_motto

  @@all = []
  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  def bloodoaths
    BloodOath.all.select do |bloodoath|
      bloodoath.follower == self
    end
  end

  def cults
    self.bloodoaths.map do |bloodoath|
      bloodoath.cult
    end
  end

  def join_cult(cult)
    BloodOath.new(self, cult)
  end

  def self.all
    @@all
  end

  def my_cults_slogans
    self.bloodoaths.map do |bloodoath|
      bloodoath.cult.slogan
    end
  end

  def self.of_a_certain_age(age)
    @@all.select do |follower|
      follower.age == age
    end
  end

  def self.sorted_by_oath_count
    @@all.sort_by! do |follower|
      follower.bloodoaths.count
    end
  end

  def self.most_active
    sorted_by_oath_count.last
  end

  def self.top_ten
    sorted_by_oath_count.slice(0..9).reverse
  end
end
