class Hamming
  def self.compute(string_a, string_b)
    return 0 if string_a == string_b

    raise ArgumentError unless string_a.length == string_b.length

    string_a.chars.zip(string_b.chars).count do |char_a, char_b|
      char_a != char_b
    end
  end
end
