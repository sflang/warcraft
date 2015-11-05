class Building < Unit
  attr_reader :health_points

  def initialize(health_points)
    @health_points = health_points

    #super (health_points, 0)
  end

end