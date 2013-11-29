class Battle
  attr_accessor :first_army, :second_army, :turn_list

  def initialize(first_army, second_army)
    @first_army = Army.new
    @first_army.load_characters(first_army)
    @second_army = Army.new
    @second_army.load_characters(second_army)
    @turn_list = Army.combine_armies(@first_army, @second_army) .sort {|x,y|
      y.stats["speed"] <=> x.stats["speed"]
    }
  end

  def start_battle
  end
end
