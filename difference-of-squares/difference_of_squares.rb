class Squares
	@number	
	@square_of_sum_var=0
	@sum_of_square_var=0
	def initialize(number)
	  @number=number
	  @square_of_sum_var=square_of_sum
	  @sum_of_square_var=sum_of_squares
	end
	def square_of_sum
	  sum=0
	  (1..@number).each do |i|
	    sum+= i	
		end
		return sum**2
	end
	def sum_of_squares
		sum=0
		(1..@number).each do |i|
			sum+= i**2	
		end
		return sum
	end	
	def difference
		return @square_of_sum_var-@sum_of_square_var
	end
	
end
module BookKeeping
	VERSION=3
end