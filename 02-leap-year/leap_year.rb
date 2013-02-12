class Year
  def initialize(year)
  	@year = year    
  end

  def leap?
    if @year%4 == 0
    	if @year%100 == 0
    		if @year%400 == 0
    			puts "#{@year} is a leap year!"
    		else
    		  puts "#{@year} is not a leap year!"
    		end
    	else
        puts "#{@year} is leap year!"
       end
    else
    	puts "#{@year} is not a leap year!"
    end
  end
end

class Fixnum
  def leap_year?
  	Year.new(self).leap?
  end
end

(1990..2105).each do |year|
  #year.leap_year?
  Year.new(year).leap?
end

# Monkeypatch `Fixnum` to provide a `leap_year?` method:

# ```ruby
# 2000.leap_year?
# ```