class RotationalCipher
  def self.rotate(string, shift = 1)
    alphabet = Array('a'..'z')
    capitlaized_alphabet = Array('A'..'Z')
    shifted_alphabet = alphabet.rotate(shift)
    shifted_capitlaized_alphabet = capitlaized_alphabet.rotate(shift)

    selector = alphabet.join + capitlaized_alphabet.join
    replacements = shifted_alphabet.join + shifted_capitlaized_alphabet.join

    string.tr(selector, replacements)
  end
end
