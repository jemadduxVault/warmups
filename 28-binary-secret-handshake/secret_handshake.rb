class SecretHandshake
  attr_reader :binary

  def initialize(binary)
    @binary = binary.to_i(2)
  end

  def  possible_commands
    @possible_commands ||= {0b1 => "wink", 0b10 => "double blink", 0b100 => "close your eyes", 0b1000 => "jump", 0b10000 => lambda { |says| says.reverse!}}
  end

  def commands
    # says = [] # Array.new
    possible_commands.each_with_object([]) do |(little_binary, instruction), says|
      next unless (binary & little_binary) > 0
      proc = instruction if instruction.respond_to?(:call)
      proc ||= lambda { |says| says << instruction }
      proc.call(says)
    end



    # says << "wink" if binary[0] == "1"
    # says << "double blink" if binary[1] == "1"
    # says << "close your eyes" if binary[2] == "1"
    # says << "jump" if binary[3] == "1"
    # says = says.reverse if binary >= 0b10000
    # says = [""] if says == []
    # says
  end
end
