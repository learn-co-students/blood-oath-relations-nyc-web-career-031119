require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

xavier = Follower.new("Xavier", 25, "Let's play Smash Bros.")
tom = Follower.new("Tom", 34, "Life is but a dream.")
joe = Follower.new("Joe", 25, "John Joseph Jingle Heimer Schmit")
sarah = Follower.new("Sarah", 30, "I like life.")
#
children_of_god = Cult.new("Children of God", "New York", 2019, "Drink the Kool-Aid")
# # children_of_god.recruit_follower(xavier)
# # children_of_god.recruit_follower(tom)
# # children_of_god.recruit_follower(joe)
# #
# best_cult = Cult.new("Best Cult", "Chicago", 2017, "Pizzzzza")
# # best_cult.recruit_follower("Bob")
# # best_cult.recruit_follower("Tom")
# # best_cult.recruit_follower("Robert")
# #
# worst_cult = Cult.new("Worst Cult", "New York", 1980, "This cult sucks.")
# # worst_cult.recruit_follower("Xavier")
# # worst_cult.recruit_follower("Tom")
# # worst_cult.recruit_follower("Joe")
# #
# ok_cult = Cult.new("Ok Cult", "New York", 2017, "This cult is ok.")
# # ok_cult.recruit_follower("Sarah")
# # ok_cult.recruit_follower("Lisa")

xavier.join_cult(children_of_god, 01-01-2018)
tom.join_cult(children_of_god, 06-01-1998)
joe.join_cult(children_of_god, 02-18-2001)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
