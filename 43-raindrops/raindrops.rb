class Raindrops
  def initialize

  end

  def convert(input)
    word = ""
    word += "Pling" if input % 3 == 0
    word += "Plang" if input % 5 == 0
    word += "Plong" if input % 7 == 0
    return word if word != ""
    input.to_s
  end

end
