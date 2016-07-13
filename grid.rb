class Floor
  attr_reader :height, :width, :objects

  private

  def area
    width * height
  end

  public

  def initialize(height = 5, width = 5)
    # takes height and width (both ints)
    # will default to 5x5
    @height = height
    @width = width
    
    # Each floor starts empty but can contain objects
    # Only put things in there that have attributes
    # named 'x' and 'y'
    @objects = []
  end

  def newThing(thing)
    @objects << thing
  end

  private

  #The following function is responsible for drawing the grid, nothing else
  def to_s
    grid = Array.new(area)
    @objects.each do |thing|
      coord = thing.x + thing.y * width
      grid[coord] = thing.char
    end

    str = '|' + '-'*width
    area.times do |i|
      str << "|\n|" if i % width == 0
      str << ( grid[i] || " " )
    end
    str << "|\n|" + "-"*width + "|\n"
  end

end