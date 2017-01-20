class ETL
	def self.transform(hash_pass)
  	temp_hash = Hash.new{}
	  	hash_pass.each do |key,value|
		  	value.each do |array_value|
					temp_hash[array_value.downcase] = key
				end
			end
		temp_hash
	end
end