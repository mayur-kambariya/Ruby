class PhoneNumber
  def initialize(phone_number)
    @intance_var=phone_number
  end
  
  def number
    if check_number
  	  return @intance_var
  	else
  	  return "0000000000"
  	end
  end
  
  def to_s
    if check_number
  	  return @intance_var.sub(/(\d{3})(\d{3})(\d{4})/, "(\\1) \\2-\\3")
  	else
  	  return "0000000000"
  	end
  end
 
  def area_code
  	if check_number
  	  return @intance_var.to_s[-10..-8]
  	else
  	  return "0000000000"
  	end
  end
  def check_number
  	if !(@intance_var =~ /[a-zA-Z]/)
  	  @intance_var.gsub!(/[^0-9]/,'')
  	  if @intance_var.length >=12
  	    return false
  	  elsif @intance_var.length >=11
  	    if @intance_var.to_s[-11..-11] == '1'
  		  @intance_var=@intance_var.to_s[-10..-1]	
  		  return true
  		else 
  		  return false
  		end  			
  	  elsif @intance_var.length ==10
  	    return true
  	  else
  	 	return false
  	  end
  	else
  	  return false
  	end
  end
end
