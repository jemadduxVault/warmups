class DNA
  def initialize(dna)
    @dna = dna.split("")
  end

  def count(nucleotide)
    @dna.grep(nucleotide).count
    # sum = 0 
    # @dna.split("").each do |letter|
    #   if letter.downcase == nucleotide.downcase
    #     sum += 1
    #   end
    # end
    # sum
  end

  def nucleotide_counts
    base = {"A"=>0, "T"=>0, "C"=>0, "G"=>0}
    @dna.each do |letter|
      base[letter] += 1
    end
    base
  end

end
