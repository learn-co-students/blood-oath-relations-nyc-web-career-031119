class Cult
    attr_accessor  :name, :location, :founding_year, :slogan, :followers
    @@all = []
    def initialize(name,location,founding_year,slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan =  slogan
        @@all << self
    end

    def recruit_follower(follower)
      BloodOath.new(follower,self)
    end

    def bloodoaths
      BloodOath.all.select{|bloodoath|bloodoath.cult==self}
    end

    def cult_population
      bloodoaths.length
    end

    def followers
        bloodoaths.map{|bloodoath|bloodoath.follower}
    end

    def self.all
        @@all
    end

    def self.find_by_name(given_name)
        self.all.find { |name| name == given_name }
    end


    def self.find_by_location(given_location)
        @@all.find { |location| location == given_location }
    end

    def self.find_by_founding_year

    end


end
