class Grains

  def square(input)
    2**(input-1)
  end

  def total
    sum = 0
    (1..64).each do |x|
      sum += 2**(x-1)
    end
    sum
  end

end
