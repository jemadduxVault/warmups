class WordProblem

  def initialize(question)
    @question = question.gsub("?","").split(" ")
  end  

  def answer
    numbers = []
    answer = 0
    @question.each do |word|
      numbers << word.to_i unless (word.to_i == 0)    
    end
    @question.each do |word|
      if word == "cubed"
        raise ArgumentError
      else
        answer = plus_minus(numbers)
      end
    end
    answer
    
  end

  def plus_minus(numbers)
    sum = numbers[0]
    counter = 1
    @question.each do |word|
      if word == "plus"
        sum += numbers[counter]
        counter += 1
      elsif word == "minus"
        sum -= numbers[counter]
        counter +=1
      end
    end
    sum
  end
end
