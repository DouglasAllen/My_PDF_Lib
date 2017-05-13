# exercise_w0103.rb

# constants for conversion multipliers.
YEAR_DAYS = 365.25
DAY_HOURS = 24.0
DAY_MINUTES = 1440.0
DAY_SECONDS = 86400.0
HOUR_MINUTES = 60.0
MINUTE_SECONDS = 60.0

# method of conversion
def age_in_years(age_in_seconds)
  age_in_seconds / (DAY_SECONDS * YEAR_DAYS)
end

#age_in_seconds = [979000000]
#age_in_seconds.each do |m|
[979000000].each do |m|
  # format_string can take an array.
  # more than one argument will need one anyway.
  # see: % [age_in_years(m)] maybe we will reuse this.
#  puts "You are #{"%.2f" % [age_in_years(m)]} years old" 
  puts "You are #{"%.2f" % age_in_years(m)} years old"
end
 
