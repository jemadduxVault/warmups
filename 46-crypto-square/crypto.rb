class Crypto
  attr_accessor :input

  def initialize(input)
    @input = input
  end

  def normalize_plaintext
    ok_words = ("a".."z").to_a+["0","1","2","3","4",'5','6','7','8','9']
    input.downcase.split("").collect{|x| x if (ok_words).include? x}.join("")
  end

  def size
    Math.sqrt(input.length).ceil
  end

  def plaintext_segments
    segments = []
    segment_length = (normalize_plaintext.length / size)
    mini_segment = []
    normalize_plaintext.split("").each_with_index do |letter, index|
      segments << mini_segment.join("") if (index)%segment_length == 0
      mini_segment = [] if (index)%segment_length == 0
      mini_segment << letter
    end
    segments
  end
end
