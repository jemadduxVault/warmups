class Triangle
  attr_reader :x, :y, :z

  def initialize(x,y,z)
    @x, @y, @z = x, y, z
  end

  def kind
    raise TriangleError if (x <= 0) || (y <= 0) || (z <= 0) || not_triangle?
    if (x == y) && (y == z)
      :equilateral
    elsif (x != y) && (y != z) && (z != x)
      :scalene
    else
      :isosceles
    end
  end

  def not_triangle?
    (x >= (y + z)) || (y >= (x + z)) || (z >= (x + y))
  end
end
