class Raindrops
  def initialize
  end

  def convert(number)
    word = primes.collect do |key, value|
      value if number % key == 0
    end
    word = word.join("")
    return word if word != ""
    number.to_s
  end

  def primes
    {3 => "Pling", 5 => "Plang", 7 => "Plong"}
  end
end
