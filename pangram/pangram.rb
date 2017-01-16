class Pangram
	
  def self.pangram?(phrase)
   	phrase_string=phrase
  	phrase.gsub!(/\W+/, '')
    phrase=phrase.downcase
    give_array=phrase.split('')
    sub_one_array_to_other =  ('a'..'z').to_a
    flag1=0
    (0...sub_one_array_to_other.length).each do |i|
      flag=0
      (0...give_array.length).each do |j|
        if sub_one_array_to_other[i] == give_array[j]
      	  flag=1
    	  break
    	end
      end
      if(flag==0)
        flag1=1
    	break
      end
    end
    if(flag1==1)
    	return "#{phrase_string.inspect} IS a pangram"
    else
    	return "#{phrase_string.inspect} is NOT a pangram"
    end
  end
end
module BookKeeping
	VERSION=3
end
