require File.expand_path("../shining/spec/spec_helper.rb")

describe "Character" do
  it "should create character" do
    character = Character.new
    byebug
    character.should be_true
  end
end
