require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
flatiron = Cult.new('flatiron', 'New York', 2012, 'learnlovecode.')
wework = Cult.new('wework','New York', 2002, 'We work for you!')
david = Follower.new('David',20,'lovecode')
elaina = Follower.new('Elaina', 20, 'enjoylife')

db = BloodOath.new(david, flatiron)
eb = BloodOath.new(elaina, wework)
binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
