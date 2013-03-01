class Scrabbly
  def self.score(input, letter_score="single", word_score="single")
    score = 0
    input.split("").each do |letter|
      score += get_score(letter,letter_score)
    end
    score = multiply_word_score(score, word_score)
    puts "#{input} is worth #{score} points."
  end

  def self.multiply_word_score(score, word_score)
    case word_score 
    when "double" then score = score * 2
    when "triple" then score = score * 3
    else
      score
    end
  end

  def self.get_score(letter, letter_score)
    points = get_points(letter)
    case letter_score 
    when "double" then points = points * 2
    when "triple" then points = points * 3
    end
    points
  end

  def self.get_points(letter)
    case letter.downcase
    when "d","g" then 2
    when "b", "c", "m", "p" then 3
    when "f", "h", "v", "w", "y" then 4
    when "k" then 5
    when "j", "x" then 8
    when "q", "z" then 10
    else 
      1
    end    
  end
end

Scrabbly.score("chipmunk")
Scrabbly.score("chipmunk", "double", "triple")
Scrabbly.score("chipmunk", "triple", "double")
Scrabbly.score("chipmunk", "triple", "triple")

# * You can play a `:double` or a `:triple` letter.
# * You can play a `:double` or a `:triple` word.

# Scrabble.score("cabbage")
# # => 14

# Letter                           Value
# A, E, I, O, U, L, N, R, S, T       1
# D, G                               2
# B, C, M, P                         3
# F, H, V, W, Y                      4
# K                                  5
# J, X                               8
# Q, Z                               10
