class Complement
  DNA_RNA_MAP = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }.freeze

  def self.of_dna(dna_strand)
    incorrect_nucleotide_flag = false

    rna = dna_strand.chars.map { |nucleotide|
      DNA_RNA_MAP[nucleotide] || incorrect_nucleotide_flag = true
    }.join

    incorrect_nucleotide_flag ? '' : rna
  end
end

module BookKeeping
  VERSION = 4
end
