class AssemblyLine
  RATE = 221
  
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    case @speed
    when 0
      0
    when (1..4)
      production_rate(1)
    when (5..8)
      production_rate(0.9)
    when 9
      production_rate(0.8)
    when 10
      production_rate(0.77)
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end

  private

    def production_rate(success_rate)
      success_rate * @speed * RATE
    end
end
