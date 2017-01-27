class Bob
  def self.hey(conversation_text)
    if conversation_text =~ /[A-Z]/ && conversation_text =~ /^[^a-z]+$/
      return 'Whoa, chill out!'
    elsif conversation_text.split('').last == '?'
      return 'Sure.'
    elsif conversation_text == "" || conversation_text =~ /^[ \t]+$/
      return "Fine. Be that way!"
    else
      "Whatever."
    end
  end
end