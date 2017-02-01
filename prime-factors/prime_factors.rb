require 'prime'
class PrimeFactors
  def self.for(factor_number)
    return [] if factor_number == 1
    factors = []
    array = factor_number.prime_division
    array.each { |i| i[1].times { factors << i[0] } }
    factors
  end
end