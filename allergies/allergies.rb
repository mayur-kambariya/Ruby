class Allergies
	def initialize(allergies_number)

		@allergy_score = {
			cats: 128 ,
		  pollen: 64 ,
		  chocolate: 32 ,
		  tomatoes: 16 ,
		  strawberries: 8 ,
		  shellfish: 4 ,
		  peanuts: 2 ,
			eggs: 1
			}
			allergies_number -=256 if allergies_number > 256
			calculate_allergy(allergies_number)
	end

	def calculate_allergy(number)
		@store_allergy = []
		@allergy_score.each do |key,value| 
			if value.to_i <= number
				number -= value.to_i
				@store_allergy << key.to_s
			end
		end
	end

	def allergic_to?(allergies_string)
		@store_allergy.include?(allergies_string)
	end

	def list
		@store_allergy.reverse
	end
end
# all = Allergies.new(8)
# all.allergic_to?("strawberries")
# all = Allergies.new(5)
# all.allergic_to?("strawberries")
# all = Allergies.new(509)

