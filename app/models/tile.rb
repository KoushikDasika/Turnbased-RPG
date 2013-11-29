class Tile
  attr_accessor :x, :y, :is_empty, :resistance

  def initialize(x, y)
    @x = x
    @y = y
    @is_empty = false
    @resistance = 0
  end
end
