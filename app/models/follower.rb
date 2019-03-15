require 'pry'
class Follower
  attr_reader :name, :age, :life_motto
  attr_accessor :cult_list

   @@all = []

  def initialize(name, age,  life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  def self.all
    @@all
  end

  def cults
    cult_list = []
    BloodOath.all.each do |oath|
        if oath.follower == self
          cult_list << oath.cult
        end
    end
    cult_list
  end

  def join_cult(cult, date)
    BloodOath.new(date, self, cult)
  end

def self.of_a_certain_age(num)
  @@all.select do |person|
    person.age.to_i >= num
  end
end

end
