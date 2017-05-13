# challenge01_w01.rb
require 'bigdecimal'

def bd(var)
  BigDecimal("#{var}")
end

def year_month_age(seconds) # returns an Array with [years, months]
  minutes = seconds / 60.0
  hours = minutes / 60.0
  days = hours / 24.0
  years = days / 365.25
  months = (years - years.floor) * 12.0
  [years, months.round(0)]
end
age_in_seconds = [979000000,
                  2158493738,
                  246144023,
                  1270166272,
                  1025600095] 

#total = []
#age_in_seconds.each do |m|
#  total.push year_month_age(m) 
#end
#p total


age_in_seconds.each do |seconds|
  years, months = year_month_age(seconds)
  puts "If you are #{seconds} seconds old, then you are #{years} year(s) and #{months} month(s) old."
end
