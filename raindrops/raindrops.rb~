class Raindrops
  def self.convert(raindrops_factor)
    @number=raindrops_factor.to_i
    @string_factor=""
    (1..@number).each do |i|
      if @number % i == 0
        case i
          when 3
            @string_factor += "Pling"
          when 5
	    @string_factor += "Plang"
	  when 7
    	    @string_factor += "Plong"
	  else
	end
      end
    end
    if(@string_factor=="")
      return @number.to_s
    else
      return @string_factor
    end
  end
end
module BookKeeping
  VERSION=3
end
