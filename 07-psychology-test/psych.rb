require 'highline/import'

class Psych
  def question
    loop do
      rand_num = rand(5..7)
      case rand_num  
      when 0
        loves = ask "What do you love?"
      when 1
        feeling = ask "How are you today?" do |q|
          q.default = "good"
        end
      when 2
        weather = ask "Are you enjoying this weather?"
      when 3
        home = ask "How are things at home?"
      when 4
        work = ask "How are things at work?"
      when 5
        drive = ask "How was the drive in?"
        if drive == "bad"
          followup = ask "Why?"
        end
      when 6
        wants_candy = ask "Do you want <%= color('candy',RED) %>?" do |q|
          q.validate = /^(yes|no)$/
        end
        say "Your favorite color is <%= color('blue',BLUE) %>"
      when 7 
        puts "Break?"
        answer = gets.chomp
        if answer == "yes"
          break
        end
      else 
        break
      end
    end
  end
end
shrink = Psych.new
shrink.question


# You want to be able to share questions with other scientists to see their 
# effect in upcoming tests. Devise a way that would make it easy for you to 
# exchange a body of questions with another scientist.

# ### Storing Answers

# Asking questions are great but only if you capture the answer or answers given
# by your subjects. Devise a system that will store the results of the answers
# for the given subject and future subjects.

