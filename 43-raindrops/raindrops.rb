class Raindrops
  def initialize
  end

  def convert(number)
    word = ""
    primes.each do |key, value|
      word += value if number % key == 0
    end
    return word if word != ""
    number.to_s
  end

  def primes
    {3 => "Pling", 5 => "Plang", 7 => "Plong"}
  end
end
