class Binary
  def self.to_decimal(binary_string)
    if (binary_string =~ /^[01]+$/)
      binary_string_number = binary_string.to_i
      sum = 0
      i = 0
      while binary_string_number != 0
        digit=binary_string_number % 10
        if(digit != 0)
          sum += (digit * (2 ** i)).to_i
        end
        i += 1
        binary_string_number /= 10
      end
      return sum
    else
      raise ArgumentError
    end
  end
end
module BookKeeping
 	VERSION = 3
end
