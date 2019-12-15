require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


z1 = Zoo.new("LZ","London")
z2 = Zoo.new("Mada","Africa")

dog = Animal.new("Dog","Snopy",22,z1)
goat = Animal.new("Goat","bBoz",18,z1)
pit = Animal.new("Snake","Pitty",6,z1)
lio = Animal.new("Lion","Simba",62,z2)
giri = Animal.new("Giraph","Giff",92,z2)

binding.pry
puts "done"
