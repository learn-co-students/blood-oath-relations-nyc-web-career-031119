require 'pry'
class Cult
  @@followers = []
  @@all_cult = []
  @@locations = []
attr_accessor :name, :location, :cult_population
attr_reader :founding_year, :slogan

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @@locations << @location
    @founding_year = founding_year
    @slogan = slogan
    @@all_cult << self
  end
  # binding.pry
  #===============================
   def recruit_follower(follower)
     Blood_Oath.new(self, follower)
     # binding.pry
  end
  #
  def cult_population
    Blood_Oath.all.count
  end
#=================================

  def self.all
    @@all_cult
  end

  def self.find_by_name(name)
    self.all.map do |cult|
      if cult.name == name
         cult
      end
    end.compact
  end

  def self.find_by_location(location)
    self.all.map do |cult|
      # binding.pry
      if cult.location == location
        cult
      end
    end.compact
    # binding.pry
  end

  def self.find_by_founding_year(year)
    self.all.map do |cult|
      if cult.founding_year == year
        cult
      end
    end.compact
  end
end
