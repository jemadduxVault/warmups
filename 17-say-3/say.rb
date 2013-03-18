class Say
<<<<<<< HEAD
  def initialize(input)
    @input = input
  end

  def in_english
    if @input < 0 || @input >= 1000000000000
      raise ArgumentError
    elsif @input < 1000
      @input.to_s
    else 
      answer = ""
      case @input.to_s.length
      when (0..3) then answer = @input.to_s[-1..-3]
      when (4..7) then answer = @input.to_s[-4..-7] + " thousand"
      when (8..10) then answer = @input.to_s[-8..-11]
      else
        answer = "longer"
      end
      answer
    end
=======

  attr_reader :number
  def initialize(number)
    @number = number
  end

  def in_english
    unless number.between?(0, 1_000_000_000_000-1)
      raise ArgumentError.new "can't do that"
    end

    return "0" if number == 0

    s = ""
    s << "#{billions} billion" if billions > 0
    s << " #{millions} million" if millions > 0
    s << " #{thousands} thousand" if thousands > 0
    s << " #{hundreds}" if hundreds > 0
    s.strip
  end

  def hundreds
    @hundreds ||= number % 1_000
  end

  def thousands
    @thousand ||= number % 1_000_000 / 1000
  end

  def millions
    @millions ||= number % 1_000_000_000 / 1_000_000
  end

  def billions
    @billions ||= number / 1_000_000_000
>>>>>>> 2235c334c938f047322006a0c956680cc4571ce8
  end
end
