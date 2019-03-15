class Cult
  attr_accessor :name, :location, :founding_year, :slogan
  @@all = []

  def initialize(name, location, year, slogan)
    @name = name
    @location = location
    @founding_year = year
    @slogan = slogan
    @@all << self
  end

  def recruit_follower(follower)
    BloodOath.new(self, follower, "2043-12-12")
  end

  def cult_population
    BloodOath.all.select do |bloodoath|
      bloodoath.cult == self
    end.length
  end

  def self.find_by_name(name)
    BloodOath.all.each do |bloodoath|
      if bloodoath.cult.name = name
        return bloodoath.cult
      end
    end
  end

  def self.find_by_location(location)
    BloodOath.all.find do |bloodoath|
      if bloodoath.cult.location = location
        return bloodoath.cult
      end
    end
  end

  def self.find_by_founding_year(year)
    BloodOath.all.find do |bloodoath|
      if bloodoath.cult.founding_year = year
        return bloodoath.cult
      end
    end
  end

  def self.all
    @@all
  end
end
