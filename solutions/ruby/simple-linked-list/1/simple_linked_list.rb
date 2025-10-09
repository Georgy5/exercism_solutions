class Element
  attr_accessor :next
  attr_reader :datum

  def initialize(datum)
    @datum = datum
    @next = nil
  end
end

class SimpleLinkedList
  def initialize(array = [])
    @list = array.map { |e| Element.new(e) }
  end

  def push(element)
    @list << element
    self
  end

  def pop
    @list.pop
  end

  def reverse!
    @list.reverse!
    self
  end

  def to_a
    @list.map(&:datum).reverse
  end
end
