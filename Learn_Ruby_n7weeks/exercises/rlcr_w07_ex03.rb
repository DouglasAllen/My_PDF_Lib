# rlcr_w07_ex03.rb

require 'date'

def month_days(month, year = Date.today.year)
  date = Date.new(year, month, 1)
  days = (date.next_month - date).to_i
  if year == Date.today.year  
    "#{days} (#{Date::MONTHNAMES[month]})"
  else
    "#{days} (#{Date::MONTHNAMES[month]} #{year})"
  end
end 

days = month_days(5) # 31 (May)
puts days
days = month_days(2, 2000) # 29 (February 2000)
puts days   
