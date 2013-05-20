class Raindrops
  def initialize
  end

  def convert(number)
    word = ""
    word += "Pling" if number % 3 == 0
    word += "Plang" if number % 5 == 0
    word += "Plong" if number % 7 == 0
    return word if word != ""
    number.to_s
  end
end
