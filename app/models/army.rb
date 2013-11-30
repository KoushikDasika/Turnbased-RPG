class Army
  attr_accessor :character_list

  def initialize
    @character_list = []
  end

  def next_character
    character = @character_list.slice!(0)
    @character_list.push(character)
    character
  end

  def self.combine_armies(first_army, second_army)
    first_army.character_list + second_army.character_list
  end

  def load_characters(army_list)
    army_list.each do |member|
      filepath = "db/characters/#{member}.yml"
      attributes = YAML.load_file(filepath)
      @character_list << Character.new(attributes)
    end
  end
end
