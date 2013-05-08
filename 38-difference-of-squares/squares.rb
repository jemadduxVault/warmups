class Squares
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def square_of_sums
    (1..number).inject(:+)**2
  end

  def sum_of_squares
    (1..number).collect{|x| x**2 }.inject(:+)
  end

  def difference
    (square_of_sums - sum_of_squares).abs
  end
end
