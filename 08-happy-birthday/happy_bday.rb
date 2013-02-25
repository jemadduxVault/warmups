class HappyBday
  def initialize
    puts "What year where you born in?"
    @year = gets.chomp.to_i
    puts "What month where you born in?"
    @month = gets.chomp
    month_to_num
    puts "What day where you born on?"
    @day = gets.chomp.to_i
  end

  def month_to_num
    case @month.downcase
    when "january" then @month = 1
    when "february" then @month = 2
    when "march" then @month = 3
    when "april" then @month = 4
    when "may" then @month = 5
    when "june" then @month = 6
    when "july" then @month = 7
    when "august" then @month = 8
    when "september" then @month = 9
    when "october" then @month = 10
    when "november" then @month = 11
    when "december" then @month = 12
    else
      @month = @month.to_i
    end
  end

  def num_bdays
    if @month > 2
      2012-@year
    elsif @month >= 2 && @day >= 25
      2012-@year
    else
      2013-@year
    end
  end

  def spank
    num_bdays.times do |bday|
      puts "SPANK! for birthday number #{bday + 1}."
    end
  end

  def age_in_seconds
    days = (2012 - @year)*365.25 + (@month * 30) + @day
    @seconds = days * 24 * 60 * 60
    puts "You are #{@seconds.to_i} seconds old."
  end

  def earth_years_old
    puts "You are #{num_bdays} years old."
  end

  def other_planets
    puts "You are #{@seconds / (365.25*24*60*60) / 0.2408467} years old on Mercury."
    puts "You are #{@seconds / (365.25*24*60*60) / 0.61519726} years old on Venus."
    puts "You are #{@seconds / (365.25*24*60*60) / 1.8808158} years old on Mars."
    puts "You are #{@seconds / (365.25*24*60*60) / 11.862615} years old on Jupiter."
    puts "You are #{@seconds / (365.25*24*60*60) / 29.447498} years old on Saturn."
    puts "You are #{@seconds / (365.25*24*60*60) / 84.016846} years old on Uranus."
    puts "You are #{@seconds / (365.25*24*60*60) / 164.79132} years old on Neptune"
  end
end

bday = HappyBday.new
bday.spank
bday.age_in_seconds
bday.earth_years_old
bday.other_planets

# # Happy Birthday
# Write a program that asks what year a person was born in, then the month, then the day.
# Figure out how old they are and give them a big SPANK! for each birthday they have had.
# ## Extensions
# 1. Calculate their age in seconds (approximately! We don't know what time they were born, and that's OK).
# 2. Given an age in seconds, calculate how old someone is in standard Earth years.
# 3. Given an age in seconds, calculate how old someone would be on:
#    - Mercury (orbital period 0.2408467 Earth years)
#    - Venus (orbital period 0.61519726 Earth years)
#    - Mars (orbital period 1.8808158 Earth years)
#    - Jupiter (orbital period 11.862615 Earth years)
#    - Saturn (orbital period 29.447498 Earth years)
#    - Uranus (orbital period 84.016846 Earth years)
#    - Neptune (orbital period 164.79132 Earth years)
# An Earth year is roughly 365.25 days, or 31557600 seconds.
# If you're wondering why Pluto didn't make the cut, go watch [this youtube video](http://www.youtube.com/watch?v=Z_2gbGXzFbs).
