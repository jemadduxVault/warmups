class Luhn
  attr_accessor :number

  def initialize(number)
    @number = number
  end

  def check_digit
    number.to_s.split("").last.to_i
  end

  def addends
    returned = []
    number.to_s.split("").reverse.each_with_index do |x,i|
     num = (x.to_i * 2) if i%2 == 1
     num = x.to_i if i%2 == 0
     returned << num if num < 10
     returned << num - 9 if num >= 10
    end
    returned.reverse
  end

  def checksum
    sum = 0
    addends.each do |x|
      sum += x
    end
    sum
  end

  def valid?
    checksum % 10 == 0
  end

  def self.create(input)
    (0..9).each do |x|
      new_number = (input.to_s+x.to_s).to_i
      new_num = Luhn.new(new_number)
      return new_number if new_num.valid?
    end
  end

end
