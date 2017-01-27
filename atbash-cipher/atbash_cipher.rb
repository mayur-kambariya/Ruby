class Atbash
	def self.encode(plain_value)
		plain_value.gsub!(/[ .,]/,'')
		plain_value.downcase!
		@array_char=('a'..'z').to_a
		string_to_array=plain_value.split('')
		n=0
		cipher_text=''
		while n != string_to_array.length
			if string_to_array[n] =~ /[a-z]/
			  temp_index=@array_char.index(string_to_array[n]).to_i
			  cipher_text += @array_char[25 - temp_index]
			else
				cipher_text += string_to_array[n].to_s
			end
			n += 1
		end
		contain_string=''
		temp_div=0
		temp_array=cipher_text.split('')
		(0...temp_array.length).each do |i|
		  if(temp_div % 5 == 0)
		  	contain_string += ' '
		  end
		  contain_string += temp_array[i]
		  temp_div += 1
		end
		return contain_string.gsub!(/^[ ]+/,'') 

	end
end 