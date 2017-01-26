class Triangle
	def initialize(array)
		@array = array
		@arr_length = @array.length
		@arr_uniq_length = @array.uniq.length
	end

	def equilateral?
		true if  @arr_uniq_length == 1 && @array[0] != 0
	end

	def isosceles?
	  true if ( @arr_uniq_length == 2 || @arr_uniq_length == 1 ) && is_triangle?
  end		
	
	def scalene?
		true if (@arr_uniq_length == @arr_length) && is_triangle?
	end
	
	def is_triangle?
    t0 = @array[0]
    t1 = @array[1]
    t2 = @array[2]
		true if (t0 + t1 >= t2) && (t0 + t2 >= t1) && (t2 + t1 >= t0)
	end
end
