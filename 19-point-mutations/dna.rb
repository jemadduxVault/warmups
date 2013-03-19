class DNA
  def initialize(input)
    @dna = input.split("")
  end

  def hamming_distance(mutated_dna)
    @mutated_dna = mutated_dna.split("")
    fix_dna
    mutation_diff
  end

  def mutation_diff
    hamming_diff = 0
    @dna.each_with_index do |nucleotide, index|
      hamming_diff += 1 unless (nucleotide == @mutated_dna[index])
    end
    hamming_diff
  end

  def fix_dna
    if @dna.count > @mutated_dna.count
      @dna = @dna.join("")[0..(@mutated_dna.count-1)].split("")
    end
  end
end
