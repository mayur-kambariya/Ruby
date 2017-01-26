class ::Fixnum
  def to_roman
    roman_number=self
    roman_hash = Hash[
      'M' => 1000,
      'CM' => 900, 
      'D' => 500, 
      'CD' => 400, 
      'C' => 100, 
      'XC' => 90,
      'L' => 50, 
      'XL' => 40, 
      'X' => 10, 
      'IX' => 9, 
      'V' => 5,
      'IV' => 4,
      'I' => 1
    ]
    roman_number_to_string=''
    (0...roman_hash.length).each do |i|
      while (roman_number % roman_hash.values[i]) < roman_number 
        roman_number -= roman_hash.values[i]
        roman_number_to_string += roman_hash.keys[i]
      end 
    end
    return roman_number_to_string
  end
end
module BookKeeping
  VERSION=2
end