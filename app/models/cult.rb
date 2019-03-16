class Cult
  attr_accessor :name, :location, :founding_year, :slogan

  @@all = []
  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @@all << self

  end

  def recruit_follower(follower)
    BloodOath.new(follower, self)
  end

  # Helper method
  def bloodoaths
    BloodOath.all.select do |bloodoath|
      bloodoath.cult == self
    end
  end

  def cult_population
    self.bloodoaths.length
  end

  # Helper method
  def followers
    self.bloodoaths.map do |bloodoath|
      bloodoath.follower
    end
  end

  def my_follower_mottos
    self.followers.map do |follower|
      follower.life_motto
    end
  end

  def self.all
    @@all
  end

  def average_age
    sum = 0.00
    self.followers.each do |follower|
      sum += follower.age
    end
    sum / self.cult_population
  end

  def self.find_by_name(name)
    @@all.find do |cult|
      cult.name
    end
  end

  def self.find_by_location(location)
    @@all.select do |cult|
      cult.location == location
    end
  end

  def self.find_by_founding_year(year)
    @@all.select do |cult|
      cult.founding_year == year
    end
  end

  def self.least_popular
    @@all.sort_by! do |cult|
      cult.cult_population
    end.first
  end

  def self.most_common_location
    @@all.sort_by! do |cult|
      find_by_location(cult.location).count
    end.last.location
  end

end
