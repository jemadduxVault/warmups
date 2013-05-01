# Spoiler alert
# This file, like all the example.rb files in this repo, is designed
# to be a place where you can check your answer or see another style.









































class Beer
  def self.song
    # 99.downto(2) #=> [99, 98, 97, ... , 3, 2]
    # We only go downto 2 because the last line is special
    99.downto(2) do |i|
      puts verse(i)
      puts "" # extra newline
    end
    puts last_verse()
  end

  def self.verse(num_bottles)
    return <<-eos
#{num_bottles} bottles of beer on the wall, #{num_bottles} bottles of beer.
Take one down and pass it around, #{num_bottles-1} #{pluralize(num_bottles-1)} of beer on the wall.
    eos
  end

  def self.last_verse
    return <<-eos
1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.

No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
    eos
  end

  def self.pluralize(num_bottles)
    return "bottles" if num_bottles != 1
    return "bottle"
  end
end

# Extension 1
# Reopen Beer class and redefine song to allow a different number of
# bottles
class Beer1 < Beer
  def self.song(initial_bottles=99)
    initial_bottles.downto(2) do |i|
      puts verse(i)
      puts "" # extra newline
    end
    puts last_verse()
  end
end
# Reopen the Fixnum class to add an instance method. This is a terrible
# practice but it's very useful to know that it's possible. This is
# called Monkey Patching. In Ruby 2.x there will be a much safer way
# of doing this called Refinements but this is still being worked on.
class Fixnum
  def bottles_of_beer
    Beer1.song(self)
  end
end

# Extension 2
# Reopen Fixnum again, and redefine bottles of beer to use the more flexible
# `bottles_of` method.
class Beer2 < Beer
  def self.song(initial_bottles, drink)
    initial_bottles.downto(2) do |i|
      puts verse(i, drink)
      puts "" # extra newline
    end
    puts last_verse(drink)
  end

  def self.verse(num_bottles, drink="beer")
    super(num_bottles).gsub("beer", drink)
  end

  def self.last_verse(drink="beer")
    super().gsub("beer", drink)
  end
end
class Fixnum
  def bottles_of(drink="beer")
    Beer2.song(self, drink)
  end
end