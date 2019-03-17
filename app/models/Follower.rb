
class Follower
attr_accessor :cults
attr_reader :name, :age, :life_motto

  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @cults = []
    @@all << self
  end

  def join_cult(cult, initiation_date)
    BloodOath.new(cult, self, initiation_date)
    self.cults << cult
  end

  def self.all
    @@all
  end

  def self.of_a_certain_age(age)
    Follower.all.select do |follower|
      follower.age >= age
    end
  end

  def my_cults_slogans
    BloodOath.all.map do |oath|
      oath.follower == self
      oath.cult.slogan
    end.uniq.join(", ")
  end

  # def self.most_active
  #   Follower.all.sort_by do |follower|
  #     follower.cults.length
  #   end
  # end

end
