class Follower
  attr_accessor  :name, :age, :life_motto
  @@all = []
  def initialize(name,age,life_motto)
      @name = name
      @age = age
      @life_motto =  life_motto
      @@all << self
  end

   def bloodoaths
    BloodOath.all.select{|bloodoath|bloodoath.follower==self}
   end

   def cults
      bloodoaths.map{|bloodoath|bloodoath.cult}
   end

  def join_cult(cult)
  BloodOath.new(self,cult)
  end

  def self.all
    @@all
  end

  def self.of_a_certain_age(num)
      @@all.select {|f| f.age >= num}
  end

end
