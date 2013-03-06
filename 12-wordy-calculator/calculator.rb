class Calculator
  def ask(input)
    question = input.gsub("?", "").split(" ")
    numbers = []
    question.each do |word|
      numbers << word.to_i unless (word.to_i == 0)
    end
    result = 0
    question.each do |word|
      case word.downcase
      when "plus" then result = plus(numbers)
      when "minus" then result = minus(numbers)
      when "times" then result = times(numbers)
      when "divided" then result = divided(numbers)
      else
      end
    end
    #puts result
    result
  end

  def plus(numbers)
    sum = 0
    numbers.each do |number|
      sum += number
    end
    sum
  end

  def times(numbers)
    numbers[0] * numbers[1]
  end

  def minus(numbers)
    numbers[0] - numbers[1]
  end

  def divided(numbers)
    numbers[0].to_f / numbers[1].to_f
  end

end
