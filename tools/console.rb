require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
newcult = Cult.new("newcult","newyork",2000)
anothercult = Cult.new("2nd cult", "california", 2000)
last_cult = Cult.new("last_cult", "california", 2019)
newcult.slogan = "The kool-aid is delicious"
anothercult.slogan = "Blue pill or red?"

new_guy = Follower.new("new guy", 24, "\#yolo")
guy_2 = Follower.new("another 1", 6, "When is playtime?")
guy_3 = Follower.new("1 more", 20, "life is sweet")
newcult.recruit_follower(new_guy)
newcult.recruit_follower(guy_2)
newcult.recruit_follower(guy_3)

new_guy.join_cult(anothercult)
# new_guy.join_cult(last_cult)
# guy_2.join_cult(anothercult)

# bloodoath = BloodOath.new(newcult, new_guy)
young_person = Follower.new("aiden", 4, "mami")


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
