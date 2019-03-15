class Cult
  attr_reader :name, :founding_year
  attr_accessor :location, :slogan

  @@all = []
  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @@all << self
  end

  def recruit_follower(date, follower)
    BloodOath.new(date, self, follower)
  end

  def cult_population
    BloodOath.all.select do |oath|
      oath.cult == self
    end.length
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    all.select do |cult|
      cult.name == name
    end
  end

  def self.find_by_location(location)
    all.select do |cult|
      cult.location == location
    end
  end

  def self.find_by_founding_year(founding_year)
    all.select do |cult|
      cult.founding_year == founding_year
    end
  end

  def average_age
    BloodOath.all.select do |oath|
        oath.cult == self
    end.map do |oath|
      oath.follower.age
    end.reduce(:+)/cult_population.to_f
  end

  def my_followers_mottos
    BloodOath.all.select do |oath|
        oath.cult == self
    end.map do |oath|
      oath.follower.life_motto
    end
  end

  def self.least_popular
    all.sort_by{|cult| cult.cult_population}[0]
  end

  def self.most_common_location
    all.map do
      |cult| cult.location
    end.each_with_object(Hash.new(0)) {|location,count|count[location] +=1}.sort_by {|location,count| count}[-1][0]
  end
end
