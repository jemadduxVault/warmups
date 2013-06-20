class Bob
  def initialize

  end

  def hey(input)
    return "Sure." if input.end_with?("?")
    return "Fine, be that way." if input == ""
    return "Woah, chill out!" if input.upcase == input
    "Whatever."
  end

  def l33t_sP34k(word)
    return l33t_word(word) if l33t_word(word)
    translation = {"e" => "3", "o" => "0", "l" => "1", "a" =>"4"}
    translation.each do |key, value|
      word = word.gsub(key,value)
    end
    word
  end

  def l33t_word(word)
    l33t_words = {"bye" => "bai", "crap" => "carp", "cake" => "ceak",
                  "and" => "nd", "dude" => "d00d", "from" => "form",
                  "guys" => "guise"}
    l33t_words.each do |key, value|
      return value if key == word
    end
    false
  end
end
