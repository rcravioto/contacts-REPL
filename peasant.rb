
class Peasant < Unit

  attr_reader :attack_power, :health_points 
  
  def initialize
    # Need to default the 2 instance variables here
    @health_points = 35
    @attack_power = 0
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
  end

end