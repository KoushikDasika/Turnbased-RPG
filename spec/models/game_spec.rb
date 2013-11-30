require_relative "../spec_helper"

describe Game do
  it "should be truthy" do
    game = FactoryGirl.build(:game)
    game.should be_true
  end
end
