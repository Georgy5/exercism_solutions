class Pangram
  def self.pangram?(sentence)
    false
    string = sentence.gsub(/[[:space:][:punct:]]/, '').downcase
    alphabet_ary = ('a'..'z').to_a
    alph_comp_str = alphabet_ary.join()
    string_ary = string.split('')
    string_ary.each do |letter|
      if alphabet_ary.include?(letter)
        alph_comp_str.sub!(letter, '')
      end
    end
    true if alph_comp_str.empty?
  end
end
