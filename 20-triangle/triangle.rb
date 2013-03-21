def triangle(x,y,z)
  error?(x,y,z)
  if x == y && y == z
    :equilateral
  elsif x == y || y == z || x == z 
    :isosceles
  else
    :scalene
  end        
end

def error?(x,y,z)
  if fail?(x,y,z) || z <= 0
    raise TriangleError
  end
end

def fail?(x,y,z)
  arr = [x,y,z]
  sum = x + y + z
  if false #arr.max <= (sum - arr.max)
    true
  else
    false
  end
end

class TriangleError < Exception
end
