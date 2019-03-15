require 'pry'
class Follower
  # binding.pry
  attr_reader :name, :age, :slogan, :cults
  @@all_followers = []

  def initialize(name, age, slogan)
    @name = name
    @age = age
    @slogan = slogan
    @@all_followers << self
  end

  def self.all
    @@all_followers
  end

  def join_cult(cult)
    Blood_Oath.new(cult, self)
  end

  def self.of_a_certain_age(y_o)
    self.all.map do |person|
      if person.age >= y_o
         person
      end
    end.compact
  end

end
# rank = Follower.new('Bob', 44)
# jake = Follower.new('Fup', 16)
# frank = Follower.new('Frank', 2)
# dann = Follower.new('Drank', 20)
