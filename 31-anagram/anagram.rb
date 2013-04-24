class Anagram
  attr_reader :anagram

  def initialize(anagram)
    @anagram = anagram
  end

  def match(words)
    words.select {|word| word.split("").sort == anagram.split("").sort}
  end
end
