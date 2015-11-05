# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit
  
  def initialize
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
    super(60, 10)
  end

  def attack!(enemy)
    if enemy.class.is_a? Barracks
      enemy.damage(5)
    else
      enemy.damage(10)
    end
  end

  # def damage(points)
  #   @health_points -= points
  # end


end
