class Tile
  attr_accessor :x, :y, :is_empty

  def initialize(x, y)
    @x = x
    @y = y
    @is_empty = false
  end
end
