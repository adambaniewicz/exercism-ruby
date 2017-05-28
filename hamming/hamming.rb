class Hamming
  def self.compute(dna1, dna2)
    fail StrandLengthNotMatchError unless dna1.length == dna2.length
    dna1.chars.zip(dna2.chars).count { |a, b| a != b }
  end
end

class StrandLengthNotMatchError < ArgumentError
  def initialize(msg="Strands are not the same length")
    super
  end
end

module BookKeeping
   VERSION = 3
 end
