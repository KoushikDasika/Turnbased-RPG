class Map
  attr_accessor :name, :layout

  def initialize
    @layout = initialize_field
  end

  def initialize_field
    @layout = []
    (0..10).map {|i|
      @layout[i] = []
      (0..10).map {|j|
        @layout << Tile.new(i, j)
      }
    }
  end
end
