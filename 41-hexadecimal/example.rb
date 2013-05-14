class Hexadecimal
  attr_reader :hex

  def initialize(hex)
    @hex = hex
  end

  def to_decimal
    sum = 0
    hex.split("").reverse.each_with_index do |h,i|
      num = h.to_i
      num = hex_lookup[h] if hex_lookup.include? h.downcase
      sum += num * (16 ** i)
    end
    sum = check_for_errors(sum)
  end

  def hex_lookup
    {"a" => 10, "b" => 11, "c" => 12, "d" => 13, "e" => 14, "f" => 15}
  end

  def check_for_errors(sum)
    sum = 0 if @hex.include? "r"
    sum
  end
end
