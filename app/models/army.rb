class Army
  attr_accessor :character_list

  def initialize(army_list)
    @character_list = load_characters(army_list)
  end

  def next_character
    character = @character_list.slice!(0)
    @character_list.push(character)
    character
  end



  private

  def load_characters(army_list)
    []
  end
end
