require_relative './calculator'
require 'minitest/autorun'
require 'minitest/pride'

class CalculatorTest < MiniTest::Unit::TestCase
  def setup
    @calculator = Calculator.new
  end

  def test_add_1
    assert_equal 2, @calculator.ask('What is 1 plus 1?')
  end

  def test_add_2
    assert_equal 3, @calculator.ask('What is 1 plus 2?')
  end

  def test_add_more_digits
    assert_equal 45801, @calculator.ask('What is 123 plus 45678?')
  end

  def test_add_negative_numbers
    assert_equal -11, @calculator.ask('What is -1 plus -10?')
  end

  def test_more_pluses
    assert_equal 19, @calculator.ask('What is 7 plus 9 plus 3?')
  end

  def test_multiply
    assert_equal 15, @calculator.ask('What is 5 times 3?')
  end

  def test_minus
    assert_equal 13, @calculator.ask("What is 15 minus 2?")
  end

  def test_minus_negative
    assert_equal 36, @calculator.ask("What is 23 minus -13?")
  end

  def test_divided_by
    assert_equal 5.0, @calculator.ask("What is 50 divided by 10?")
  end

  def test_different_wording
    assert_equal 42, @calculator.ask("How many is 40 PLUS 2?")
  end
end









