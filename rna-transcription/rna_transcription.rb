class Complement
  def self.of_dna(dna_strand)
    incorrect_nucleotide_flag = false

    dna_strand = dna_strand.split("").map { |x|
      case x
      when 'G'
        x = 'C'
      when 'C'
        x = 'G'
      when 'T'
        x = 'A'
      when 'A'
        x = 'U'
      else
        incorrect_nucleotide_flag = true
      end
    }
    incorrect_nucleotide_flag ? '' : dna_strand.join
  end
end

module BookKeeping
  VERSION = 4
end
