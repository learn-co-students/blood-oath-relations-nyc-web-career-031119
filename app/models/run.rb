require 'follower.rb'
require 'cult.rb'
require 'bloodoath.rb'


cult1 = Cult.new("cult1", "new york", 2019)
cult2 = Cult.new("cult2", "los angeles", 2019)
cult3 = Cult.new("cult3", "chicago", 2019)

follower1 = Follower.new("john", 20, "yolo")
follower2 = Follower.new("dave", 23, "yolo")
follower3 = Follower.new("ana", 25, "yolo")
follower4 = Follower.new("sam", 19, "yolo")
follower5 = Follower.new("jack", 21, "yolo")
follower6 = Follower.new("vera", 30, "yolo")

cult1.recruit_follower(2019,follower1)
cult2.recruit_follower(2019,follower2)
cult1.recruit_follower(2019,follower3)
cult3.recruit_follower(2019,follower4)

follower3.join_cult(2019,cult2)
follower4.join_cult(2019,cult2)
follower6.join_cult(2019,cult3)
follower2.join_cult(2019,cult3)


# TESTS-----------------------

# cult2.cult_population
# Cult.all
# Cult.find_by_name("cult1")
# Cult.find_by_location("new york")
# Cult.find_by_founding_year(2019)

# follwer1.cults
# Follower.all
# Follower.of_a_certain_age(25)
