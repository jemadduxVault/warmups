# class BeerSong
#   def intitialize

#   end

#   def song(input=99,drink="beer")

# 		end
#   end
# end

# beer = BeerSong.new
# beer.song()


# beer_number = 99

# beer_number.times do |x|
#   puts "#{beer_number-x} bottles of beer on the wall, #{beer_number-x} bottles of beer."
#   puts "Take one down and pass it around, #{beer_number-x-1} bottles of beer on the wall."
#   puts ""
# end

class Wall
  attr_accessor :beverage_number, :beverage_name

  def initialize(beverage_number, beverage_name)
    @beverage_number = beverage_number
    @beverage_name = beverage_name
  end

  def beverage
    @beverage ||= Beer.new(beverage_name)
  end

  def to_s
    verse = ""
    beverage_number.times do |x|
      verse += "#{beverage_number-x} bottles of #{beverage.name} on the wall, #{beverage_number-x} bottles of #{beverage.name}. \n Take one down and pass it around, #{beverage_number-x-1} bottles of #{beverage.name} on the wall. \n \n"
    end
    verse
  end
end

class Bottle
end

class Beverage < Bottle
end

class Beer < Beverage
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  # def name
  #   "Malt Liquor"
  # end
end

class WallPrinter
  def self.go
    wall = Wall.new(99, "Ole Fortan")
    puts wall.to_s
    wall = Wall.new(9, "Stupid Water")
    puts wall.to_s
    wall = Wall.new(100_000_000_000_000, "Dry Dock Apricot")
    puts wall.to_s
  end
end

WallPrinter.go









