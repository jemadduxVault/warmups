class WordProblem
  attr_accessor :words, :numbers

  def initialize(question)
    @words = question.gsub("?","").split(" ")
    @numbers = []
    make_nums
  end

  def make_nums
    words.each do |word|
      if word.to_i != 0
        numbers << word.to_i
      end
    end
  end

  def add_nums
    sum = 0
    numbers.each do |num|
      sum += num
    end
    sum
  end

  def subtract_nums
    numbers[0] - numbers[1]
  end

  def multiplied_nums
    sum = 1
    numbers.each do |num|
      sum *= num
    end
    sum
  end

  def divided_nums
    sum = numbers[0]
    (1..(numbers.count-1)).each do |x|
      sum /= numbers[x]
    end
    sum
  end

  def answer
    if words.include? "plus"
      add_nums
    elsif words.include? "minus"
      subtract_nums
    elsif words.include? "multiplied"
      multiplied_nums
    elsif words.include? "divided"
      divided_nums
    elsif words.include? "cubed"
      raise ArgumentError
    end
  end
end
