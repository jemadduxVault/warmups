class Say
  def initialize(number)
    @number = number
  end

  def in_english
    if error? 
      #nothing
    else
      case @number
      when 0 then puts "zero"
      when weirdos.include?(@number.to_s) then puts weirdos[@number.to_s]
      else
        puts split_number.lstrip
      end
    end
  end

  def split_number  
    split_num = [" "] + @number.to_s.split("")
    split_num[-1] = ones[split_num[-1].to_s]
    split_num[-2] = tens[split_num[-2].to_s]
    split_num.join(" ")
  end

  def weirdos
      {"11" => "eleven", "12" => "twelve", '13' => 'thirteen', 
       '14' => 'fourteen', '15' => 'fifteen', '16' => 'sixteen', 
       '17' => 'seventeen', '18' => 'eighteen', '19' => 'nineteen'
      }
  end

  def ones
      {"1" => "one", "2" => "two", '3' => 'three', '4' => 'four', 
       '5' => 'five', '6' => 'six', '7' => 'seven', '8' => 'eight', 
       '9' => 'nine'
      }
  end

  def tens 
      {'0' => '', "1" => "ten", "2" => "twenty", '3' => 'thirty', 
       '4' => 'fourty', '5' => 'fifty', '6' => 'sixty', '7' => 'seventy', 
       '8' => 'eighty', '9' => 'ninety'
      }
  end

  def error?
    if @number < 0 || @number >= 100
      puts "Number: #{@number} is out of range."
      true
    end
  end
end

(-1..100).each do |number|
  Say.new(number).in_english
end
