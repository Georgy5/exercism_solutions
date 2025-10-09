class Triplet
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def sum
    @a + @b + @c
  end

  def product
    @a * @b * @c
  end

  def pythagorean?
    @a**2 + @b**2 == @c**2
  end

  def self.where(min_factor: 1, max_factor:, sum: nil)
    triplets = []
    min_factor.upto(max_factor) do |a|
      a.succ.upto(max_factor) do |b|
        b.succ.upto(max_factor) do |c|
          triplet = Triplet.new(a, b, c)
          if (triplet.pythagorean?)
            unless sum
              triplets << triplet
            else
              triplets << triplet if sum == triplet.sum
            end
          end
        end
      end
    end
    triplets
  end
end
