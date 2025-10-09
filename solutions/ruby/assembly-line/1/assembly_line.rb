class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    default = @speed * 221
    case @speed
    when 0
      0
    when (1..4)
      default
    when (5..8)
      (90/100.0 * default).round(1)
    when 9
      (80/100.0 * default).round(1)
    when 10
      (77/100.0 * default).round(1)
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end
end
