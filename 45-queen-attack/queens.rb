class Queens
  attr_accessor :white, :black

  def initialize(input = "")
    if input == ""
      @white = [0,3]
      @black = [7,3]
    elsif input[:white] == input[:black]
      raise ArgumentError
    else
      @white = input[:white]
      @black = input[:black]
    end
  end

  def attack?
    return true if white[0] == black[0] || white[1] == black[1]
    (-9..9).each do |x|
      return true if white[0]+x == black[0] && white[1]+x == black[1]
    end
    false
  end

  def to_s
    board = ""
    (0..7).each do |x|
      (0..7).each do |y|
        if [x,y] == black
          board += "B "
        elsif [x,y] == white
          board += "W "
        else
          board += "O " if y < 7
          board += "O" if y == 7
        end
      end
      board += "\n" if x < 7
    end
    board
  end


end
