class Robot
  attr_accessor :name

  def initialize
    @name = random_name()
  end

  def random_name
    "#{random_letter}#{random_letter}#{rand(0..9)}#{rand(0..9)}#{rand(0..9)}"#random RX837
  end

  def random_letter
    ("A".."Z").to_a[rand(0..24)]
    #{}"#{%w(Q W E R T Y U I O P L K J H G F D S A Z X C V B N M)[rand(0..24)]}"
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


