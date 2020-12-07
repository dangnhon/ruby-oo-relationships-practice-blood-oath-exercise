require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

f1 = Follower.new("matt", 23, "live fast eat a**")
f2 = Follower.new("nhon", 24, "save meeeeeee")
f3 = Follower.new("daniel", 25, "cash money")
f4 = Follower.new("vader", 97, "too angry to die")

c1 = Cult.new("taco", "japan", 1800, "atomic toilet crusher")
c2 = Cult.new("poop", "toto", 1934, "worship the porcelain bowl")
c3 = Cult.new("mochi", "toto", 1590, "soft and squishy")
c4 = Cult.new("hello kitty", "toto", 1943, "plushies rise up!")

b1 = BloodOath.new(c1, f1, Time.now)
b2 = BloodOath.new(c1, f4, Time.now)
b3 = BloodOath.new(c2, f2, Time.now)
b4 = BloodOath.new(c3, f3, Time.now)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits