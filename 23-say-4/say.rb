class Say
  def initialize(num)
    error?(num)
    @number = num.to_s.rjust(10, "0")
    @odd_tens = {"0" => "zero", "1" => "one", "2" => "two", "3" => "three", "4" => "four", "5" => "five", "9" => "nine", "14" => "fourteen"}
    @tens_words = {"10" => "ten", "20" => "twenty", "30" => "thirty", "40" => "forty"}
  end

  def in_english
    result = []
    tens = @number[-2]+@number[-1]
    ones = @number[-1]
    hundreds = @number[-3]
    thousands = @number[-4]
    millions = @number[-7]
    billions = @number[-10]
    if @number == "0000000000"
      result << "zero"
    end
    if billions.to_i > 0
      result << @odd_tens[billions] + " billion"
    end
    if millions.to_i > 0
      result << @odd_tens[millions] + " million"
    end
    if thousands.to_i > 0
      result << @odd_tens[thousands] + " thousand"
    end
    if hundreds.to_i > 0
      result << @odd_tens[hundreds] + " hundred"
    end
    if tens[0].to_i > 1
      small_result = ""
      small_result += @tens_words[@number[-2] + "0"]
      if tens[1].to_i > 0
        small_result += "-#{@odd_tens[@number[-1]]}"
      end 
      result << small_result
    elsif @odd_tens.include? tens
      result << @odd_tens[tens]
    elsif ones.to_i > 0
      result << @odd_tens[ones]
    end
    result.join(" ")
  end

  def error?(num)
    if num.to_i < 0 || num >= 1000000000000
      raise ArgumentError
    end
  end
end
