class RunLengthEncoding
  def self.encode(input)
  	input = input.split ''
    input_length = input.length
    sum = 1
    encode = ''
   	(0...input_length).each do |i|
   		char = input[i]
   		if char == input[i+1]
   			sum += 1
   			char = input[i+1]
   		else
   			if sum == 1
   			  encode += char.to_s
   			else
   				encode += "#{sum}#{char}"
   			end
   			sum = 1
   		end
   	end
    encode
  end
  def self.decode(input)
  	input = input.split ''
    input_length = input.length
    sum = 1
    decode = ''
    decode_string = ''
   	(0...input_length).each do |i|
   	  if input[i] =~ /^[0-9]+$/
   	  	decode += input[i].to_s
   	  else
   	  	if decode.to_i <=1
   	  		(0...1).each{|j| decode_string += "#{input[i]}"}
   	  	else
   	  		(0...decode.to_i).each{|j| decode_string += "#{input[i]}"}
   	  	end
   	  	decode = ''
   	  end
   	end
    decode_string
  end
end
module BookKeeping
	VERSION = 2
end
