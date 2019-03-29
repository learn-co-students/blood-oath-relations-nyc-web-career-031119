require_relative '../config/environment.rb'
require_relative '../cult.rb'
require_relative '../follower.rb'
require_relative '../bloodoath.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new('BBBBB', "NYC", 11111111, "efgdfhdfghfyuhfgdjgfj")
cult2 = Cult.new('AAAAA', "NYC", 1992, "asdf")
cult3 = Cult.new('AAAAA', "LA", 1992, "asdf")

follower1 = Follower.new('john', 5,  '2345')
follower2 = Follower.new('peter', 26,  '1234')
follower3 = Follower.new('george', 16,  '2345')
follower4 = Follower.new('yev', 46,  '1234')
follower5 = Follower.new('josh', 86,  '2345')
follower6 = Follower.new('sam', 66,  '1234')
follower7 = Follower.new('john a', 46,  '1234')
follower8 = Follower.new('john l', 26,  '1234')

follower1.join_cult(cult1)
follower2.join_cult(cult1)
follower3.join_cult(cult1)
follower4.join_cult(cult1)
follower5.join_cult(cult1)
follower6.join_cult(cult2)
follower7.join_cult(cult2)
follower8.join_cult(cult2)
follower1.join_cult(cult2)
follower2.join_cult(cult2)
follower3.join_cult(cult2)
follower4.join_cult(cult2)

cult1.cult_population
cult2.cult_population

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
