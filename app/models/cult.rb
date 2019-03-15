require 'pry'
class Cult

  attr_reader :name, :location, :founding_year, :slogan
  attr_accessor :followers

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

def recruit_follower(follower,date)
  BloodOath.new(date, follower, self)
end

def cult_population
  @followers.length
end

def self.find_by_name(name)
  Cult.all.find do |cult|
    cult.name == name
  end
end

def self.find_by_founding_year(year)
  Cult.all.select do |cult|
    cult.founding_year == year

  end
end



end
