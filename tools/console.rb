require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

cult1 = Cult.new("GOT", "Houston", 2010, "Winter is coming!")
cult2 = Cult.new("GOT-SL", "Sugar Land", 2016, "Lanisters always pay the debt.")
cult3 = Cult.new("Star Wars", "New York", 2000, "May the forece be with you.")
cult4 = Cult.new("Star Wars", "Katy", 2001, "R2D2")

shawn = Follower.new("Shawn", 31, "A")
sherry = Follower.new("Sherry", 31, "B")
nathan = Follower.new("Nathan", 29, "C")
kevin = Follower.new("Kevin", 24, "D")

bo1 = BloodOath.new(cult1, shawn, "2010-01-01")
bo2 = BloodOath.new(cult2, shawn, "2016-01-01")
bo3 = BloodOath.new(cult2, sherry, "2016-01-01")
bo4 = BloodOath.new(cult2, nathan, "2018-01-01")
bo5 = BloodOath.new(cult3, kevin)
 
cult3.minimum_age = 33


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
