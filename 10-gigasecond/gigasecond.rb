class Gigasecond
  def initialize
    @gigasecond = 1_000_000_000.0
  end

  def years
    yearsec = 365.25 * 24 * 60 * 60
    @years_remainder = @gigasecond % yearsec
    years = (@gigasecond / yearsec).to_i
  end

  def months
    months_sec = 31 * 24 * 60 * 60
    @months_remainder = @years_remainder % months_sec
    months = (@years_remainder / months_sec).to_i
  end

  def days
    days_sec = 24 * 60 * 60
    @days_remainder = @months_remainder % days_sec
    days = (@months_remainder / days_sec).to_i
  end

  def hours
    hours_sec = 60*60
    @hours_remainder = @days_remainder % hours_sec
    hours = (@days_remainder / hours_sec).to_i
  end

  def minutes
    minutes_sec = 60
    @minutes_remainder = @hours_remainder % minutes_sec
    minutes = (@hours_remainder / minutes_sec).to_i
  end

  def seconds
    @minutes_remainder.to_i
  end

  def output
    puts "At #{years} years, #{months} months, #{days} days, #{hours} hours, #{minutes} minutes and #{seconds} seconds."
  end
end

program = Gigasecond.new
program.output

# Gigasecond
# A gigasecond is one billion seconds. Figure out when you turn(ed) 1 gigasecond old.
