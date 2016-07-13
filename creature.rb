#Parent class of all creature types. Will eventually have names

class Creature
  attr_reader :char, :x, :y, :floor

  def initialize(char, x, y, floor, *args)
    @char = char
    @x = x
    @y = y
    @floor = floor

    floor.newThing(self)
  end
end