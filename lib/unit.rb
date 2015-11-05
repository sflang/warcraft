class Unit
  attr_reader :health_points, :attack_power

  def initialize (health_points, attack_power)

    @health_points = health_points
    @attack_power  = attack_power
  end

  def damage (points)

    @health_points -= points
  end

  def attack! (enemy)
    unless dead?
      enemy.damage(3) unless enemy.dead?
    end
  end

  def dead? 
    health_points <= 0
  end

end