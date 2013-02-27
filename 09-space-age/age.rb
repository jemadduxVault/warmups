class Age
  def earth
    puts "How many seconds old are you?"
    @seconds = gets.chomp.to_f
    @earth_years = @seconds / (31557600)
    puts "You are #{@earth_years} Earth years old."
  end

  def other_planets
    puts "You are #{@earth_years / 0.2408467} years old on Mercury."
    puts "You are #{@earth_years / 0.61519726} years old on Venus."
    puts "You are #{@earth_years / 1.8808158} years old on Mars."
    puts "You are #{@earth_years / 11.862615} years old on Jupiter."
    puts "You are #{@earth_years / 29.447498} years old on Saturn."
    puts "You are #{@earth_years / 84.016846} years old on Uranus."
    puts "You are #{@earth_years / 164.79132} years old on Neptune."
  end

end

find = Age.new
find.earth
find.other_planets

# Write a program that, given an age in seconds, calculates how old someone is in standard Earth years.

# Then use the program to answer the following question:
# _If I am 1031 million seconds old, how old am I?_

# Mercury (orbital period 0.2408467 Earth years)
#    - Venus (orbital period 0.61519726 Earth years)
#    - Mars (orbital period 1.8808158 Earth years)
#    - Jupiter (orbital period 11.862615 Earth years)
#    - Saturn (orbital period 29.447498 Earth years)
#    - Uranus (orbital period 84.016846 Earth years)
#    - Neptune (orbital period 164.79132 Earth years)
