class RailFenceCipher
  VERSION=1
  def self.encode(encode_string,zigzag_number)
    @argument=zigzag_number
    @str=encode_string
    RailFenceCipher.comman_encode_decode()
  end
  def self.decode(encode_string,zigzag_number)
    @argument=zigzag_number
    @str=encode_string
    RailFenceCipher.comman_encode_decode()
  end

  def self.comman_encode_decode()
    if @argument==1 || @str.length <=1 || @str=='' || @str.length<@argument
        return @str
    else
      @str.gsub!(/[ ]/,'')
      str_array=@str.split('')

      a=[]
      str_temp=''
      (0...@argument).each do |i|
        (0...@str.length).each do |j|
          str_temp += ' '
        end
        a << str_temp.split('')
      end
      n=@str.length
      no=-1
      m=-1
      temp=0
      while n!=0
        no += 1
        if temp==0
          m += 1
          if m==@argument-1
            temp=1
          end
          a[m][no]=str_array[no]
        else
          m -= 1
          if m==0
            temp=0
          end
          a[m][no]=str_array[no]
        end
        n -= 1
      end
      decode_string=''
      (0...a.length).each do |i|
        (0...a[i].length).each do |j|
          decode_string += a[i][j] if a[i][j]!=' '
        end
      end
      return decode_string
    end
  end
end