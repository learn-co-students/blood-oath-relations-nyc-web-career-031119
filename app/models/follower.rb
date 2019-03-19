class Follower

  attr_accessor :name, :life_motto
  attr_reader :age

  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  def cults
    # BloadOath.
    Cult.all.select do |cult|
      cult.followers.include?(self)
    end
  end

  def cult_count
    cults.length
  end

  def join_cult(new_cult)
    BloodOath.new(new_cult, self).exectute_ceremony
    # new_cult.followers << self
  end

  def my_cults_slogans
    cults.each {|cult| puts cult.slogan}
    nil
  end

  def fellow_cult_members
    friends = self.cults.map {|cult| cult.followers}.flatten.uniq
    friends.delete(self)
    friends
  end

  def self.all
    @@all
  end

  def self.of_a_certain_age(num)
    self.all.select do |follower|
      follower.age >= num
    end
  end

  def self.most_active
    self.all.reduce {|active, follower| active.cult_count > follower.cult_count ? active : follower}
  end

  def self.top_ten
    self.all.max(10){|a,b| a.cult_count <=> b.cult_count}
  end

end
