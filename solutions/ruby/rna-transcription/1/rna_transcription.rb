class Complement
  TRANSCRIPTION_TABLE = {
    G: "C",
    C: "G",
    T: "A",
    A: "U"
  }

  def self.of_dna(dna)
    return '' if dna.empty?

    rna = ''
    dna.chars.each do |nucleotide|
      if TRANSCRIPTION_TABLE.keys.include?(nucleotide.to_sym)
        rna += TRANSCRIPTION_TABLE[nucleotide.to_sym]
      end
    end
    rna
  end
end
