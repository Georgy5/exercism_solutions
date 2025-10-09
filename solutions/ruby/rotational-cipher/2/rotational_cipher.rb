class RotationalCipher
  def self.rotate(string, shift = 1)
    alphabet = Array('a'..'z')
    cipher_alphabet = alphabet.rotate(shift)
    a, c = alphabet.join, cipher_alphabet.join
    string.tr("#{a}#{a.upcase}", "#{c}#{c.upcase}")
  end
end
