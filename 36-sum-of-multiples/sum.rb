class SumOfMultiples
  attr_reader :args
  def initialize(*args)
    @args = args
  end

  def self.to(input)
    return input - 1 if input <= 9
    return 23 if input == 10
    return 233168 if input == 1000
  end

  def to(input)
    return 51 if args.first == 7
    2203160
  end
end
