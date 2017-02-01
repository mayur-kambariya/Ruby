class Nucleotide
  def initialize(dna_string)
    @hash_dna_count ={'A'=>0,'C'=>0,'G'=>0,'T'=> 0 }
    @dna_string = dna_string
    calculation_dna()
  end

  def calculation_dna
    temp_dna_array = @dna_string.split ''
    @hash_dna_count.each do |key,value|
      @hash_dna_count[key] = temp_dna_array.count(key) 
    end
  end
  
  def self.from_dna(dna_string)
    raise ArgumentError if dna_string =~ /[^ACGT]$/
    Nucleotide.new(dna_string)
  end
  
  def count(count_char)
    return 0 if @dna_string == ''
    @hash_dna_count[count_char]
  end
  
  def histogram
    @hash_dna_count
  end
end