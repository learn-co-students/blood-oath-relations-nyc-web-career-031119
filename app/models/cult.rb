class Cult
  attr_accessor :name, :location, :founding_year, :slogan, :follower_list, :blood_oath_list

  @@all = []
  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @follower_list = []
    @blood_oath_list = []
    @@all << self

  end

  def recruit_follower(follower, date)
    @follower_list << follower
    new_oath = BloodOath.new(date, follower, self)
    @blood_oath_list << new_oath
    @follower_list << follower
    follower.cult_list << self
  end

  def cult_population
    @follower_list.length
  end

  def self.all
    @@all
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

end
