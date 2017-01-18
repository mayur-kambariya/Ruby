class WordProblem
	def initialize(question)
		@question=question
		@question.gsub! 'plus','+'
		@question.gsub! 'multiplied','*'
		@question.gsub! 'minus','-'
		@question.gsub! 'divided','/'
		if @question =~ /[\*\-\+\/]/
		  @question.gsub!(/[^\/\*\-\+0-9 ]/,'')
		else
			@question=' '
		end
	  
	end

	def answer

		if @question.length <= 2
			raise ArgumentError 
		else
			@equa_array=@question.split(' ')
			@temp_eq=0
			(0...@equa_array.length).each do |i|
			  if @equa_array[i] =~ /^[\/\*\-\+]?$/
			  	@temp_eq=eval(@equa_array[i-1].to_s+@equa_array[i].to_s+@equa_array[i+1].to_s)
			  	@equa_array[i+1] = @temp_eq.to_s
			  end
			end
		 return @temp_eq unless @temp_eq == 0
		end
	end
end
module BookKeeping
	VERSION=1
end
# question = 'What is 1 plus 1?'
# WordProblem.new(question).answer

# question = 'What is 20 minus 4 minus 13?'
# WordProblem.new(question).answer

# question = 'What is 2 multiplied by -2 multiplied by 3?'
# WordProblem.new(question).answer

# question = 'Who is the President of the United States?'
# WordProblem.new(question).answer