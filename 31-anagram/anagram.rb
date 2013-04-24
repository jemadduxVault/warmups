class Anagram
  attr_reader :anagram

  def initialize(anagram)
    @anagram = anagram
  end

  def match(words)
    answer = []
    words.each do |word|
      if word.split("").sort == anagram.split("").sort
        answer << word
      end
    end
    answer
  end
end
