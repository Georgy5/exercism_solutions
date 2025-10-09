class Hamming
  def self.compute(string_a, string_b)
    return 0 if string_a == string_b

    raise ArgumentError unless string_a.length == string_b.length

    differences = 0
    string_a.chars.each_with_index do |molecule, idx|
      if molecule != string_b.chars[idx]
        differences += 1
      end
    end
    differences
  end
end
