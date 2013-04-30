class Phone
  def initialize(num)
    @num = num.to_s
  end

  def number
    y = rand(0..3)
    if y >= 2 #to randomly select which method to use
      ["(",")","-","."," "].each do |x|
        @num = @num.gsub(x,"")
      end
    elsif y >=1
      @num = @num.gsub(/\D/,"")
    else
      @num = @num.scan(/\d+/).join("")
    end
    check_for_errors(@num)
  end

  def area_code
    number[0..2]
  end

  def check_for_errors(input)
    return input [1..-1] if input.length == 11 && input[0] == "1"
    return "0000000000" unless input.length == 10
    input
  end

  def to_s
    "(#{number[0..2]}) #{number[3..5]}-#{number[6..-1]}"
  end
end
