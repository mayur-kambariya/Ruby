class Say
  def initialize(number)
  	@number = number
    @english_hash = {

      billion: 1000000000,
      million: 1000000,
      thousand: 1000,
      hundred: 100,
      ninety:90,
      eighty: 80,
      seventy: 70,
      sixty: 60,
      fifty: 50,
      forty: 40,
      thirty: 30,
      twenty: 20,
      nineteen: 19,
      eighteen: 18,
      seventeen: 17,
      sixteen: 16,
      fifteen: 15,
      fourteen: 14,
      thirteen: 13,
      twelve: 12, 
      eleven: 11,
      ten: 10,
      nine: 9,
      eight: 8,
      seven: 7,
      six: 6,
      five: 5,
      four: 4,
      three: 3,
      two: 2,
      one: 1,
      zero: 0
    }
  end
  
  def in_english
    if @number == 0
      return "zero"
    else
      if @number < 0 || @number >= 1000000000000
        raise ArgumentError
      else
        temp = @number
        @phrase = ""
        @array_big=Array.new
        flg1 = 0
        flg2 = 0
        #split Big Integer Number into Temp
        if temp > 1_000_000_000
          temp_1 = temp
          while temp_1 > 0
            num_1 = temp_1 % 1000
            @array_big << num_1
            temp_1 = temp_1 / 1000
          end
          #process on last three digit in big Integer
          big_int = 1 
          @array_big.reverse_each do |i|
            get_words(i)
            if big_int == 1
              @phrase += " billion "
            elsif big_int == 2
              @phrase += " million "
            elsif big_int == 3
              @phrase += " thousand "
            end
            big_int += 1
          end
        else
          get_words(temp)
        end
        @phrase.gsub!'  ',' '
         return @phrase.strip
      end
    end
  end
  def get_words(temp)
    if temp / 1000000000 > 0
      flg1 = 1
      digit = temp / 1000000000
      get_digit(digit)
      @phrase += " billion"
      flg2 = 1
      temp = temp - (digit * 1000000000)
    end
    if temp / 1000000 > 0
      flg1 = 1
      digit = temp / 1000000
      if flg2 == 1
        @phrase += " "
        flg2 = 0
      end
      get_digit(digit)
      @phrase += " million"
      flg2 = 1
      temp = temp - (digit * 1000000)
    end
    if temp / 1000 > 0
      flg1 = 1
      digit = temp / 1000
      if flg2 == 1
        @phrase += " "
        flg2 = 0
      end
      get_digit(digit)
      @phrase += " thousand"
      flg2 = 1
      temp = temp - (digit * 1000)
    end
    if temp / 100 > 0
      flg1 = 1
      digit = temp / 100
      if flg2 == 1
        @phrase += " "
        flg2 = 0
      end
      get_digit(digit)
      @phrase += " hundred"
      flg2 = 1
      temp = temp - (digit * 100)
    end
    if flg1 == 1
      @phrase += " "
    end
    if temp % 10 == 0 && temp != 0
      get_digit(temp)
    else
      digit = temp % 10
      if digit != 0
        temp_tenth = temp / 10
        if temp_tenth == 1
          get_digit(temp)
        elsif temp_tenth == 0
          get_digit(digit)
        else
          get_digit(digit)
          digit = temp - digit
          @phrase += "-"
          get_digit(digit)
          temp_arr_1 = @phrase.split(' ').reverse
          temp_arr_2 = temp_arr_1[0].split('-').reverse
          str_temp = "#{temp_arr_2[0]}-#{temp_arr_2[1]}"
          @phrase.sub! temp_arr_1[0],str_temp
        end
      end
    end
  end

  def get_digit(digit)
    @phrase += @english_hash.key(digit).to_s
  end
end