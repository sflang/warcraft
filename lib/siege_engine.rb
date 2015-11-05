class SiegeEngine < Unit

  def initialize
    super(400, 50)
  end

  def attack!(enemy)
    if (enemy.is_a? SiegeEngine)
      enemy.damage
    end

    if (enemy.is_a? Barracks)
      2.times {enemy.damage}
    end

  end
  
end