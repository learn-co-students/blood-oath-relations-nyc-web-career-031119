require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

danny = Follower.new("Danny", "27", "I'm not sure why im here")
herman = Follower.new("Herman", "32", "a day at the time")
cari = Follower.new("Cari", "26", "YOLO")

flatiron = Cult.new("flatiron", "manhattan", "2013", "Run while you can")
fullstack = Cult.new("fullstack", "manhattan", "1600", "No pain no gain")
wework = Cult.new("wework", "brooklyn", "2010", "we STILL work")
illuminati = Cult.new("masons", "everywhere", "1776", "Annuit cœptis")

flatiron.recruit_follower(danny,"2019-03-11")
illuminati.recruit_follower(danny,"1856-03-11")
wework.recruit_follower(cari,"1992-04-29")
fullstack.recruit_follower(herman,"1995-12-25")
illuminati.recruit_follower(herman,"1999-12-24")
illuminati.recruit_follower(cari,"2000-01-01" )





binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
