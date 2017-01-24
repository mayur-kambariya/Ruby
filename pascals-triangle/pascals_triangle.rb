class Triangle

	def initialize(number)
		  @pascal_array=[]
		 (0...number).each do |i|
		 		x=1
		 		pascal_temp_array=[]
     	 (0..i).each do |j|
     	 		pascal_temp_array << x
     	 		x = x * (i - j) / (j + 1)
     	 end  
     	 @pascal_array << pascal_temp_array
  	end
  end
  def rows
  	@pascal_array
  end
  def last
  	@pascal_array[@pascal_array.length-1]
  end
end