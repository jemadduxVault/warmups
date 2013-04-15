class PrimeFactors

  def self.for(number)
    primes = []

    # primes.reject {|p| p.even?}

    
    primes = [] if number == 1 
    primes = [number] if number == 2 || number == 3
    primes
  end

end
