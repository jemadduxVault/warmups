class Binary
  attr_accessor :binary

  def initialize(input)
    @binary = input
  end

  def to_decimal
    if binary[-1] == "0" || binary[-1] == "1"
      sum = 0
      binary.reverse.split("").each_with_index do |bin, index|
        sum += bin.to_i * 2**index
      end
      sum
    else
      0
    end
  end
end


#```bash
# "1011001"
#   1     0     1     1     0     0     1
#  2^6 + 2^5 + 2^4 + 2^3 + 2^2 + 2^1 + 2^0
#   64 +   0 +  16 +   8 +   0 +   0 +   1 = 89
# ```
