class Robot
  attr_accessor :orientation, :x, :y

  def initialize
  end

  def orient(orientation)
    if [:east, :west, :north, :south].include? orientation
      @orientation = orientation
    else
      raise ArgumentError
    end
  end

  def advance
    @y += 1 if orientation == :north
    @y -= 1 if orientation == :south
    @x += 1 if orientation == :east
    @x -= 1 if orientation == :west
  end

  def bearing
    @orientation
  end

  def at(x, y)
    @x, @y = x, y
  end

  def coordinates
    [@x, @y]
  end

  def turn_right
    turn(:right)
  end

  def turn_left
    return @orientation = :west if @orientation == :north
    turn(:left)
  end

  def turn(way)
    directions = [:north, :east, :south, :west, :north]
    directions.each_with_index do |direction, index|
      if @orientation == direction
        return @orientation = directions[index + 1] if way == :right
        return @orientation = directions[index - 1] if way == :left
      end
    end
  end
end

class Simulator
  def initialize
  end

  def instructions(input)
    answer = []
    input.split("").each do |letter|
      answer << :turn_left if letter == "L"
      answer << :turn_right if letter == "R"
      answer << :advance if letter == "A"
    end
    answer
  end

  def place(robot, input)
    robot.x = input[:x]
    robot.y = input[:y]
    robot.orientation = input[:direction]
  end

  def evaluate(robot, instruct)
    do_this = instructions(instruct)
    do_this.each do |do_it|
      robot.advance if do_it == :advance
      robot.turn_right if do_it == :turn_right
      robot.turn_left if do_it == :turn_left
    end
  end
end
