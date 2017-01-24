class Brackets
  def self.paired?(string)
	  @string = string.gsub(/[^\[\]\(\)\{\}]+/,'').split('')
	  temp_array = [' ']
  	flag = true
    @string.each do |i|
      case i
      when '(','{','['
      	temp_array << i

      when ')'
			  if temp_array.last == '('
			  	temp_array.pop 
			  else
			  	return false
			  end
      when '}'
      	if temp_array.last == '{'
      			temp_array.pop 
			  else
			  	return false
			  end
      when ']'
      	if temp_array.last == '['
      			temp_array.pop 
			  else
			  	return false
			  end
      end
    end
    # print temp_array
    if temp_array.length-1 > 0
    	return false
    else
  	  return true
  	end
  end
end