class Map
  attr_accessor :name, :field

  def initialize(first_army, second_army)
    @field = initialize_field
  end

  def initialize_field
    @field = []
    (0..10).map {|i|
      @field[i] = []
      (0..10).map {|j|
        @field << Tile.new(i, j)
      }
    }
  end
end
