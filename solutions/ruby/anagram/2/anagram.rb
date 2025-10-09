class Anagram
  attr_reader :word

  def initialize(word)
    @word = word.downcase
  end

  def match(candidates)
    candidates.select do |candidate|
      downcased_candidate = candidate.downcase
      next if downcased_candidate == @word

      sorted_word == sort_letters(downcased_candidate)
    end
  end

  private

  def sort_letters(word)
    word.chars.sort.join
  end

  def sorted_word
    @sorted_word ||= sort_letters(@word)
  end
end
