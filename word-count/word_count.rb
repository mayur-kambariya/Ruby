 class Phrase
  def initialize(string)
  	string = string.gsub(/[\,]/,' ').gsub(/[^a-zA-Z0-9'\s]/,'')
  	string.downcase!
    @word_array = string.split(' ')
    @word_array = @word_array.map {|s| s.gsub(/^'/, '').gsub(/'$/,'')}
  end
  def word_count
  	count_hash = Hash.new
  	@word_array.each do |item|
  			count_hash[item] = @word_array.count(item)
    end
    count_hash
  end
end
module BookKeeping
  VERSION = 1
end