require 'pry'
class Cult
  attr_reader :name, :location, :founding_year, :slogan


@@all = []

def initialize(name, location, founding_year, slogan)
  @name = name
  @location = location
  @founding_year = founding_year
  @slogan = slogan
  @@all << self
  end


def self.all
  @@all
end

def recruit_follower(follower, initiation_date)
BloodOath.new(self, follower, initiation_date)
follower.cults << self
end

def cult_population
BloodOath.all.select do |oath|
  oath.cult == self
end.length
end

def self.find_by_name(name)
  Cult.all.select do |cult|
    cult.name == name
  end
end

def self.find_by_location(location)
Cult.all.select do |cult|
  cult.location == location
end
end


def self.find_by_founding_year(year)
  Cult.all.select do |cult|
    cult.founding_year == year
  end
end

def average_age
  array_length = 0
  BloodOath.all.map do |oath|
    oath.cult == self
    array_length += 1
    oath.follower.age
  end.sum.fdiv(array_length).round
end

def my_followers_mottos
  BloodOath.all.map do |oath|
    oath.cult == self
    puts oath.follower.life_motto
  end
end

def self.least_popular
  BloodOath.all.sort_by {|oath| oath.cult.cult_population}[0]
end

#NEED TO REVISIT METHOD BELOW
def self.most_common_location
Cult.all.sort_by do |cult|
cult.location
end.map { |cult| cult.location }.max
end

end
