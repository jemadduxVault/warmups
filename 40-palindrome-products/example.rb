class Palindromes
  attr_reader :max, :min

  def initialize(input)
    @max = input[:max_factor]
    if input[:min_factor]
      @min = input[:min_factor]
    else
      @min = 0
    end
  end

  def generate
  end

  def largest
    Palin.new(max, min, "largest")
  end

  def smallest
    Palin.new(max, min, "smallest")
  end
end

class Palin
  attr_reader :max, :min, :size

  def initialize(max, min, size)
    @max, @min, @size = max, min, size
  end

  def value
    palindromes = []
    (min..max).each do |x|
      (min..max).each do |y|
        palindromes << x*y if (x*y).to_s == (x*y).to_s.reverse
      end
    end
    return palindromes.max if size == "largest"
    return palindromes.min if size == "smallest"
  end

  def factors
    factors = {}
    (min..max).each do |x|
      (min..max).each do |y|
        factors[x*y] = [x,y] if ((x*y).to_s == (x*y).to_s.reverse)
      end
    end
    return [factors.max[1].reverse] if size == "largest"
    return [factors.min[1].reverse] if size == "smallest"
  end
end

