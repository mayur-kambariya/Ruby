class Queens
 def initialize(set_queen)
 	 @h = set_queen
 	 @first_arr=[]
	 @h.each_value do |value|
	 		@first_arr << value
	   if value[0] < 0 || value[1] < 0 || value[0] >= 8 || value[1] >= 8
	      raise ArgumentError
	   end  
	 end
 end

 def attack?
 		if @h.length >1
	 		if (@first_arr[0][0] == @first_arr[1][0]) || (@first_arr[0][1] == @first_arr[1][1])
	 			return true
	 		else
	 			if left_top || left_down || right_top || right_down
	 				return true
	 			else
	 			  return false
	 			end
	 		end
	 	else
	 		return true
	 	end
 end

 def left_top
 	temp1=@first_arr[0][0]
 	temp2=@first_arr[0][1]
 	 while true
 	 		temp2 -= 1
 	 		temp1 -= 1
 	 		if temp1 == @first_arr[1][0] && temp2 == @first_arr[1][1]
 	 			return true 
 	 		end
 	 		if temp1 < 0 || temp2 < 0
 	 			break
 	 		end
 	 end
 	 return false	
 end

 def left_down
 	temp1=@first_arr[0][0]
 	temp2=@first_arr[0][1]
 	 while true
 	 		temp1 += 1
 	 		temp2 -= 1
 	 		if temp1 == @first_arr[1][0] && temp2 == @first_arr[1][1]
 	 			return true 
 	 		end
 	 		if temp1 > 8 || temp2 < 0
 	 			break
 	 		end
 	 end
 	 return false	
 end
 def right_top
 	temp1=@first_arr[0][0]
 	temp2=@first_arr[0][1]
 	 while true
 	 		temp1 += 1
 	 		temp2 += 1
 	 		if temp1 == @first_arr[1][0] && temp2 == @first_arr[1][1]
 	 			return true 
 	 		end
 	 		if temp1 > 8 || temp2 > 8
 	 			break
 	 		end
 	 end
 	 return false
 end
 def right_down
 	temp1=@first_arr[0][0]
 	temp2=@first_arr[0][1]
 	 while true
 	 		temp1 -= 1
 	 		temp2 += 1
 	 		if temp1 == @first_arr[1][0] && temp2 == @first_arr[1][1]
 	 			return true 
 	 		end
 	 		if temp1 < 0 || temp2 > 8
 	 			break
 	 		end
 	 end
 	 return false
 end
end
module BookKeeping
  VERSION = 2
end
# queens = Queens.new white: [1, 0], black: [5, 4]
# queens.attack?
