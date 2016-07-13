require_relative 'grid'
require_relative 'creature'

hack = Floor.new(5,5)
puts hack

salamander = Creature.new('@', 2, 3, hack)
puts hack