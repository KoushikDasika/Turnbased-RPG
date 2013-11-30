class Battle
  attr_accessor :first_army, :second_army, :turn_list, :land

  def initialize(first_army, second_army)
    @first_army, @second_army, @turn_list = initialize_armies(first_army, second_army)
    @map = Map.new
  end

  def initialize_armies(first_army, second_army)
    first_army = Army.new
    second_army = Army.new
    first_army.load_characters(first_army)
    second_army.load_characters(second_army)
    turn_list = Army.combine_armies(first_army, second_army).sort {|x,y|
      y.stats["speed"] <=> x.stats["speed"]
    }
    [first_army, second_army, turn_list]
  end

  def start_battle
  end
end
