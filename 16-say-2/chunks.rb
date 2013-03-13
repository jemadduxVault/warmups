class Chunks
  def initialize(num)
    @num = num.to_s.rjust(12, "0")
  end

  def split
    if @num.to_i > 999_999_999_999 || @num.to_i < 0
      puts "Wrong"
    else
      chunks = []
      chunks[0] = @num[0..2].to_i
      chunks[1] = @num[3..5].to_i
      chunks[2] = @num[6..8].to_i
      chunks[3] = @num[9..11].to_i
      puts chunks.to_s
    end
  end
end

10.times do 
  Chunks.new(rand(0..101_009_999_999)).split
end
# => [1, 234, 567, 890]
