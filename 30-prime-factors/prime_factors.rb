class PrimeFactors

  def self.for(input)
    primes = []

    # primes.reject {|p| p.even?}

    if input == 1 
      primes = []
    elsif input == 2 || input == 3
      primes << input
    end
    primes
  end

end
