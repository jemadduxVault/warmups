class Scrabble
	def initialize

	end

	def self.score(word="",twoxor3x_letter,which_letter,twoxor3x_word)
		word_array = word.split("")
		score = 0
		score = tally_score(word_array)
	  if which_letter <= word_array.length
	  	new_array = []
	  	new_array.push(word_array[which_letter])
	  	score += tally_score(new_array)
	  end
	  				
		case twoxor3x_word
			when ":double" 
				score = score * 2
			when ":triple" 
				score = score * 3
			else
		end
		puts "#{word}: #{score}"
	end

	def self.tally_score(word_array)
    score = 0
    word_array.each do |letter|
			case letter.downcase
				when "a","e","i","o","u","l","n","r","s","t" 
					score += 1
				when "d","g"
					score += 2
				when "b","c","m","p"
					score += 3
				when "f","h","v","w","y"
					score += 4
				when "k"
					score += 5
				when "j", "x"
					score += 8
				when "q", "z"
					score += 10
				else
			end
		end
		return score
	end


end

words = ["cabbage","jigglypuff","snake","komodo","dragon"]

words.each do |word|
  Scrabble.score(word,':double',4,':double')
end


# * You can play a `:double` or a `:triple` letter.
# * You can play a `:double` or a `:triple` word.


# ```ruby
# Scrabble.score("cabbage")
# # => 14
# ```

# Your program should be in a file named `scrabble.rb`.

# ## Letter Values

# ```plain
# Letter                           Value
# A, E, I, O, U, L, N, R, S, T       1
# D, G                               2
# B, C, M, P                         3
# F, H, V, W, Y                      4
# K                                  5
# J, X                               8
# Q, Z                               10
# ```