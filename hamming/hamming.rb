class Hamming
  def self.compute(dna1, dna2)
    raise ArgumentError.new("Strands need to be the same length") unless dna1.length == dna2.length

    counter = 0
    dna1.chars.zip(dna2.chars) { |a| counter += a.uniq.count - 1 }
    counter
  end
end

module BookKeeping
   VERSION = 3 # Where the version number matches the one in the test.
 end
