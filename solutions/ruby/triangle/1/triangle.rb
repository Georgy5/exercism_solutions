=begin
Write your code for the 'Triangle' exercise in this file. Make the tests in
`triangle_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/triangle` directory.
=end
class Triangle
  def initialize(sides = [0, 0, 0])
    @a, @b, @c = sides
  end

  def valid?
    @a + @b >= @c &&
    @b + @c >= @a &&
    @a + @c >= @b
  end

  def equilateral?
    return false if @a and @b and @c == 0

    @a == @b && @b == @c
  end

  def isosceles?
    return false unless valid?

    @a == @b || @b == @c || @a == @c
  end

  def scalene?
    return false unless valid?

    true unless equilateral? or isosceles?
  end
end
