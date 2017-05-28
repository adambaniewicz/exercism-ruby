class Hamming
  def self.compute(dna1, dna2)
    raise ArgumentError.new("Strands need to be the same length") unless dna1.length == dna2.length
    dna1.chars.zip(dna2.chars).count { |a, b| a != b }
  end
end

module BookKeeping
   VERSION = 3
 end
