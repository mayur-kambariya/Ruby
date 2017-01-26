require 'prime'

class Sieve
	def initialize(number)
		@number = number
	end
	
	def primes
		Prime.take_while {|p| p <= @number }
	end
end