require_relative "../spec_helper"

describe "Character" do
  before(:all) do
    @attributes = {
      name: "Koushik",
      level: 10,
      exp: 0,
      stats: {
        health: 100,
        magic_points: 100,
        attack: 100,
        defense: 200,
        special_attack: 250,
        special_defense: 150,
        move: 10,
        evasion: 100,
        speed: 100,
        luck: 9000
      }
    }
  end

  it "should create character" do
    character = Character.new
    character.should be_true
  end

  it "should instantiate a character with the passed in parameters" do
    koushik = Character.new(@attributes)
    @attributes.each_pair do |key, value|
      koushik.send(key).should == value
    end
  end
end
