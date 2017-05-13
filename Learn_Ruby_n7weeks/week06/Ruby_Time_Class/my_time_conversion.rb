# my_time_conversion.rb
# This method will convert hours decimal into a Time object and let you see H:M:S format
def decimal_to_strf(time_in)
  t = Time.now
  year = t.year
  month = t.month
  day = t.day
  hours = Integer(time_in)
  decimal_minutes = (time_in - hours) * 60.0
  minutes = Integer(decimal_minutes)
  decimal_seconds = (decimal_minutes - minutes) * 60.0
  seconds = Integer(decimal_seconds)
  my_time = Time.gm(year, month, day, hours, minutes, seconds)  
#  my_time.strftime("%H:%M:%S")
end

decimal_hours = 4.64
puts
puts "#{decimal_hours} = #{decimal_to_strf(decimal_hours)}"
puts decimal_to_strf(decimal_hours)
puts decimal_to_strf(decimal_hours).strftime("%H:%M:%S")
puts decimal_to_strf(decimal_hours).sunday? 
puts decimal_to_strf(decimal_hours).monday?
puts decimal_to_strf(decimal_hours).tuesday?
puts decimal_to_strf(decimal_hours).wednesday?
puts decimal_to_strf(decimal_hours).thursday?
puts decimal_to_strf(decimal_hours).friday?
puts decimal_to_strf(decimal_hours).saturday?
puts decimal_to_strf(decimal_hours)._dump
puts decimal_to_strf(decimal_hours).asctime
puts decimal_to_strf(decimal_hours).ctime
puts decimal_to_strf(decimal_hours).day
puts decimal_to_strf(decimal_hours).dst?
puts decimal_to_strf(decimal_hours).getgm
puts decimal_to_strf(decimal_hours).getlocal
puts decimal_to_strf(decimal_hours).getutc
puts decimal_to_strf(decimal_hours).gmt?
puts decimal_to_strf(decimal_hours).gmt_offset
puts decimal_to_strf(decimal_hours).gmtime
puts decimal_to_strf(decimal_hours).gmtoff
puts decimal_to_strf(decimal_hours).hash
puts decimal_to_strf(decimal_hours).hour
puts decimal_to_strf(decimal_hours).inspect
puts decimal_to_strf(decimal_hours).isdst
puts decimal_to_strf(decimal_hours).localtime
puts decimal_to_strf(decimal_hours).mday
puts decimal_to_strf(decimal_hours).min
puts decimal_to_strf(decimal_hours).mon
puts decimal_to_strf(decimal_hours).month
puts decimal_to_strf(decimal_hours).nsec
puts decimal_to_strf(decimal_hours).round
puts decimal_to_strf(decimal_hours).sec
puts decimal_to_strf(decimal_hours).subsec
puts decimal_to_strf(decimal_hours).succ
puts decimal_to_strf(decimal_hours).to_a
puts decimal_to_strf(decimal_hours).to_f
puts decimal_to_strf(decimal_hours).to_i
puts decimal_to_strf(decimal_hours).to_r
puts decimal_to_strf(decimal_hours).to_s
puts decimal_to_strf(decimal_hours).tv_nsec
puts decimal_to_strf(decimal_hours).tv_sec
puts decimal_to_strf(decimal_hours).tv_usec
puts decimal_to_strf(decimal_hours).usec
puts decimal_to_strf(decimal_hours).utc
puts decimal_to_strf(decimal_hours).utc?
puts decimal_to_strf(decimal_hours).utc_offset
puts decimal_to_strf(decimal_hours).wday
puts decimal_to_strf(decimal_hours).yday
puts decimal_to_strf(decimal_hours).year
puts decimal_to_strf(decimal_hours).zone


