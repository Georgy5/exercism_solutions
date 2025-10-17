defmodule Darts do
  @type position :: {number, number}

  @doc """
  Calculate the score of a single dart hitting a target
  """
  @spec score(position) :: integer
  def score({x, y}) do
    dist = distance({x,y})
    cond do
      dist <= 1 -> 10
      dist <= 5 -> 5
      dist <= 10 -> 1
      dist > 10 -> 0
    end
  end

  def distance({x,y}) do
    # Equation of a circle centered at the origin, i.e. 0,0
    # x² + y² = r²
    # find the distance, r
    (:math.pow(abs(x), 2) + :math.pow(abs(y), 2))
    |> :math.sqrt
  end
end
