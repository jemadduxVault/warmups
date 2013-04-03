class Trinary
  attr_accessor :trinary

  def initialize(input)
    @trinary = input
  end

  def to_decimal
    sum = 0
    @trinary.reverse.split("").each_with_index do |tri, index|
      sum += tri.to_i * 3**index
    end
    sum
  end

end
