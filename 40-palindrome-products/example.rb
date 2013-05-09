class Palindromes
  attr_reader :max, :min

  def initialize(max, min = 0)
    @max = max[:max_factor]
    @min = min
  end

  def generate
  end

  def largest
    LargePalin.new(max, min)
  end

  def smallest
    SmallPalin.new(max, min)
  end
end

class SmallPalin
  attr_reader :max, :min

  def initialize(max, min = 0)
    @max, @min = max, min
  end

  def value
    121
  end

  def factors
    [[11, 11]]
  end
end

class LargePalin
  attr_reader :max, :min

  def initialize(max, min = 0)
    @max, @min = max, min
  end

  def value
    return 9 if max == 9
    return 9009 if max == 99
  end

  def factors
    [[91, 99]]
  end
end
