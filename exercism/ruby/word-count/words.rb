class Words
  attr_reader :words

  def initialize(words)
    @words = words.downcase.gsub(/[^a-z0-9 ]/,"")
    # @words = words.downcase.gsub(/[\W]/,"") ##Can't use this one because it also gets the blank spaces. I could move it
  end

  def count
    answer = {}
    words.split(" ").each do |word|
      answer[word] += 1 if answer[word]
      answer[word] = 1 unless answer[word]
    end
    answer
  end
end
