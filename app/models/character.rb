class Character
  attr_accessor :name,:level, :max_health,
    :health,:magic_points,
    :attack,:defense,:special_attack,
    :special_defense,:move,:evasion,
    :speed,:luck, :x, :y

  def initialize(opts={})
    opts.each_pair {|key, value| send("#{key}=", value)}
  end

  def decrease_health(amount)
    @health = [@health - amount, 0].max
  end

  def increase_health(amount)
    @health = [@max_health, @health + amount].min
  end

  def move_to_position(x, y)
    @x = x
    @y = y
  end

  def do_attack
    @attack
  end
end
