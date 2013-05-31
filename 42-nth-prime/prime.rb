class Prime
  attr_accessor :primes

  def self.nth(number_upto)
    @primes = []
    raise ArgumentError if number_upto == 0
    n = 0
    until nth = @primes[number_upto - 1] do
      @primes << n if self.prime?(n)
      n += 1
    end
    return nth
  end

  def self.prime?(num)
    return false if num == 0 || num == 1
    return true if num == 2
    (2..(num-1)).each do |y|
      return false if num % y == 0
    end
    true
  end
end

  # (0..100_000_000_000).each do |num|
      #   if @primes[number_upto-1] == nil
      #     add_next_prime(@primes[-1])
      #   elsen
      #     return @primes[number_upto-1]
      #   end
      # end


  # def self.add_next_prime(current_prime)
  #   ((current_prime+1)..100_000_000).each do |x|
  #     return @primes << x if prime?(x)
  #   end
  # end
