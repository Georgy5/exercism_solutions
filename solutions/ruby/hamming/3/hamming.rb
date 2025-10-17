class Hamming
  def self.compute(string_a, string_b)
    return 0 if string_a == string_b

    raise ArgumentError unless string_a.length == string_b.length

    differences = 0
    string_a.chars.zip(string_b.chars).each do |molecule_pair|
      if molecule_pair[0] != molecule_pair[1]
        differences += 1
      end
    end
    differences
  end
end
