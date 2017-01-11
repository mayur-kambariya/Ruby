class Hamming
	def self.test_DNA_length
 	   	if(@@string1.to_s.length == @@string2.to_s.length)
 	     		return true
 	   	else
 		     	return false
 	   	end
 	end

 	def self.compute(string1,string2)
	    @@string1=string1
	    @@string2=string2
	    @c=0;
	    if test_DNA_length
	      @cstring1=@@string1.split("")
	      @cstring2=@@string2.split("")
	      (0..@cstring1.length).each do |i|
		 if @cstring1[i] != @cstring2[i]
		   @c += 1;
		 end
	      end
	      return @c
	    else
	      raise ArgumentError
	    end
	 end
end
module BookKeeping
	VERSION=3
end
