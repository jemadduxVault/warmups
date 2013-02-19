<<<<<<< HEAD
def all_caps(input)
  bob_array = input.split()
  bob_array.each do |letter|
    if letter == letter.upcase
      #continue
    else
      return false
    end
  end
  return true
end

def l33t_speak(input)
bob_array = input[5..-1].split("")
new_array = []
bob_array.each do |letter|
  case letter.downcase
  when "a" then letter = "4"
  when "e" then letter = "3"
  when "i" then letter = "1"
  when "o" then letter = "0"
  else
  end
  new_array.push(letter)
end  
return new_array.join("")
end

loop do
  bob_says = gets.chomp
  
  if bob_says[0..3].downcase == "bro,"
    puts "Bro, " + l33t_speak(bob_says)
  elsif bob_says[-1] == "?"
    puts "Sure."
  elsif bob_says == ""
    puts "Fine. Be that way!"
  elsif bob_says == "exit"
    break
  elsif all_caps(bob_says) == true
    puts "Woah, chill out!"
  else
    puts "Whatever."
  end
end


# Bob, inspired by the 90s, is bringing back "l33t sP34k", and he'll teach you how to do it. Start any sentence with "Bro, ", and he'll translate the rest of it into l33t sP34k for you.

# In brief:

# * Several vowels are always replaced with numbers: a = 4, e = 3, i = 1, o = 0
# * Words that start with a consonant start with lower case
# * Consonants after the first letter alternate upper and lower case, except the alternation starts over with lowercase after a digit (ex: sCh00l)
=======
class Bob
  def chat(input)
    puts response_for(input)
  end

  def response_for(input)
    if shouting?(input)
      'Woah, chill out!'
    elsif question?(input)
      'Sure.'
    elsif statement?(input)
      'Whatever.'
    else
      'Fine, be that way.'
    end
  end

  def statement?(input)
    input.length > 0
  end

  def question?(input)
    input.end_with?("?")
  end

  def shouting?(input)
    !input.empty? && input == input.upcase
  end
end

puts "Hey bro, wassup?"
bob = Bob.new
while true
  input = gets.chomp.strip
  bob.chat(input)
end
>>>>>>> 32d344fd0fe4273a266a7ff8a1df885d1c59ad36
