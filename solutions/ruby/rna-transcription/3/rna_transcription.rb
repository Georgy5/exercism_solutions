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
      if %w[G C T A].include?(nucleotide)
        rna += TRANSCRIPTION_TABLE[nucleotide.to_sym]
      end
    end
    rna
  end
end
