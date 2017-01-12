class Complement
  def self.of_dna(dna_string)
    if (dna_string =~ /\A[GCTA]+\z/).nil?
      return ''
    else      	
    	Complement.change_char(dna_string) 
    end
  end
  def self.change_char(dna_string)
    replace_string=""
    dna_array=dna_string.split('')
    (0...dna_array.length).each do |i|
      case dna_array[i]
        when 'G'
	  replace_string+="C"
	when 'C'
	  replace_string+="G"
	when 'T'
	  replace_string+="A"
        when 'A'
	  replace_string+="U" 	
	else
          return ''   
       end	  
     end
     return replace_string
  end 
end
module BookKeeping
  VERSION=4
end
