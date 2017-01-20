class Isogram
	def self.is_isogram?(string)
		string.downcase!
		string.gsub!(/[ \-]/,'')
		string_arr=string.chars.to_a
		string_arr2=string_arr.uniq
		if string_arr.length != string_arr2.length
		 	return false
		else
			return true
		end
	end
end
module BookKeeping
	VERSION=2
end
