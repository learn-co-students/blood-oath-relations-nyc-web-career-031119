class Cult

  attr_accessor :name, :location, :slogan, :followers
  attr_reader :founded

  @@all = []

  def initialize(name, location, founded)
    @name = name
    @location = location
    @founded = founded
    @followers = []
    @@all << self

  end

  def recruit_follower(newguy)
    @followers << newguy
  end

  def cult_population
    @followers.length
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |cult|
      cult.name == name
    end
  end

  def self.find_by_location(location)
    self.all.select do |cult|
      cult.location == location
    end
  end

  def self.find_by_founding_year(year)
    self.all.select do |cult|
      cult.founded == year
    end
  end

end
