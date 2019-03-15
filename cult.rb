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
    bloodoaths.length
  end

  def bloodoaths
    BloodOath.all.select do |bloodoath|
      bloodoath.cult == self
    end
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

  def average_age
    bloodoaths.map do |bloodoath|
      bloodoath.follower.age
    end.inject(0) do |total, age|
       total + age
    end
    (total / BloodOath.all.length).round(2)
  end

  def my_followers_mottos
    bloodoaths.each do |bloodoath|
      puts bloodoath.follower.life_motto
    end
    nil
  end

  def self.least_popular
      all_cults_with_followers.inject do |least, current|
        least.cult_population < current.cult_population ? least : current
      end
  end

  def self.all_cults_with_followers
    BloodOath.all.map do |a|
      a.cult
    end.uniq
  end

  def self.all
    @@all
  end
end
