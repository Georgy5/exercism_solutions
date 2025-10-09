class Pangram
  ALPHABET = ('a'..'z').to_a

  def self.pangram?(sentence)
    string = sentence.gsub(/[[:space:][:punct:]]/, '').downcase
    (ALPHABET - string.chars.uniq.sort).empty?
  end
end
