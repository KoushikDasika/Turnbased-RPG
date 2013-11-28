ActiveRecord::Schema.define(:version => 1) do
  create_table "maps", :force => true do |t|
    t.string :name
  end

  create_table "characters", :force => true do |t|
    t.string :name
    t.integer :level
    t.integer :health
    t.integer :magic_points

    t.integer :attack
    t.integer :defense
    t.integer :special_attack
    t.integer :special_defense
    t.integer :move
    t.integer :evasion
    t.integer :speed
    t.integer :luck
  end

  create_table "tiles", :force => true do |t|
    t.integer :x
    t.integer :y
    t.integer :resistance
    t.string :terrain
    t.integer :map_id
  end

  create_table "abilities", :force => true do |t|
    t.string :name
    t.string :type #magic vs physical
    t.integer :power
    t.integer :duration
    t.integer :cost
    t.integer :range
  end

  create_table "abilities_characters", :force => true do |t|
    t.integer :character_id
    t.integer :ability_id
  end

  create_table "items", :force => true do |t|
    t.string :name
    t.string :type # weapon, potion, armor
    t.string :stat
    t.integer :modifier
    t.string :description
  end

  create_table "characters_items", :force => true do |t|
    t.integer :character_id
    t.integer :item_id
  end
end
