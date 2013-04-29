class Fixnum
  def to_roman
    answer = ""
    number = self.to_s

    answer += "MMM" if number[-4].to_i == 3
    answer += "M" if number[-4].to_i == 1

    hundreds = {1 => "C" , 4 => "CD", 5 => "D", 9 => "CM"}
    answer += hundreds[number[-3].to_i] if number[-3].to_i != 0

    tens = {1 => "X", 2 => "XX", 4 => "XL", 5 => "L", 6 => "LX", 7 => "LXX",
            9 => "XC"}
    answer += tens[number[-2].to_i] if number[-2].to_i != 0

    if number[-1].to_i <= 3
      number[-1].to_i.times do
        answer += "I"
      end
    end
    answer += "IV" if number[-1].to_i == 4
    answer += "V" if number[-1].to_i == 5
    answer += "VI" if number[-1].to_i == 6
    answer += "VII" if number[-1].to_i == 7
    answer += "VIII" if number[-1].to_i == 8
    answer += "IX" if number[-1].to_i == 9
    answer
  end
end
