class BeerSong
  def intitialize
	
  end

  def song(input=99,drink="beer")
    beer_number = input

		beer_number.times do |x|
		  puts "#{beer_number-x} bottles of #{drink} on the wall, #{beer_number-x} bottles of #{drink}."
		  puts "Take one down and pass it around, #{beer_number-x-1} bottles of #{drink} on the wall."
		  puts ""
		end
  end
end

beer = BeerSong.new
beer.song()




# Your file should be called `beer.rb`
# * The program should be called with `Beer.song`
# * The program should output to STDOUT using `puts`
# * Each verse should be separated by a single blank line.

# ## Extensions

# * Consider monkeypatching Fixnum so you could run `99.bottles_of_beer` or `12.bottles_of_beer` to run the song from an arbitrary starting point.
# * Make it a bit more flexible, so `99.bottles_of_beer` works, but so does `99.bottles_of("seltzer")`

# ## Data

# Here's a sampling of the lyrics...

# ```
# 99 bottles of beer on the wall, 99 bottles of beer.
# Take one down and pass it around, 98 bottles of beer on the wall.
