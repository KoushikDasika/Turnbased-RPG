class Character
  attr_accessor :name,:level,:health,:magic_points,
    :attack,:defense,:special_attack,
    :special_defense,:move,:evasion,
    :speed,:luck

  def initialize(opts)
    opts.each_pair {|key, value| instance_variable_set("@#{key}", value)}
  end
end
