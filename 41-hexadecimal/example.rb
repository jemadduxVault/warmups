class Hexadecimal
  attr_reader :hex

  def initialize(input)
    @hex = input
  end

  def to_decimal
    sum = 0
    hex.split("").reverse.each_with_index do |h,i|
      num = h.to_i
      num = 10 if h.downcase == "a"
      num = 11 if h.downcase == "b"
      num = 12 if h.downcase == "c"
      num = 13 if h.downcase == "d"
      num = 14 if h.downcase == "e"
      num = 15 if h.downcase == "f"
      sum += num * (16 ** i)
    end
    sum = check_for_errors(sum)
  end

  def check_for_errors(sum)
    sum = 0 if @hex.include? "r"
    sum
  end
end
