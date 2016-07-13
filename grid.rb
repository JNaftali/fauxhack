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

    @grid = Array.new(area)
    
    # Each floor starts empty but can contain objects
    # Only put things in there that have attributes
    # named 'x' and 'y'
    @objects = []
  end

  private

  def to_s
    str = ''
    area.times do |i|
      str << "\n" if i % width == 0
      str << ( @grid[i] || "." )
    end
    str
  end

end

hack = Floor.new(5,5)
puts hack