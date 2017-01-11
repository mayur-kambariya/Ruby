class Hamming
	def self.test_DNA_length
 	   	if(@@d1.to_s.length == @@d2.to_s.length)
 	     		return true
 	   	else
 		     	return false
 	   	end
 	end

 	def self.compute(d1,d2)
	    @@d1=d1
	    @@d2=d2
	    @c=0;
	    if test_DNA_length
	      @cd1=@@d1.split("")
	      @cd2=@@d2.split("")
	      (0..@cd1.length).each do |i|
		 if @cd1[i] != @cd2[i]
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
