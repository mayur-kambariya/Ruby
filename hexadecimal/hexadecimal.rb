class Hexadecimal
 def initialize(hexa_number)
 	@hexa_decimal=hexa_number
 end
 def to_decimal
 	if @hexa_decimal =~ /^[abcdefABCDE0-9]+$/
 		hexa_temp=@hexa_decimal.split('')
 		var_16=0
 		sum_of_all=0
 		hexa_temp.reverse.each do |i|
 			raised_to=16**var_16
 			var_16 += 1
 			case i
 			when 'a','A'
 				sum_of_all += raised_to.to_i * 10
 			when 'b','B'
 				sum_of_all += raised_to.to_i * 11
 			when 'c','C'
 				sum_of_all += raised_to.to_i * 12
 			when 'd','D'
 				sum_of_all += raised_to.to_i * 13
 			when 'e','E'
 				sum_of_all += raised_to.to_i * 14
 			when 'f','F'
 				sum_of_all += raised_to.to_i * 15
 			else
 				sum_of_all += raised_to.to_i * i.to_i
 			end
 		end
 		return sum_of_all
 	else
 		return 0
 	end
 end
end