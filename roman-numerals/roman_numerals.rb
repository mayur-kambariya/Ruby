class ::Fixnum
  def method_1000(number,string)
    string +="M"
	return number-=1000,string
  end
  def method_900(number,string)
  	string +="CM"
 	return number-=900,string
  end
  def method_500(number,string)
 	string +="D"
 	return number-=500,string
  end
  def method_400(number,string)
 	string +="CD"
 	return number-=400,string
  end
  def method_100(number,string)
 	string +="C"
 	return number-=100,string
  end
  def method_90(number,string)
 	string +="XC"
 	return number -= 90,string
  end
  def method_50(number,string)
 	string +="L"
 	return number-=50,string
  end
  def method_40(number,string)
 	string +="XL"
 	return number-=40,string
  end
  def method_10(number,string)
 	string +="X"
 	return number-=10,string
  end
  def method_9(number,string)
 	string +="IX"
 	return number -= 9,string
  end
  def method_5(number,string)
 	string +="V"
 	return number-=5,string
  end
  def method_4(number,string)
    string +="IV"
 	return number-=4,string
  end
  def method_1(number,string)
 	string +="I"
 	return number-=1,string
  end
  def to_roman
   	string=""
   	number=self
   	while number!=0
      number,string=method_1000(number,string) if number >= 1000	
	  number,string=method_900(number,string) if number >= 900 && number <= 999 	
	  number,string=method_500(number,string) if number >= 500 && number <=899
	  number,string=method_400(number,string) if number >= 400 && number <=499
	  number,string=method_100(number,string) if number >= 100 && number <=399
	  number,string=method_90(number,string) if number >= 90	&& number <=99
	  number,string=method_50(number,string) if number >= 50	&& number <=89
	  number,string=method_40(number,string) if number >= 40	&& number <=49
	  number,string=method_10(number,string) if number >= 10	&& number <=39
	  number,string=method_9(number,string) if number == 9 
	  number,string=method_5(number,string) if number >= 5 && number <=8
	  number,string=method_4(number,string) if number ==4
	  number,string=method_1(number,string) if number >= 1 && number <= 3	
	end
    return string
  end
end
module BookKeeping
	VERSION=2
end