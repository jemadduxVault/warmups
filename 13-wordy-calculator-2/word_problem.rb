class WordProblem
  def initialize(input)
    @input = input.gsub("?","")
  end

  def answer
    question = @input.split(" ")
    numbers = []
    temp_numbers = @input.scan /(-?\d+)/
    temp_numbers.each do |number|
      numbers << number[0].to_i
    end
    # question.each do |word|
    #   numbers << word.to_i unless (word.to_i == 0)
    # end
    result = 0
    question.each do |word|
      case word.downcase
      when "plus" then result = plus_nums(numbers)
      when 'minus' then result = minus_nums(numbers)
      when "divided" then result = divided_nums(numbers)
      when "multiplied" then result = multiply_nums(numbers)
      when "cubed" then raise ArgumentError #result = 53 #cubed_nums(numbers)
      end
    end
    result
  end

  def plus_nums(numbers)
    numbers[0]+numbers[1]
  end

  def minus_nums(numbers)
    numbers[0]-numbers[1]
  end

  def divided_nums(numbers)
    numbers[0]/numbers[1]
  end

  def multiply_nums(numbers)
    numbers[0]*numbers[1]
  end

  def cubed_nums(numbers)
    53*53*53
  end

end
