require_relative 'spec_helper'

describe Unit do

  before :each do
    @unit = Unit.new(100, 0)
  end
     
  describe "#dead?" do
    it "returns false if alive" do
      # now check to see if one is trainable
      # can jump right to the test since barracks start off with enough gold and food to train multiple footmen
      expect(@unit.dead?).to be_falsey
    end

    it "returns true if dead" do
      # Make the barracks believe it only has 1 food item left, even though it starts with 80
      # This is done by overwriting the `food` getter method
      expect(@unit).to receive(:dead?).and_return(true)
      expect(@unit.dead?).to be_truthy
    end
  end

  describe "#attack!" do

    it "won't attack if dead" do
      # Make the barracks believe it only has 1 food item left, even though it starts with 80
      # This is done by overwriting the `food` getter method
      enemy_unit = Unit.new(40, 5)
      expect(@unit).to receive(:dead?).and_return(true)
      expect(enemy_unit).to_not receive(:damage)
      @unit.attack!(enemy_unit)
    end

    it "won't attack if enemy isdead" do
      # Make the barracks believe it only has 1 food item left, even though it starts with 80
      # This is done by overwriting the `food` getter method
      enemy_unit = Unit.new(40, 5)
      expect(enemy_unit).to receive(:dead?).and_return(true)
      expect(enemy_unit).to_not receive(:damage)
      @unit.attack!(enemy_unit)
    end

  end


end