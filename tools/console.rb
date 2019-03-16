require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

ali = Follower.new("Ali", 25, "Poodles 4 Ever")
chris = Follower.new("Chris", 25, "Y0L0")
john = Follower.new("John", 27, "Life is good.")
sarah = Follower.new("Sarah", 29, "I am the best.")
lisa = Follower.new("Lisa", 23, "I'm a cult enthusiast.")

flatiron = Cult.new("Flatiron", "Manhattan", 2012, "Learn Love Code")
hackreactor = Cult.new("Hack Reactor", "San Francisco", 2013, "We love code!")
gracehopper = Cult.new("Grace Hopper", "Manhattan", 2015, "They'rrrrre Great!")

alibo = BloodOath.new(ali, flatiron)
chrisbo = BloodOath.new(chris, flatiron)
johnbo = BloodOath.new(john, flatiron)
johnbo = BloodOath.new(john, hackreactor)
sarahbo_flatiron = BloodOath.new(sarah, flatiron)
sarahbo_hackreactor = BloodOath.new(sarah, hackreactor)
lisabo_flatiron = BloodOath.new(lisa, flatiron)
lisabo_hackreactor = BloodOath.new(lisa, hackreactor)
lisabo_gh = BloodOath.new(lisa, gracehopper)
binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
