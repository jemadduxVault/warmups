class Raindrops
  def initialize
  end

  def convert(number)
    word = ""
    {3 => "Pling", 5 => "Plang", 7 => "Plong"}.each do |key, value|
      word += value if number % key == 0
    end
    return word if word != ""
    number.to_s
  end
end
