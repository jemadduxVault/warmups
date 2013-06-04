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
    @x, @y = [x, y]
  end

  def coordinates
    [@x, @y]
  end

  def turn_right
    turn(:right)
  end

  def turn(way)
    which_way = 1 if way == :right
    which_way = -1 if way == :left
    directions = [:north, :east, :south, :west, :north]
    directions.each_with_index do |direction, index|
      if @orientation == direction
        @orientation = directions[index + which_way]
        return @orientation
      end
    end
  end

  def turn_left
    return @orientation = :west if @orientation == :north
    turn(:left)
  end

end
