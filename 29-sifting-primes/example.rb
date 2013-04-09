class Sieve
  attr_reader :upto_number

  def initialize(upto_number)
    @upto_number = upto_number
  end

  def primes
    num = [0, 0] + (2..upto_number).to_a
    
    (2..Math.sqrt(upto_number).to_i).each do |int|
      if num[int] != 0
        (int**2..upto_number).step(int) {|m| num[m] = 0}
      end
    end
    
    num.find_all {|m| m != 0}
  end

end
