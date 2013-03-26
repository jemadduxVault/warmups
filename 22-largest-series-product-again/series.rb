class Series
  def initialize(number)
    @numbers = number
  end

  def digits
    @numbers = @numbers.split("")
    temp = []
    @numbers.each do |number|
      temp << number.to_i
    end
    @numbers = temp
  end

  def slices(length) 
    temp = []
    (0..(digits.count - length)).each do |index|
      slice = []
      length.times do |num|
        slice << @numbers[index + num]
      end
      temp << slice
    end
    temp
  end

  def largest_product(input)
    if input > @numbers.length
      raise ArgumentError
    end
    max = 0
    slices(input).each do |slice|
      temp = 1
      slice.each do |num|
        temp *= num
      end
      max = temp unless (max > temp)
    end
    max
  end

end




