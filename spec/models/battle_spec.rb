require_relative "../spec_helper"

describe Battle do
  it "should be truthy" do
    battle = FactoryGirl.build(:battle)
    battle.should be_true
  end
end
