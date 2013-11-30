class Tile
  attr_accessor :x, :y, :is_empty, :resistance

  def initialize(x=0, y=0)
    @x = x
    @y = y
    @is_empty = true
    @resistance = 0
  end
end
