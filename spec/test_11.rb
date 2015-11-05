require_relative 'spec_helper'

describe Building do

  before :each do
    @building = Building.new(200)
  end

  it "has and knows its HP (health points)" do
    expect(@building.health_points).to eq(200)
  end

end