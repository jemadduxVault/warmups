class DeafGrandma
attr_accessor :bye_count

  def initialize
    @bye_count = 0
  end

  def exit_word
    "BYE"
  end

  def talk
    loop do 
      you_say = gets.chomp
      case you_say
      when exit_word
        @bye_count += 1
        if @bye_count >= 3
          break
        end
        puts "HUH?! SPEAK UP, SONNY!"
      when you_say.upcase
        puts "NO, NOT SINCE #{rand(1930..1950)}!"
        @bye_count = 0
      else
        puts "HUH?! SPEAK UP, SONNY!"
        @bye_count = 0
      end
    end    
  end

end

grandma = DeafGrandma.new
grandma.talk

# 2. Have grandma tell you a story. Load the story from a .yml file. Grandma will only tell you one line of the story at a time, and to hear the next story you have to tell her "AND THEN".

