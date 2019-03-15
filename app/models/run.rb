require 'follower.rb'
require 'cult.rb'
require 'bloodoath.rb'


cult1 = Cult.new("cult1", "new york", 2019, 'live fast, die young')
cult2 = Cult.new("cult2", "los angeles", 2019, 'learn love code')
cult3 = Cult.new("cult3", "chicago", 2019, 'michael jordan forever')
cult4 = Cult.new("cult4", "new york", 2019, 'yeet')
cult5 = Cult.new("cult5", "chicago", 2019, 'new york sucks')
cult6 = Cult.new("cult6", "chicago", 2019, 'chicago forever')

follower1 = Follower.new("john", 20, "yolo")
follower2 = Follower.new("dave", 23, "yolo")
follower3 = Follower.new("ana", 25, "yolo")
follower4 = Follower.new("sam", 19, "yolo")
follower5 = Follower.new("jack", 21, "yolo")
follower6 = Follower.new("vera", 30, "yolo")

cult1.recruit_follower("2019-01-01",follower1)
cult2.recruit_follower("2019-03-11",follower2)
cult1.recruit_follower("2019-02-10",follower3)
cult3.recruit_follower("2019-01-21",follower4)

follower3.join_cult("2019-01-05",cult2)
follower4.join_cult("2019-03-14",cult2)
follower6.join_cult("2019-02-28",cult3)
follower2.join_cult("2019-03-02",cult3)


# TESTS-----------------------

# cult2.cult_population
# Cult.all
# Cult.find_by_name("cult1")
# Cult.find_by_location("new york")
# Cult.find_by_founding_year(2019)
# cult1.average_age
# cult1.my_followers_mottos
# Cult.least_popular
# Cult.most_common_location

# follwer1.cults
# Follower.all
# Follower.of_a_certain_age(25)
