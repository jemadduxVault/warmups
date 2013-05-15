class Prime
  attr_accessor :primes

  def self.nth(number_upto)
    @primes = [2, 3, 5, 7, 11, 13]
    raise ArgumentError if number_upto == 0
    (0..100_000_000_000).each do |num|
      if @primes[number_upto-1] == nil
        add_next_prime(@primes[-1])
      else
        return @primes[number_upto-1]
      end
    end
  end

  def self.add_next_prime(current_prime)
    ((current_prime+1)..100_000_000).each do |x|
      return @primes << x if prime?(x)
    end
  end

  def self.prime?(num)
    return false if num % 2 == 0
    (2..(num-1)).each do |y|
      return false if num % y == 0
    end
    true
    # Prime.prime?(num)
  end
end
