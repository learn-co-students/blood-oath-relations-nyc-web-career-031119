require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
bundy_bunch = Cult.new('bundy_bunch', 'California', 1989, "Serial Start-Up")
ronians = Cult.new('ronians', 'Jeresy', 2019, "Most Exclusive Cult Ever!")
theoians = Cult.new('theoians', 'California', 1994, "Cult of one")
wellertonians = Cult.new('Wellertonians', 'New Mexico', 1994, "Dalé")
Arnastyians = Cult.new('Arnastyians', 'New Mexico', 1994, "505 Pride")
Rylandians = Cult.new('Rylandians', 'New Mexico', 1994, "Aye bay bay")


john_doe = Follower.new('john_doe', 50, "Lost")
mary_sue = Follower.new('mary_sue', 8, "Former cult leader")
martha_may = Follower.new('martha_may', 23, "Scientologist")

bundy_bunch.recruit_follower(martha_may, "1994-05-28")
bundy_bunch.recruit_follower(mary_sue, "1994-05-28")
bundy_bunch.recruit_follower(john_doe, "1994-05-28")
theoians.recruit_follower(martha_may, "1994-05-28")
theoians.recruit_follower(john_doe, "1994-05-28")
ronians.recruit_follower(john_doe, "1994-05-28")

john_doe.join_cult(theoians, "1994-05-28")
john_doe.join_cult(wellertonians, "1994-05-28")

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
