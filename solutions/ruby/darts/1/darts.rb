class Darts
  def initialize(x, y)
    @x = x
    @y = y
  end

  def score
    dist = distance(@x, @y)

    return 10 if dist <= 1
    return 5 if dist <= 5
    return 1 if dist <= 10
    return 0 if dist > 10
  end
  
  private

    def distance(x, y)
      # Equation of a circle centered at the origin, i.e. 0,0
      # x² + y² = r²
      # find the distance, r
      Math.sqrt(x * x + y * y)
    end
end
