class Series
  def initialize(number)
    @number = number
  end

  def digits
    digits_array = []
    @number.split("").each do |num|
      digits_array << num.to_i
    end
    digits_array
  end

  def slices(length)
    

  end
    # result = []
    # @number.split("").each_with_index do |num, index|
    #   temp = []
    #   length.times do |x|
    #     temp << @number[index + x].to_i
    #   end
    #   result << temp
    # end
    # result[0..3]
  

  def largest_product(length)
    products = []
    #sliced_nums = slices(length)
  end
end

