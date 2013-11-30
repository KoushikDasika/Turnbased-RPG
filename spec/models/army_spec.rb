require_relative "../spec_helper"

describe Army do
  before(:all) do
  end

  it "should create an army" do
    army = FactoryGirl.build(:good_guys)
    byebug
    army.should be_true
  end
end
