class SumOfMultiples
	def initialize(*arg)
		@multiples_array = *arg
	end
	def to(number)
		array_of_sum=[]
		@multiples_array.each do |value|
			temp_number = number-1
			while temp_number > 0
				 array_of_sum << temp_number if (temp_number % value == 0)
				temp_number -= 1
			end
		end
		array_of_sum.uniq!
		array_of_sum.inject(0) {|sum,a| sum + a}
	end
end