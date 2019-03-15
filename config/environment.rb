require 'bundler/setup'
Bundler.require
require_rel '../app'


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
binding.pry

# cult1.recruit_follower(follower1)
# cult2.recruit_follower(follower2)
# cult1.recruit_follower(follower3)
# cult3.recruit_follower(follower4)
#
# follower3.join_cult(cult2)
# follower4.join_cult(cult2)
# follower6.join_cult(cult3)
# follower2.join_cult(cult3)
