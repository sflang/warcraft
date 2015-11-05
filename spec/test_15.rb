require_relative 'spec_helper'

# Resources allow you to create units. In our case (for simplicity), these resources will be stored directly within the barracks

describe SiegeEngine do

  before :each do
    @engine = SiegeEngine.new
  end

  it "starts off with 400 health points" do
    expect(@engine.health_points).to eq(400)
  end

  it "starts off with 50 attack power" do
    expect(@engine.attack_power).to eq(50)
  end

  describe "#attack!" do

    it "won't attack if unit is a footman" do
      # Make the barracks believe it only has 1 food item left, even though it starts with 80
      # This is done by overwriting the `food` getter method
      
      enemy_footman  = Footman.new
      
      expect(enemy_footman).to_not receive(:damage)
      @engine.attack!(enemy_footman)
    end

    it "won't attack if unit is a peasant" do
      # Make the barracks believe it only has 1 food item left, even though it starts with 80
      # This is done by overwriting the `food` getter method
      
      enemy_peasant  = Peasant.new
      
      expect(enemy_peasant).to_not receive(:damage)
      @engine.attack!(enemy_peasant)
    end

    it "attacks if unit is a Siegeengine" do
      # Make the barracks believe it only has 1 food item left, even though it starts with 80
      # This is done by overwriting the `food` getter method
      
      enemy_engine  = SiegeEngine.new

      expect(enemy_engine).to receive(:damage)
      
      @engine.attack!(enemy_engine)
    end

    it "attacks twice if unit is a Barracks" do
      # Make the barracks believe it only has 1 food item left, even though it starts with 80
      # This is done by overwriting the `food` getter method
      
      enemy_barracks  = Barracks.new

      2.times {expect(enemy_barracks).to receive(:damage)}
      
      @engine.attack!(enemy_barracks)
    end

  end

  
end
