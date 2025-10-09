class Pangram
  ALPHABET = ('a'..'z').to_a

  def self.pangram?(sentence)
    (ALPHABET - sentence.downcase.chars.uniq.sort).empty?
  end
end
