class Say
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
  end
end
