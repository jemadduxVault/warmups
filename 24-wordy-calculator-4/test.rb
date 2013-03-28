require 'minitest/autorun'
require 'minitest/pride'
require_relative './word_problem'

class WordProblemTest < MiniTest::Unit::TestCase
  def test_add_1
    assert_equal 2, WordProblem.new('What is 1 plus 1?').answer
  end

  def test_add_2
    assert_equal 3, WordProblem.new('What is 1 plus 2?').answer
  end

  def test_add_more_digits
    assert_equal 45801, WordProblem.new('What is 123 plus 45678?').answer
  end

  def test_subtract
    assert_equal 16, WordProblem.new('What is 4 minus -12?').answer
  end

  def test_multiply
    assert_equal -75, WordProblem.new('What is -3 multiplied by 25?').answer
  end

  def test_divide
    assert_equal -11, WordProblem.new('What is 33 divided by -3?').answer
  end

  def test_add_twice
    question = 'What is 1 plus 1 plus 1?'
    assert_equal 3, WordProblem.new(question).answer
  end

  def test_add_then_subtract
    question = 'What is 1 plus 5 minus -2?'
    assert_equal 8, WordProblem.new(question).answer
  end

  def test_multiply_twice
    question = 'What is 2 multiplied by -2 multiplied by 3?'
    assert_equal -12, WordProblem.new(question).answer
  end

  def test_add_then_multiply
    question = 'What is -3 plus 7 multiplied by -2?'
    assert_equal -8, WordProblem.new(question).answer
  end

  def test_divide_twice
    question = 'What is -12 divided by 2 divided by -3?'
    assert_equal 2, WordProblem.new(question).answer
  end

  def test_too_advanced
    assert_raises ArgumentError do
      WordProblem.new('What is 53 cubed?').answer
    end
  end
end
