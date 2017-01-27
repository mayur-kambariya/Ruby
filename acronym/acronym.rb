class Acronym
  def self.abbreviate(string)
    string_con = ''
    string.gsub!(/[-]/,' ')
    string.gsub!(/(?<=[a-z])(?=[A-Z])/, ' ')
    string.split(' ').to_a.each{|i| string_con += "#{i[0,1]}" }
    string_con.upcase
	end
end