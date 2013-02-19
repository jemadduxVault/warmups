class Robot
  attr_accessor :name

  def initialize
    @name = random_name()
  end

  def random_name
    "RX#{rand(0..9)}#{rand(0..9)}#{rand(0..9)}"#random RX837
  end

  def reset
    self.name = random_name()
  end
end


puts "Robot 1: "
robot1 = Robot.new
puts robot1.name
puts robot1.name
puts robot1.name
puts ''
puts "Robot 2: "
robot2 = Robot.new
puts robot2.name
puts robot2.name
puts robot2.name
puts ""
puts "Robot 3: "
robot3 = Robot.new
puts robot3.name
puts robot3.name
puts "Resetting to factory settings."
 robot3.reset
puts robot3.name
puts robot3.name


