class Map
  attr_accessor :name

  def generate_map
    @map = self.tiles.sort! {|a,b| a.x * 10 + a.y <=> b.x * 10 + b.y}
  end

  def print_field
    puts @field.to_s
  end
end
