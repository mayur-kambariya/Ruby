class Clock
  def initialize(hour, minute)
    @t = Time.at((hour.to_i * 3600)+ (minute.to_i * 60)).utc.strftime("%H:%M")
    @hour_f = @t.split(':')[0]
    @minute_f = @t.split(':')[1]
  end

  def self.at(hour, minute)
    @a=Clock.new(hour, minute)
  end

  def to_s
    @t
  end

  def +(extra)
    Clock.new(@hour_f, @minute_f.to_i + extra.to_i)
  end

  def ==(other_time)
   to_s == other_time.to_s
  end
end
Clock.at(10,10)
# class Clock
# 	def self.at(hour1, minute1)
# 		Time.at((hour1.to_i * 3600)+ (minute1.to_i * 60)).utc.strftime("%H:%M")
# 	end
# 	def +(extra_minute)
# 		puts Clock.at(10,10+extra_minute)
# 	end
# end
# Clock.at(-1, 15)
