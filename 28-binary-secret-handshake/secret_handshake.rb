class SecretHandshake
  attr_reader :binary

  def initialize(binary)
    @binary = binary.rjust(5,"0").split("").reverse
  end

  def commands
    says = []
    says << "wink" if binary[0] == "1"
    says << "double blink" if binary[1] == "1"
    says << "close your eyes" if binary[2] == "1"
    says << "jump" if binary[3] == "1"
    says = says.reverse if binary[4] == "1"
    says = [""] if says == []
    says
  end
end
