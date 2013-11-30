class Game
  def initialize
  end

  def start_game
    save_state = get_save_state
    current_battle = load_current_battle(save_state)

    battle = Battle.new
    battle.initialize_armies(current_battle[:good_guys], current_battle[:bad_guys])
    byebug
    puts "yay"
  end

  def load_current_battle(save_state)
    YAML.load_file("db/battles/battle#{save_state[:battle]}.yml")
  end

  def get_save_state
    YAML.load_file("db/save_state.yml")
  end

  def get_current_battle

  end
end
