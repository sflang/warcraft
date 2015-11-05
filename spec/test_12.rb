require_relative 'spec_helper'

describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

  it "should be a Building" do
    expect(@barracks).to be_an_instance_of(Barracks)
    # But should also be a Unit
    expect(@barracks).to be_a(Building)
  end

  it "has and knows its HP (health points)" do
    expect(@barracks.health_points).to eq(500)
  end

  describe "#damage" do
    it "should reduce the barrack's health_points by half the attack_power specified" do
      @barracks.damage(100)
      expect(@barracks.health_points).to eq(450) # starts at 60
    end
  end

end