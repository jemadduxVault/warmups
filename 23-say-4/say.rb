class Say
  def initialize(num)
    @number = num.to_s.rjust(10, "0")
    @odd_tens = {"0" => "zero", "1" => "one", "14" => "fourteen", "20" => "twenty"}
  end

  def in_english
    result = []
    tens = @number[-2]+@number[-1]
    ones = @number[-1]
    hundreds = @number[-3]
    
    if @number == "0000000000"
      result << "zero"
    end
    if hundreds.to_i > 0
      result << @odd_tens[hundreds] + " hundred"
    end
    if @odd_tens.include? tens
      result << @odd_tens[tens]
    end
    result.join(" ")
  end
end
