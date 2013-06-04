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
    # directions = [:north, :east, :south, :west]
    # directions.each_with_index do |direction, index|
    #   if orientation == direction
    #     orientation = directions[index]
    #     return orientation
    #   end
    # end
    return @orientation = :east if @orientation == :north
    return @orientation = :south if @orientation == :east
    return @orientation = :west if @orientation == :south
    return @orientation = :north if @orientation == :west
  end

  def turn_left
    return @orientation = :west if @orientation == :north
    return @orientation = :north if @orientation == :east
    return @orientation = :east if @orientation == :south
    return @orientation = :south if @orientation == :west
  end

end
