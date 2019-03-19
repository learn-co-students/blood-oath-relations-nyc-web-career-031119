class Cult

  attr_accessor :name, :location, :slogan, :followers, :minimum_age
  attr_reader :founded

  @@all = []

  def initialize(name, location, founded)
    @name = name
    @location = location
    @founded = founded
    @followers = []
    @@all << self
    @minimum_age = 5

  end

  def recruit_follower(newguy)
    BloodOath.new(self, newguy).exectute_ceremony
    # @followers << newguy
  end

  # def followers
  #   BloodOath.all.select { |bo| bo.cult == self}
  # end

  def cult_population
    @followers.length
  end

  def average_age
    followers.reduce(0.0){|sum, follower| sum + follower.age} / followers.length
    # followers.sum(0.0) {|follower| follower.age} / followers.length
  end

  def my_followers_mottos
    followers.each {|follower| puts follower.life_motto}
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

  def self.least_popular
    self.all.min_by { |follower| follower.cult_population }
    # self.all.reduce {|smallest, cult| smallest.cult_population < cult.cult_population ? smallest : cult}
  end

  def self.most_common_location
    location_count = Hash.new(0)
    self.all.each{|cult| location_count[cult.location] += 1}
    location_count.max_by { |location, size| size }.first
  end

end
