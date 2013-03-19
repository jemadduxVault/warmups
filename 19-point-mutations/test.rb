require 'minitest/autorun'
require 'minitest/pride'
require_relative './dna'

class DNATest < MiniTest::Unit::TestCase

  def test_no_difference_between_empty_strands
    assert_equal 0, DNA.new('').hamming_distance('')
  end

  def test_no_difference_between_identical_strands
    
    assert_equal 0, DNA.new('GGACTGA').hamming_distance('GGACTGA')
  end

  def test_complete_hamming_distance_in_small_strand
    
    assert_equal 3, DNA.new('ACT').hamming_distance('GGA')
  end

  def test_hamming_distance_in_off_by_one_strand
    
    assert_equal 19, DNA.new('GGACGGATTCTGACCTGGACTAATTTTGGGG').hamming_distance('AGGACGGATTCTGACCTGGACTAATTTTGGGG')
  end

  def test_small_hamming_distance_in_middle_somewhere
    
    assert_equal 1, DNA.new('GGACG').hamming_distance('GGTCG')
  end

  def test_larger_distance
    
    assert_equal 2, DNA.new('ACCAGGG').hamming_distance('ACTATGG')
  end

  def test_shortens_other_strand_when_longer
    
    assert_equal 3, DNA.new('AAACTAGGGG').hamming_distance('AGGCTAGCGGTAGGAC')
  end

  def test_shortens_original_strand_when_longer
    
    assert_equal 5, DNA.new('GACTACGGACAGGGTAGGGAAT').hamming_distance('GACATCGCACACC')
  end

end
