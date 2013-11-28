require File.expand_path("../shining/spec/spec_helper.rb")

describe "Map" do
  before(:all) do

  end

  it "should create map" do
    @map = FactoryGirl.build(:map)
    @map.should be_true
  end

  it "should return the current map" do

  end
end
