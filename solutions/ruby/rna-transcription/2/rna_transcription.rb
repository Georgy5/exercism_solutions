class Complement
  TRANSCRIPTION_TABLE = {
    G: 'C',
    C: 'G',
    T: 'A',
    A: 'U'
  }.freeze

  def self.of_dna(dna)
    return '' if dna.empty?

    rna = ''
    dna.chars.each do |nucleotide|
      rna += TRANSCRIPTION_TABLE[nucleotide.to_sym] if %w[G C T A].include?(nucleotide)
    end
    rna
  end
end
